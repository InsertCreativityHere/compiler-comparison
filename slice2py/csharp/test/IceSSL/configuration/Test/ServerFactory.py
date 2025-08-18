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

from Test.Properties import _Test_Properties_t

from Test.ServerFactory_forward import _Test_ServerFactoryPrx_t

from Test.Server_forward import _Test_ServerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.Server import ServerPrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class ServerFactoryPrx(ObjectPrx):

    def createServer(self, props: Mapping[str, str], context: dict[str, str] | None = None) -> ServerPrx | None:
        return ServerFactory._op_createServer.invoke(self, ((props, ), context))

    def createServerAsync(self, props: Mapping[str, str], context: dict[str, str] | None = None) -> Awaitable[ServerPrx | None]:
        return ServerFactory._op_createServer.invokeAsync(self, ((props, ), context))

    def destroyServer(self, srv: ServerPrx | None, context: dict[str, str] | None = None) -> None:
        return ServerFactory._op_destroyServer.invoke(self, ((srv, ), context))

    def destroyServerAsync(self, srv: ServerPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return ServerFactory._op_destroyServer.invokeAsync(self, ((srv, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return ServerFactory._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return ServerFactory._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ServerFactoryPrx | None:
        return checkedCast(ServerFactoryPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ServerFactoryPrx | None ]:
        return checkedCastAsync(ServerFactoryPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ServerFactoryPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ServerFactoryPrx | None:
        return uncheckedCast(ServerFactoryPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ServerFactory"

IcePy.defineProxy("::Test::ServerFactory", ServerFactoryPrx)

class ServerFactory(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::ServerFactory", )
    _op_createServer: IcePy.Operation
    _op_destroyServer: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ServerFactory"

    @abstractmethod
    def createServer(self, props: dict[str, str], current: Current) -> ServerPrx | None | Awaitable[ServerPrx | None]:
        pass

    @abstractmethod
    def destroyServer(self, srv: ServerPrx | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

ServerFactory._op_createServer = IcePy.Operation(
    "createServer",
    "createServer",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Properties_t, False, 0),),
    (),
    ((), _Test_ServerPrx_t, False, 0),
    ())

ServerFactory._op_destroyServer = IcePy.Operation(
    "destroyServer",
    "destroyServer",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ServerPrx_t, False, 0),),
    (),
    None,
    ())

ServerFactory._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["ServerFactory", "ServerFactoryPrx", "_Test_ServerFactoryPrx_t"]
