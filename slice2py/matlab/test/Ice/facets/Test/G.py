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

from Test.G_forward import _Test_GPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class GPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return G._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return G._op_shutdown.invokeAsync(self, ((), context))

    def callG(self, context: dict[str, str] | None = None) -> str:
        return G._op_callG.invoke(self, ((), context))

    def callGAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return G._op_callG.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> GPrx | None:
        return checkedCast(GPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[GPrx | None ]:
        return checkedCastAsync(GPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> GPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> GPrx | None:
        return uncheckedCast(GPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::G"

IcePy.defineProxy("::Test::G", GPrx)

class G(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::G", )
    _op_shutdown: IcePy.Operation
    _op_callG: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::G"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def callG(self, current: Current) -> str | Awaitable[str]:
        pass

G._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

G._op_callG = IcePy.Operation(
    "callG",
    "callG",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["G", "GPrx", "_Test_GPrx_t"]
