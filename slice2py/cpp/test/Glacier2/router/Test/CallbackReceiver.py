# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.CallbackException import _Test_CallbackException_t

from Test.CallbackReceiver_forward import _Test_CallbackReceiverPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class CallbackReceiverPrx(ObjectPrx):

    def callback(self, context: dict[str, str] | None = None) -> None:
        return CallbackReceiver._op_callback.invoke(self, ((), context))

    def callbackAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return CallbackReceiver._op_callback.invokeAsync(self, ((), context))

    def callbackEx(self, context: dict[str, str] | None = None) -> None:
        return CallbackReceiver._op_callbackEx.invoke(self, ((), context))

    def callbackExAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return CallbackReceiver._op_callbackEx.invokeAsync(self, ((), context))

    def concurrentCallback(self, number: int, context: dict[str, str] | None = None) -> int:
        return CallbackReceiver._op_concurrentCallback.invoke(self, ((number, ), context))

    def concurrentCallbackAsync(self, number: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return CallbackReceiver._op_concurrentCallback.invokeAsync(self, ((number, ), context))

    def waitCallback(self, context: dict[str, str] | None = None) -> None:
        return CallbackReceiver._op_waitCallback.invoke(self, ((), context))

    def waitCallbackAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return CallbackReceiver._op_waitCallback.invokeAsync(self, ((), context))

    def callbackWithPayload(self, payload: Sequence[int] | bytes, context: dict[str, str] | None = None) -> None:
        return CallbackReceiver._op_callbackWithPayload.invoke(self, ((payload, ), context))

    def callbackWithPayloadAsync(self, payload: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[None]:
        return CallbackReceiver._op_callbackWithPayload.invokeAsync(self, ((payload, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> CallbackReceiverPrx | None:
        return checkedCast(CallbackReceiverPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[CallbackReceiverPrx | None ]:
        return checkedCastAsync(CallbackReceiverPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> CallbackReceiverPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> CallbackReceiverPrx | None:
        return uncheckedCast(CallbackReceiverPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CallbackReceiver"

IcePy.defineProxy("::Test::CallbackReceiver", CallbackReceiverPrx)

class CallbackReceiver(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::CallbackReceiver", )
    _op_callback: IcePy.Operation
    _op_callbackEx: IcePy.Operation
    _op_concurrentCallback: IcePy.Operation
    _op_waitCallback: IcePy.Operation
    _op_callbackWithPayload: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CallbackReceiver"

    @abstractmethod
    def callback(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def callbackEx(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def concurrentCallback(self, number: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def waitCallback(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def callbackWithPayload(self, payload: bytes, current: Current) -> None | Awaitable[None]:
        pass

CallbackReceiver._op_callback = IcePy.Operation(
    "callback",
    "callback",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

CallbackReceiver._op_callbackEx = IcePy.Operation(
    "callbackEx",
    "callbackEx",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_CallbackException_t,))

CallbackReceiver._op_concurrentCallback = IcePy.Operation(
    "concurrentCallback",
    "concurrentCallback",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    ((), IcePy._t_int, False, 0),
    ())

CallbackReceiver._op_waitCallback = IcePy.Operation(
    "waitCallback",
    "waitCallback",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

CallbackReceiver._op_callbackWithPayload = IcePy.Operation(
    "callbackWithPayload",
    "callbackWithPayload",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ByteSeq_t, False, 0),),
    (),
    None,
    ())

__all__ = ["CallbackReceiver", "CallbackReceiverPrx", "_Test_CallbackReceiverPrx_t"]
