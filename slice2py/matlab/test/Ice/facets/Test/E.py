# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.E_forward import _Test_EPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class EPrx(ObjectPrx):

    def callE(self, context: dict[str, str] | None = None) -> str:
        return E._op_callE.invoke(self, ((), context))

    def callEAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return E._op_callE.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> EPrx | None:
        return checkedCast(EPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[EPrx | None ]:
        return checkedCastAsync(EPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> EPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> EPrx | None:
        return uncheckedCast(EPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::E"

IcePy.defineProxy("::Test::E", EPrx)

class E(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::E", )
    _op_callE: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::E"

    @abstractmethod
    def callE(self, current: Current) -> str | Awaitable[str]:
        pass

E._op_callE = IcePy.Operation(
    "callE",
    "callE",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["E", "EPrx", "_Test_EPrx_t"]
