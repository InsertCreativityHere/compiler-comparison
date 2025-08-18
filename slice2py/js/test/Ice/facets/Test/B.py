# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.A import A
from Test.A import APrx

from Test.B_forward import _Test_BPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class BPrx(APrx):

    def callB(self, context: dict[str, str] | None = None) -> str:
        return B._op_callB.invoke(self, ((), context))

    def callBAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return B._op_callB.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> BPrx | None:
        return checkedCast(BPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[BPrx | None ]:
        return checkedCastAsync(BPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> BPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> BPrx | None:
        return uncheckedCast(BPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

IcePy.defineProxy("::Test::B", BPrx)

class B(A, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::A", "::Test::B", )
    _op_callB: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

    @abstractmethod
    def callB(self, current: Current) -> str | Awaitable[str]:
        pass

B._op_callB = IcePy.Operation(
    "callB",
    "callB",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["B", "BPrx", "_Test_BPrx_t"]
