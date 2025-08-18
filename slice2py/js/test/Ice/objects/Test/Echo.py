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

from Test.Echo_forward import _Test_EchoPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class EchoPrx(ObjectPrx):

    def setConnection(self, context: dict[str, str] | None = None) -> None:
        return Echo._op_setConnection.invoke(self, ((), context))

    def setConnectionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Echo._op_setConnection.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Echo._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Echo._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> EchoPrx | None:
        return checkedCast(EchoPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[EchoPrx | None ]:
        return checkedCastAsync(EchoPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> EchoPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> EchoPrx | None:
        return uncheckedCast(EchoPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Echo"

IcePy.defineProxy("::Test::Echo", EchoPrx)

class Echo(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Echo", )
    _op_setConnection: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Echo"

    @abstractmethod
    def setConnection(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Echo._op_setConnection = IcePy.Operation(
    "setConnection",
    "setConnection",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Echo._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Echo", "EchoPrx", "_Test_EchoPrx_t"]
