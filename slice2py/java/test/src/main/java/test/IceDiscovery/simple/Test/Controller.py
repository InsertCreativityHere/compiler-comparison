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

from Test.Controller_forward import _Test_ControllerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ControllerPrx(ObjectPrx):

    def activateObjectAdapter(self, name: str, adapterId: str, replicaGroupId: str, context: dict[str, str] | None = None) -> None:
        return Controller._op_activateObjectAdapter.invoke(self, ((name, adapterId, replicaGroupId), context))

    def activateObjectAdapterAsync(self, name: str, adapterId: str, replicaGroupId: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_activateObjectAdapter.invokeAsync(self, ((name, adapterId, replicaGroupId), context))

    def deactivateObjectAdapter(self, name: str, context: dict[str, str] | None = None) -> None:
        return Controller._op_deactivateObjectAdapter.invoke(self, ((name, ), context))

    def deactivateObjectAdapterAsync(self, name: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_deactivateObjectAdapter.invokeAsync(self, ((name, ), context))

    def addObject(self, oaName: str, id: str, context: dict[str, str] | None = None) -> None:
        return Controller._op_addObject.invoke(self, ((oaName, id), context))

    def addObjectAsync(self, oaName: str, id: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_addObject.invokeAsync(self, ((oaName, id), context))

    def removeObject(self, oaName: str, id: str, context: dict[str, str] | None = None) -> None:
        return Controller._op_removeObject.invoke(self, ((oaName, id), context))

    def removeObjectAsync(self, oaName: str, id: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_removeObject.invokeAsync(self, ((oaName, id), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Controller._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ControllerPrx | None:
        return checkedCast(ControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ControllerPrx | None ]:
        return checkedCastAsync(ControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ControllerPrx | None:
        return uncheckedCast(ControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Controller"

IcePy.defineProxy("::Test::Controller", ControllerPrx)

class Controller(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Controller", )
    _op_activateObjectAdapter: IcePy.Operation
    _op_deactivateObjectAdapter: IcePy.Operation
    _op_addObject: IcePy.Operation
    _op_removeObject: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Controller"

    @abstractmethod
    def activateObjectAdapter(self, name: str, adapterId: str, replicaGroupId: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def deactivateObjectAdapter(self, name: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def addObject(self, oaName: str, id: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def removeObject(self, oaName: str, id: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Controller._op_activateObjectAdapter = IcePy.Operation(
    "activateObjectAdapter",
    "activateObjectAdapter",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

Controller._op_deactivateObjectAdapter = IcePy.Operation(
    "deactivateObjectAdapter",
    "deactivateObjectAdapter",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

Controller._op_addObject = IcePy.Operation(
    "addObject",
    "addObject",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

Controller._op_removeObject = IcePy.Operation(
    "removeObject",
    "removeObject",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

Controller._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Controller", "ControllerPrx", "_Test_ControllerPrx_t"]
