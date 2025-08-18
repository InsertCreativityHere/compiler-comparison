# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from Ice.PropertyDict import _Ice_PropertyDict_t

from Test.RemoteCommunicator_forward import _Test_RemoteCommunicatorPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class RemoteCommunicatorPrx(ObjectPrx):

    def getAdmin(self, context: dict[str, str] | None = None) -> ObjectPrx | None:
        return RemoteCommunicator._op_getAdmin.invoke(self, ((), context))

    def getAdminAsync(self, context: dict[str, str] | None = None) -> Awaitable[ObjectPrx | None]:
        return RemoteCommunicator._op_getAdmin.invokeAsync(self, ((), context))

    def getChanges(self, context: dict[str, str] | None = None) -> dict[str, str]:
        return RemoteCommunicator._op_getChanges.invoke(self, ((), context))

    def getChangesAsync(self, context: dict[str, str] | None = None) -> Awaitable[dict[str, str]]:
        return RemoteCommunicator._op_getChanges.invokeAsync(self, ((), context))

    def print(self, message: str, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_print.invoke(self, ((message, ), context))

    def printAsync(self, message: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_print.invokeAsync(self, ((message, ), context))

    def trace(self, category: str, message: str, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_trace.invoke(self, ((category, message), context))

    def traceAsync(self, category: str, message: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_trace.invokeAsync(self, ((category, message), context))

    def warning(self, message: str, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_warning.invoke(self, ((message, ), context))

    def warningAsync(self, message: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_warning.invokeAsync(self, ((message, ), context))

    def error(self, message: str, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_error.invoke(self, ((message, ), context))

    def errorAsync(self, message: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_error.invokeAsync(self, ((message, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_shutdown.invokeAsync(self, ((), context))

    def waitForShutdown(self, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_waitForShutdown.invoke(self, ((), context))

    def waitForShutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_waitForShutdown.invokeAsync(self, ((), context))

    def destroy(self, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_destroy.invoke(self, ((), context))

    def destroyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_destroy.invokeAsync(self, ((), context))

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
    _op_getAdmin: IcePy.Operation
    _op_getChanges: IcePy.Operation
    _op_print: IcePy.Operation
    _op_trace: IcePy.Operation
    _op_warning: IcePy.Operation
    _op_error: IcePy.Operation
    _op_shutdown: IcePy.Operation
    _op_waitForShutdown: IcePy.Operation
    _op_destroy: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteCommunicator"

    @abstractmethod
    def getAdmin(self, current: Current) -> ObjectPrx | None | Awaitable[ObjectPrx | None]:
        pass

    @abstractmethod
    def getChanges(self, current: Current) -> Mapping[str, str] | Awaitable[Mapping[str, str]]:
        pass

    @abstractmethod
    def print(self, message: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def trace(self, category: str, message: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def warning(self, message: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def error(self, message: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def waitForShutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def destroy(self, current: Current) -> None | Awaitable[None]:
        pass

RemoteCommunicator._op_getAdmin = IcePy.Operation(
    "getAdmin",
    "getAdmin",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_ObjectPrx_t, False, 0),
    ())

RemoteCommunicator._op_getChanges = IcePy.Operation(
    "getChanges",
    "getChanges",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_PropertyDict_t, False, 0),
    ())

RemoteCommunicator._op_print = IcePy.Operation(
    "print",
    "print",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

RemoteCommunicator._op_trace = IcePy.Operation(
    "trace",
    "trace",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

RemoteCommunicator._op_warning = IcePy.Operation(
    "warning",
    "warning",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

RemoteCommunicator._op_error = IcePy.Operation(
    "error",
    "error",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
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

RemoteCommunicator._op_waitForShutdown = IcePy.Operation(
    "waitForShutdown",
    "waitForShutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

RemoteCommunicator._op_destroy = IcePy.Operation(
    "destroy",
    "destroy",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["RemoteCommunicator", "RemoteCommunicatorPrx", "_Test_RemoteCommunicatorPrx_t"]
