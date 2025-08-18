# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Glacier2.Session_forward import _Glacier2_SessionPrx_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.TestController_forward import _Test_TestControllerPrx_t

from Test.TestToken import _Test_TestToken_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Glacier2.Session import SessionPrx
    from Ice.Current import Current
    from Test.TestToken import TestToken
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestControllerPrx(ObjectPrx):

    def step(self, currentSession: SessionPrx | None, currentState: TestToken, context: dict[str, str] | None = None) -> TestToken:
        return TestController._op_step.invoke(self, ((currentSession, currentState), context))

    def stepAsync(self, currentSession: SessionPrx | None, currentState: TestToken, context: dict[str, str] | None = None) -> Awaitable[TestToken]:
        return TestController._op_step.invokeAsync(self, ((currentSession, currentState), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestController._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestController._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestControllerPrx | None:
        return checkedCast(TestControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestControllerPrx | None ]:
        return checkedCastAsync(TestControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestControllerPrx | None:
        return uncheckedCast(TestControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestController"

IcePy.defineProxy("::Test::TestController", TestControllerPrx)

class TestController(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestController", )
    _op_step: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestController"

    @abstractmethod
    def step(self, currentSession: SessionPrx | None, currentState: TestToken, current: Current) -> TestToken | Awaitable[TestToken]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestController._op_step = IcePy.Operation(
    "step",
    "step",
    OperationMode.Normal,
    None,
    (),
    (((), _Glacier2_SessionPrx_t, False, 0), ((), _Test_TestToken_t, False, 0)),
    (((), _Test_TestToken_t, False, 0),),
    None,
    ())

TestController._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestController", "TestControllerPrx", "_Test_TestControllerPrx_t"]
