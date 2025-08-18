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

from Test.RemoteCommunicator_forward import _Test_RemoteCommunicatorPrx_t

from Test.RemoteObjectAdapter_forward import _Test_RemoteObjectAdapterPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.RemoteObjectAdapter import RemoteObjectAdapterPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class RemoteCommunicatorPrx(ObjectPrx):

    def createObjectAdapter(self, name: str, endpoints: str, context: dict[str, str] | None = None) -> RemoteObjectAdapterPrx | None:
        return RemoteCommunicator._op_createObjectAdapter.invoke(self, ((name, endpoints), context))

    def createObjectAdapterAsync(self, name: str, endpoints: str, context: dict[str, str] | None = None) -> Awaitable[RemoteObjectAdapterPrx | None]:
        return RemoteCommunicator._op_createObjectAdapter.invokeAsync(self, ((name, endpoints), context))

    def deactivateObjectAdapter(self, adapter: RemoteObjectAdapterPrx | None, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_deactivateObjectAdapter.invoke(self, ((adapter, ), context))

    def deactivateObjectAdapterAsync(self, adapter: RemoteObjectAdapterPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_deactivateObjectAdapter.invokeAsync(self, ((adapter, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> RemoteCommunicatorPrx | None:
        return checkedCast(RemoteCommunicatorPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[RemoteCommunicatorPrx | None ]:
        return checkedCastAsync(RemoteCommunicatorPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> RemoteCommunicatorPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> RemoteCommunicatorPrx | None:
        return uncheckedCast(RemoteCommunicatorPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteCommunicator"

IcePy.defineProxy("::Test::RemoteCommunicator", RemoteCommunicatorPrx)

class RemoteCommunicator(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::RemoteCommunicator", )
    _op_createObjectAdapter: IcePy.Operation
    _op_deactivateObjectAdapter: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteCommunicator"

    @abstractmethod
    def createObjectAdapter(self, name: str, endpoints: str, current: Current) -> RemoteObjectAdapterPrx | None | Awaitable[RemoteObjectAdapterPrx | None]:
        pass

    @abstractmethod
    def deactivateObjectAdapter(self, adapter: RemoteObjectAdapterPrx | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

RemoteCommunicator._op_createObjectAdapter = IcePy.Operation(
    "createObjectAdapter",
    "createObjectAdapter",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    ((), _Test_RemoteObjectAdapterPrx_t, False, 0),
    ())

RemoteCommunicator._op_deactivateObjectAdapter = IcePy.Operation(
    "deactivateObjectAdapter",
    "deactivateObjectAdapter",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_RemoteObjectAdapterPrx_t, False, 0),),
    (),
    None,
    ())

RemoteCommunicator._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["RemoteCommunicator", "RemoteCommunicatorPrx", "_Test_RemoteCommunicatorPrx_t"]
