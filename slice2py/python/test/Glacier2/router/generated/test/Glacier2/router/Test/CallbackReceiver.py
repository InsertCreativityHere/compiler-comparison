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

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CallbackReceiver"

    @abstractmethod
    def callback(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def callbackEx(self, current: Current) -> None | Awaitable[None]:
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
    (_generated_test_Glacier2_router_Test_CallbackException_t,))

__all__ = ["CallbackReceiver", "CallbackReceiverPrx", "_generated_test_Glacier2_router_Test_CallbackReceiverPrx_t"]
