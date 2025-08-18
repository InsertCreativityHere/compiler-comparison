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

from generated.test.Ice.asyncio.Test.TestException import _generated_test_Ice_asyncio_Test_TestException_t

from generated.test.Ice.asyncio.Test.TestIntf_forward import _generated_test_Ice_asyncio_Test_TestIntfPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.asyncio.Test.TestIntf import TestIntfPrx


class TestIntfPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_op.invokeAsync(self, ((), context))

    def callOpOn(self, proxy: TestIntfPrx | None, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_callOpOn.invoke(self, ((proxy, ), context))

    def callOpOnAsync(self, proxy: TestIntfPrx | None, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_callOpOn.invokeAsync(self, ((proxy, ), context))

    def throwUserException1(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwUserException1.invoke(self, ((), context))

    def throwUserException1Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwUserException1.invokeAsync(self, ((), context))

    def throwUserException2(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwUserException2.invoke(self, ((), context))

    def throwUserException2Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwUserException2.invokeAsync(self, ((), context))

    def throwUnhandledException1(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwUnhandledException1.invoke(self, ((), context))

    def throwUnhandledException1Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwUnhandledException1.invokeAsync(self, ((), context))

    def throwUnhandledException2(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwUnhandledException2.invoke(self, ((), context))

    def throwUnhandledException2Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwUnhandledException2.invokeAsync(self, ((), context))

    def sleep(self, ms: int, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_sleep.invoke(self, ((ms, ), context))

    def sleepAsync(self, ms: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_sleep.invokeAsync(self, ((ms, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestIntfPrx | None:
        return checkedCast(TestIntfPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestIntfPrx | None ]:
        return checkedCastAsync(TestIntfPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestIntfPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestIntfPrx | None:
        return uncheckedCast(TestIntfPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

IcePy.defineProxy("::Test::TestIntf", TestIntfPrx)

class TestIntf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestIntf", )
    _op_op: IcePy.Operation
    _op_callOpOn: IcePy.Operation
    _op_throwUserException1: IcePy.Operation
    _op_throwUserException2: IcePy.Operation
    _op_throwUnhandledException1: IcePy.Operation
    _op_throwUnhandledException2: IcePy.Operation
    _op_sleep: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def op(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def callOpOn(self, proxy: TestIntfPrx | None, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def throwUserException1(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwUserException2(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwUnhandledException1(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwUnhandledException2(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def sleep(self, ms: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

TestIntf._op_callOpOn = IcePy.Operation(
    "callOpOn",
    "callOpOn",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_asyncio_Test_TestIntfPrx_t, False, 0),),
    (),
    ((), IcePy._t_int, False, 0),
    ())

TestIntf._op_throwUserException1 = IcePy.Operation(
    "throwUserException1",
    "throwUserException1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_asyncio_Test_TestException_t,))

TestIntf._op_throwUserException2 = IcePy.Operation(
    "throwUserException2",
    "throwUserException2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_asyncio_Test_TestException_t,))

TestIntf._op_throwUnhandledException1 = IcePy.Operation(
    "throwUnhandledException1",
    "throwUnhandledException1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_throwUnhandledException2 = IcePy.Operation(
    "throwUnhandledException2",
    "throwUnhandledException2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_sleep = IcePy.Operation(
    "sleep",
    "sleep",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

TestIntf._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_generated_test_Ice_asyncio_Test_TestIntfPrx_t"]
