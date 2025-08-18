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

from abc import ABC
from abc import abstractmethod

from generated.test.Glacier2.router.Test.CallbackException import _generated_test_Glacier2_router_Test_CallbackException_t

from generated.test.Glacier2.router.Test.CallbackReceiver_forward import _generated_test_Glacier2_router_Test_CallbackReceiverPrx_t

from generated.test.Glacier2.router.Test.Callback_forward import _generated_test_Glacier2_router_Test_CallbackPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Glacier2.router.Test.CallbackReceiver import CallbackReceiverPrx


class CallbackPrx(ObjectPrx):

    def initiateCallback(self, proxy: CallbackReceiverPrx | None, context: dict[str, str] | None = None) -> None:
        return Callback._op_initiateCallback.invoke(self, ((proxy, ), context))

    def initiateCallbackAsync(self, proxy: CallbackReceiverPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Callback._op_initiateCallback.invokeAsync(self, ((proxy, ), context))

    def initiateCallbackEx(self, proxy: CallbackReceiverPrx | None, context: dict[str, str] | None = None) -> None:
        return Callback._op_initiateCallbackEx.invoke(self, ((proxy, ), context))

    def initiateCallbackExAsync(self, proxy: CallbackReceiverPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Callback._op_initiateCallbackEx.invokeAsync(self, ((proxy, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Callback._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Callback._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> CallbackPrx | None:
        return checkedCast(CallbackPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[CallbackPrx | None ]:
        return checkedCastAsync(CallbackPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> CallbackPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> CallbackPrx | None:
        return uncheckedCast(CallbackPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Callback"

IcePy.defineProxy("::Test::Callback", CallbackPrx)

class Callback(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Callback", )
    _op_initiateCallback: IcePy.Operation
    _op_initiateCallbackEx: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Callback"

    @abstractmethod
    def initiateCallback(self, proxy: CallbackReceiverPrx | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def initiateCallbackEx(self, proxy: CallbackReceiverPrx | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Callback._op_initiateCallback = IcePy.Operation(
    "initiateCallback",
    "initiateCallback",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Glacier2_router_Test_CallbackReceiverPrx_t, False, 0),),
    (),
    None,
    ())

Callback._op_initiateCallbackEx = IcePy.Operation(
    "initiateCallbackEx",
    "initiateCallbackEx",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Glacier2_router_Test_CallbackReceiverPrx_t, False, 0),),
    (),
    None,
    (_generated_test_Glacier2_router_Test_CallbackException_t,))

Callback._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Callback", "CallbackPrx", "_generated_test_Glacier2_router_Test_CallbackPrx_t"]
