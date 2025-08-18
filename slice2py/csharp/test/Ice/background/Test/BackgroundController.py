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

from Test.BackgroundController_forward import _Test_BackgroundControllerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class BackgroundControllerPrx(ObjectPrx):

    def pauseCall(self, call: str, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_pauseCall.invoke(self, ((call, ), context))

    def pauseCallAsync(self, call: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_pauseCall.invokeAsync(self, ((call, ), context))

    def resumeCall(self, call: str, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_resumeCall.invoke(self, ((call, ), context))

    def resumeCallAsync(self, call: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_resumeCall.invokeAsync(self, ((call, ), context))

    def holdAdapter(self, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_holdAdapter.invoke(self, ((), context))

    def holdAdapterAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_holdAdapter.invokeAsync(self, ((), context))

    def resumeAdapter(self, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_resumeAdapter.invoke(self, ((), context))

    def resumeAdapterAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_resumeAdapter.invokeAsync(self, ((), context))

    def initializeException(self, enable: bool, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_initializeException.invoke(self, ((enable, ), context))

    def initializeExceptionAsync(self, enable: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_initializeException.invokeAsync(self, ((enable, ), context))

    def readReady(self, enable: bool, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_readReady.invoke(self, ((enable, ), context))

    def readReadyAsync(self, enable: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_readReady.invokeAsync(self, ((enable, ), context))

    def readException(self, enable: bool, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_readException.invoke(self, ((enable, ), context))

    def readExceptionAsync(self, enable: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_readException.invokeAsync(self, ((enable, ), context))

    def writeReady(self, enable: bool, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_writeReady.invoke(self, ((enable, ), context))

    def writeReadyAsync(self, enable: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_writeReady.invokeAsync(self, ((enable, ), context))

    def writeException(self, enable: bool, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_writeException.invoke(self, ((enable, ), context))

    def writeExceptionAsync(self, enable: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_writeException.invokeAsync(self, ((enable, ), context))

    def buffered(self, enable: bool, context: dict[str, str] | None = None) -> None:
        return BackgroundController._op_buffered.invoke(self, ((enable, ), context))

    def bufferedAsync(self, enable: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BackgroundController._op_buffered.invokeAsync(self, ((enable, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> BackgroundControllerPrx | None:
        return checkedCast(BackgroundControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[BackgroundControllerPrx | None ]:
        return checkedCastAsync(BackgroundControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> BackgroundControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> BackgroundControllerPrx | None:
        return uncheckedCast(BackgroundControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::BackgroundController"

IcePy.defineProxy("::Test::BackgroundController", BackgroundControllerPrx)

class BackgroundController(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::BackgroundController", )
    _op_pauseCall: IcePy.Operation
    _op_resumeCall: IcePy.Operation
    _op_holdAdapter: IcePy.Operation
    _op_resumeAdapter: IcePy.Operation
    _op_initializeException: IcePy.Operation
    _op_readReady: IcePy.Operation
    _op_readException: IcePy.Operation
    _op_writeReady: IcePy.Operation
    _op_writeException: IcePy.Operation
    _op_buffered: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::BackgroundController"

    @abstractmethod
    def pauseCall(self, call: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def resumeCall(self, call: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def holdAdapter(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def resumeAdapter(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def initializeException(self, enable: bool, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def readReady(self, enable: bool, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def readException(self, enable: bool, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def writeReady(self, enable: bool, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def writeException(self, enable: bool, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def buffered(self, enable: bool, current: Current) -> None | Awaitable[None]:
        pass

BackgroundController._op_pauseCall = IcePy.Operation(
    "pauseCall",
    "pauseCall",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

BackgroundController._op_resumeCall = IcePy.Operation(
    "resumeCall",
    "resumeCall",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

BackgroundController._op_holdAdapter = IcePy.Operation(
    "holdAdapter",
    "holdAdapter",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

BackgroundController._op_resumeAdapter = IcePy.Operation(
    "resumeAdapter",
    "resumeAdapter",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

BackgroundController._op_initializeException = IcePy.Operation(
    "initializeException",
    "initializeException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

BackgroundController._op_readReady = IcePy.Operation(
    "readReady",
    "readReady",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

BackgroundController._op_readException = IcePy.Operation(
    "readException",
    "readException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

BackgroundController._op_writeReady = IcePy.Operation(
    "writeReady",
    "writeReady",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

BackgroundController._op_writeException = IcePy.Operation(
    "writeException",
    "writeException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

BackgroundController._op_buffered = IcePy.Operation(
    "buffered",
    "buffered",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

__all__ = ["BackgroundController", "BackgroundControllerPrx", "_Test_BackgroundControllerPrx_t"]
