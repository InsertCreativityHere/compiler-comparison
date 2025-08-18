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

from Test.ServerManager_forward import _Test_ServerManagerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ServerManagerPrx(ObjectPrx):

    def startServer(self, context: dict[str, str] | None = None) -> None:
        return ServerManager._op_startServer.invoke(self, ((), context))

    def startServerAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return ServerManager._op_startServer.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return ServerManager._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return ServerManager._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ServerManagerPrx | None:
        return checkedCast(ServerManagerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ServerManagerPrx | None ]:
        return checkedCastAsync(ServerManagerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ServerManagerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ServerManagerPrx | None:
        return uncheckedCast(ServerManagerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ServerManager"

IcePy.defineProxy("::Test::ServerManager", ServerManagerPrx)

class ServerManager(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::ServerManager", )
    _op_startServer: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ServerManager"

    @abstractmethod
    def startServer(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

ServerManager._op_startServer = IcePy.Operation(
    "startServer",
    "startServer",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

ServerManager._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["ServerManager", "ServerManagerPrx", "_Test_ServerManagerPrx_t"]
