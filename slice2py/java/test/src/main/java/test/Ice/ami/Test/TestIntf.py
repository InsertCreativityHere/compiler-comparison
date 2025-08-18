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

from Test.PingReply_forward import _Test_PingReplyPrx_t

from Test.TestIntfException import _Test_TestIntfException_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.PingReply import PingReplyPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_op.invokeAsync(self, ((), context))

    def opWithPayload(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_opWithPayload.invoke(self, ((seq, ), context))

    def opWithPayloadAsync(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_opWithPayload.invokeAsync(self, ((seq, ), context))

    def opWithResult(self, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_opWithResult.invoke(self, ((), context))

    def opWithResultAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_opWithResult.invokeAsync(self, ((), context))

    def opWithUE(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_opWithUE.invoke(self, ((), context))

    def opWithUEAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_opWithUE.invokeAsync(self, ((), context))

    def opBatch(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_opBatch.invoke(self, ((), context))

    def opBatchAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_opBatch.invokeAsync(self, ((), context))

    def opBatchCount(self, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_opBatchCount.invoke(self, ((), context))

    def opBatchCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_opBatchCount.invokeAsync(self, ((), context))

    def waitForBatch(self, count: int, context: dict[str, str] | None = None) -> bool:
        return TestIntf._op_waitForBatch.invoke(self, ((count, ), context))

    def waitForBatchAsync(self, count: int, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return TestIntf._op_waitForBatch.invokeAsync(self, ((count, ), context))

    def closeConnection(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_closeConnection.invoke(self, ((), context))

    def closeConnectionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_closeConnection.invokeAsync(self, ((), context))

    def abortConnection(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_abortConnection.invoke(self, ((), context))

    def abortConnectionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_abortConnection.invokeAsync(self, ((), context))

    def sleep(self, ms: int, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_sleep.invoke(self, ((ms, ), context))

    def sleepAsync(self, ms: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_sleep.invokeAsync(self, ((ms, ), context))

    def startDispatch(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_startDispatch.invoke(self, ((), context))

    def startDispatchAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_startDispatch.invokeAsync(self, ((), context))

    def finishDispatch(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_finishDispatch.invoke(self, ((), context))

    def finishDispatchAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_finishDispatch.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_shutdown.invokeAsync(self, ((), context))

    def supportsFunctionalTests(self, context: dict[str, str] | None = None) -> bool:
        return TestIntf._op_supportsFunctionalTests.invoke(self, ((), context))

    def supportsFunctionalTestsAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return TestIntf._op_supportsFunctionalTests.invokeAsync(self, ((), context))

    def supportsBackPressureTests(self, context: dict[str, str] | None = None) -> bool:
        return TestIntf._op_supportsBackPressureTests.invoke(self, ((), context))

    def supportsBackPressureTestsAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return TestIntf._op_supportsBackPressureTests.invokeAsync(self, ((), context))

    def opBool(self, b: bool, context: dict[str, str] | None = None) -> bool:
        return TestIntf._op_opBool.invoke(self, ((b, ), context))

    def opBoolAsync(self, b: bool, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return TestIntf._op_opBool.invokeAsync(self, ((b, ), context))

    def opByte(self, b: int, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_opByte.invoke(self, ((b, ), context))

    def opByteAsync(self, b: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_opByte.invokeAsync(self, ((b, ), context))

    def opShort(self, s: int, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_opShort.invoke(self, ((s, ), context))

    def opShortAsync(self, s: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_opShort.invokeAsync(self, ((s, ), context))

    def opInt(self, i: int, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_opInt.invoke(self, ((i, ), context))

    def opIntAsync(self, i: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_opInt.invokeAsync(self, ((i, ), context))

    def opLong(self, l: int, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_opLong.invoke(self, ((l, ), context))

    def opLongAsync(self, l: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_opLong.invokeAsync(self, ((l, ), context))

    def opFloat(self, f: float, context: dict[str, str] | None = None) -> float:
        return TestIntf._op_opFloat.invoke(self, ((f, ), context))

    def opFloatAsync(self, f: float, context: dict[str, str] | None = None) -> Awaitable[float]:
        return TestIntf._op_opFloat.invokeAsync(self, ((f, ), context))

    def opDouble(self, d: float, context: dict[str, str] | None = None) -> float:
        return TestIntf._op_opDouble.invoke(self, ((d, ), context))

    def opDoubleAsync(self, d: float, context: dict[str, str] | None = None) -> Awaitable[float]:
        return TestIntf._op_opDouble.invokeAsync(self, ((d, ), context))

    def pingBiDir(self, reply: PingReplyPrx | None, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_pingBiDir.invoke(self, ((reply, ), context))

    def pingBiDirAsync(self, reply: PingReplyPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_pingBiDir.invokeAsync(self, ((reply, ), context))

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
    _op_opWithPayload: IcePy.Operation
    _op_opWithResult: IcePy.Operation
    _op_opWithUE: IcePy.Operation
    _op_opBatch: IcePy.Operation
    _op_opBatchCount: IcePy.Operation
    _op_waitForBatch: IcePy.Operation
    _op_closeConnection: IcePy.Operation
    _op_abortConnection: IcePy.Operation
    _op_sleep: IcePy.Operation
    _op_startDispatch: IcePy.Operation
    _op_finishDispatch: IcePy.Operation
    _op_shutdown: IcePy.Operation
    _op_supportsFunctionalTests: IcePy.Operation
    _op_supportsBackPressureTests: IcePy.Operation
    _op_opBool: IcePy.Operation
    _op_opByte: IcePy.Operation
    _op_opShort: IcePy.Operation
    _op_opInt: IcePy.Operation
    _op_opLong: IcePy.Operation
    _op_opFloat: IcePy.Operation
    _op_opDouble: IcePy.Operation
    _op_pingBiDir: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def op(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opWithPayload(self, seq: bytes, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opWithResult(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opWithUE(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opBatch(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opBatchCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def waitForBatch(self, count: int, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def closeConnection(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def abortConnection(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def sleep(self, ms: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def startDispatch(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def finishDispatch(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def supportsFunctionalTests(self, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def supportsBackPressureTests(self, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def opBool(self, b: bool, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def opByte(self, b: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opShort(self, s: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opInt(self, i: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opLong(self, l: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opFloat(self, f: float, current: Current) -> float | Awaitable[float]:
        pass

    @abstractmethod
    def opDouble(self, d: float, current: Current) -> float | Awaitable[float]:
        pass

    @abstractmethod
    def pingBiDir(self, reply: PingReplyPrx | None, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_opWithPayload = IcePy.Operation(
    "opWithPayload",
    "opWithPayload",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ByteSeq_t, False, 0),),
    (),
    None,
    ())

TestIntf._op_opWithResult = IcePy.Operation(
    "opWithResult",
    "opWithResult",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

TestIntf._op_opWithUE = IcePy.Operation(
    "opWithUE",
    "opWithUE",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_TestIntfException_t,))

TestIntf._op_opBatch = IcePy.Operation(
    "opBatch",
    "opBatch",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_opBatchCount = IcePy.Operation(
    "opBatchCount",
    "opBatchCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

TestIntf._op_waitForBatch = IcePy.Operation(
    "waitForBatch",
    "waitForBatch",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

TestIntf._op_closeConnection = IcePy.Operation(
    "closeConnection",
    "closeConnection",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_abortConnection = IcePy.Operation(
    "abortConnection",
    "abortConnection",
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

TestIntf._op_startDispatch = IcePy.Operation(
    "startDispatch",
    "startDispatch",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_finishDispatch = IcePy.Operation(
    "finishDispatch",
    "finishDispatch",
    OperationMode.Normal,
    None,
    (),
    (),
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

TestIntf._op_supportsFunctionalTests = IcePy.Operation(
    "supportsFunctionalTests",
    "supportsFunctionalTests",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

TestIntf._op_supportsBackPressureTests = IcePy.Operation(
    "supportsBackPressureTests",
    "supportsBackPressureTests",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

TestIntf._op_opBool = IcePy.Operation(
    "opBool",
    "opBool",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

TestIntf._op_opByte = IcePy.Operation(
    "opByte",
    "opByte",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_byte, False, 0),),
    (),
    ((), IcePy._t_byte, False, 0),
    ())

TestIntf._op_opShort = IcePy.Operation(
    "opShort",
    "opShort",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_short, False, 0),),
    (),
    ((), IcePy._t_short, False, 0),
    ())

TestIntf._op_opInt = IcePy.Operation(
    "opInt",
    "opInt",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    ((), IcePy._t_int, False, 0),
    ())

TestIntf._op_opLong = IcePy.Operation(
    "opLong",
    "opLong",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0),),
    (),
    ((), IcePy._t_long, False, 0),
    ())

TestIntf._op_opFloat = IcePy.Operation(
    "opFloat",
    "opFloat",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_float, False, 0),),
    (),
    ((), IcePy._t_float, False, 0),
    ())

TestIntf._op_opDouble = IcePy.Operation(
    "opDouble",
    "opDouble",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_double, False, 0),),
    (),
    ((), IcePy._t_double, False, 0),
    ())

TestIntf._op_pingBiDir = IcePy.Operation(
    "pingBiDir",
    "pingBiDir",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_PingReplyPrx_t, False, 0),),
    (),
    None,
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_Test_TestIntfPrx_t"]
