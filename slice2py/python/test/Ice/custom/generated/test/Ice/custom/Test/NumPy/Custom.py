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

from generated.test.Ice.custom.Test.NumPy.BoolSeq1 import _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t

from generated.test.Ice.custom.Test.NumPy.BoolSeq2 import _generated_test_Ice_custom_Test_NumPy_BoolSeq2_t

from generated.test.Ice.custom.Test.NumPy.ByteSeq1 import _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t

from generated.test.Ice.custom.Test.NumPy.ByteSeq2 import _generated_test_Ice_custom_Test_NumPy_ByteSeq2_t

from generated.test.Ice.custom.Test.NumPy.Complex128Seq import _generated_test_Ice_custom_Test_NumPy_Complex128Seq_t

from generated.test.Ice.custom.Test.NumPy.Custom_forward import _generated_test_Ice_custom_Test_NumPy_CustomPrx_t

from generated.test.Ice.custom.Test.NumPy.D_forward import _generated_test_Ice_custom_Test_NumPy_D_t

from generated.test.Ice.custom.Test.NumPy.DoubleSeq1 import _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t

from generated.test.Ice.custom.Test.NumPy.DoubleSeq2 import _generated_test_Ice_custom_Test_NumPy_DoubleSeq2_t

from generated.test.Ice.custom.Test.NumPy.FloatSeq1 import _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t

from generated.test.Ice.custom.Test.NumPy.FloatSeq2 import _generated_test_Ice_custom_Test_NumPy_FloatSeq2_t

from generated.test.Ice.custom.Test.NumPy.IntSeq1 import _generated_test_Ice_custom_Test_NumPy_IntSeq1_t

from generated.test.Ice.custom.Test.NumPy.IntSeq2 import _generated_test_Ice_custom_Test_NumPy_IntSeq2_t

from generated.test.Ice.custom.Test.NumPy.LongSeq1 import _generated_test_Ice_custom_Test_NumPy_LongSeq1_t

from generated.test.Ice.custom.Test.NumPy.LongSeq2 import _generated_test_Ice_custom_Test_NumPy_LongSeq2_t

from generated.test.Ice.custom.Test.NumPy.ShortSeq1 import _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t

from generated.test.Ice.custom.Test.NumPy.ShortSeq2 import _generated_test_Ice_custom_Test_NumPy_ShortSeq2_t

import numpy

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.custom.Test.NumPy.D import D


class CustomPrx(ObjectPrx):

    def opBoolSeq(self, v1: Sequence[bool] | numpy.typing.NDArray[numpy.bool], context: dict[str, str] | None = None) -> tuple[numpy.typing.NDArray[numpy.bool], list[bool]]:
        return Custom._op_opBoolSeq.invoke(self, ((v1, ), context))

    def opBoolSeqAsync(self, v1: Sequence[bool] | numpy.typing.NDArray[numpy.bool], context: dict[str, str] | None = None) -> Awaitable[tuple[numpy.typing.NDArray[numpy.bool], list[bool]]]:
        return Custom._op_opBoolSeq.invokeAsync(self, ((v1, ), context))

    def opByteSeq(self, v1: Sequence[int] | bytes | numpy.typing.NDArray[numpy.int8], context: dict[str, str] | None = None) -> tuple[numpy.typing.NDArray[numpy.int8], bytes]:
        return Custom._op_opByteSeq.invoke(self, ((v1, ), context))

    def opByteSeqAsync(self, v1: Sequence[int] | bytes | numpy.typing.NDArray[numpy.int8], context: dict[str, str] | None = None) -> Awaitable[tuple[numpy.typing.NDArray[numpy.int8], bytes]]:
        return Custom._op_opByteSeq.invokeAsync(self, ((v1, ), context))

    def opShortSeq(self, v1: Sequence[int] | numpy.typing.NDArray[numpy.int16], context: dict[str, str] | None = None) -> tuple[numpy.typing.NDArray[numpy.int16], list[int]]:
        return Custom._op_opShortSeq.invoke(self, ((v1, ), context))

    def opShortSeqAsync(self, v1: Sequence[int] | numpy.typing.NDArray[numpy.int16], context: dict[str, str] | None = None) -> Awaitable[tuple[numpy.typing.NDArray[numpy.int16], list[int]]]:
        return Custom._op_opShortSeq.invokeAsync(self, ((v1, ), context))

    def opIntSeq(self, v1: Sequence[int] | numpy.typing.NDArray[numpy.int32], context: dict[str, str] | None = None) -> tuple[numpy.typing.NDArray[numpy.int32], list[int]]:
        return Custom._op_opIntSeq.invoke(self, ((v1, ), context))

    def opIntSeqAsync(self, v1: Sequence[int] | numpy.typing.NDArray[numpy.int32], context: dict[str, str] | None = None) -> Awaitable[tuple[numpy.typing.NDArray[numpy.int32], list[int]]]:
        return Custom._op_opIntSeq.invokeAsync(self, ((v1, ), context))

    def opLongSeq(self, v1: Sequence[int] | numpy.typing.NDArray[numpy.int64], context: dict[str, str] | None = None) -> tuple[numpy.typing.NDArray[numpy.int64], list[int]]:
        return Custom._op_opLongSeq.invoke(self, ((v1, ), context))

    def opLongSeqAsync(self, v1: Sequence[int] | numpy.typing.NDArray[numpy.int64], context: dict[str, str] | None = None) -> Awaitable[tuple[numpy.typing.NDArray[numpy.int64], list[int]]]:
        return Custom._op_opLongSeq.invokeAsync(self, ((v1, ), context))

    def opFloatSeq(self, v1: Sequence[float] | numpy.typing.NDArray[numpy.float32], context: dict[str, str] | None = None) -> tuple[numpy.typing.NDArray[numpy.float32], list[float]]:
        return Custom._op_opFloatSeq.invoke(self, ((v1, ), context))

    def opFloatSeqAsync(self, v1: Sequence[float] | numpy.typing.NDArray[numpy.float32], context: dict[str, str] | None = None) -> Awaitable[tuple[numpy.typing.NDArray[numpy.float32], list[float]]]:
        return Custom._op_opFloatSeq.invokeAsync(self, ((v1, ), context))

    def opDoubleSeq(self, v1: Sequence[float] | numpy.typing.NDArray[numpy.float64], context: dict[str, str] | None = None) -> tuple[numpy.typing.NDArray[numpy.float64], list[float]]:
        return Custom._op_opDoubleSeq.invoke(self, ((v1, ), context))

    def opDoubleSeqAsync(self, v1: Sequence[float] | numpy.typing.NDArray[numpy.float64], context: dict[str, str] | None = None) -> Awaitable[tuple[numpy.typing.NDArray[numpy.float64], list[float]]]:
        return Custom._op_opDoubleSeq.invokeAsync(self, ((v1, ), context))

    def opComplex128Seq(self, v1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> bytes:
        return Custom._op_opComplex128Seq.invoke(self, ((v1, ), context))

    def opComplex128SeqAsync(self, v1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[bytes]:
        return Custom._op_opComplex128Seq.invokeAsync(self, ((v1, ), context))

    def opBoolMatrix(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.bool]:
        return Custom._op_opBoolMatrix.invoke(self, ((), context))

    def opBoolMatrixAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.bool]]:
        return Custom._op_opBoolMatrix.invokeAsync(self, ((), context))

    def opByteMatrix(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.int8]:
        return Custom._op_opByteMatrix.invoke(self, ((), context))

    def opByteMatrixAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.int8]]:
        return Custom._op_opByteMatrix.invokeAsync(self, ((), context))

    def opShortMatrix(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.int16]:
        return Custom._op_opShortMatrix.invoke(self, ((), context))

    def opShortMatrixAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.int16]]:
        return Custom._op_opShortMatrix.invokeAsync(self, ((), context))

    def opIntMatrix(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.int32]:
        return Custom._op_opIntMatrix.invoke(self, ((), context))

    def opIntMatrixAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.int32]]:
        return Custom._op_opIntMatrix.invokeAsync(self, ((), context))

    def opLongMatrix(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.int64]:
        return Custom._op_opLongMatrix.invoke(self, ((), context))

    def opLongMatrixAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.int64]]:
        return Custom._op_opLongMatrix.invokeAsync(self, ((), context))

    def opFloatMatrix(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.float32]:
        return Custom._op_opFloatMatrix.invoke(self, ((), context))

    def opFloatMatrixAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.float32]]:
        return Custom._op_opFloatMatrix.invokeAsync(self, ((), context))

    def opDoubleMatrix(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.float64]:
        return Custom._op_opDoubleMatrix.invoke(self, ((), context))

    def opDoubleMatrixAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.float64]]:
        return Custom._op_opDoubleMatrix.invokeAsync(self, ((), context))

    def opBogusNumpyArrayType(self, context: dict[str, str] | None = None) -> numpy.typing.NDArray[numpy.bool]:
        return Custom._op_opBogusNumpyArrayType.invoke(self, ((), context))

    def opBogusNumpyArrayTypeAsync(self, context: dict[str, str] | None = None) -> Awaitable[numpy.typing.NDArray[numpy.bool]]:
        return Custom._op_opBogusNumpyArrayType.invokeAsync(self, ((), context))

    def opD(self, d: D | None, context: dict[str, str] | None = None) -> D | None:
        return Custom._op_opD.invoke(self, ((d, ), context))

    def opDAsync(self, d: D | None, context: dict[str, str] | None = None) -> Awaitable[D | None]:
        return Custom._op_opD.invokeAsync(self, ((d, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Custom._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Custom._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> CustomPrx | None:
        return checkedCast(CustomPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[CustomPrx | None ]:
        return checkedCastAsync(CustomPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> CustomPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> CustomPrx | None:
        return uncheckedCast(CustomPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::NumPy::Custom"

IcePy.defineProxy("::Test::NumPy::Custom", CustomPrx)

class Custom(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::NumPy::Custom", )
    _op_opBoolSeq: IcePy.Operation
    _op_opByteSeq: IcePy.Operation
    _op_opShortSeq: IcePy.Operation
    _op_opIntSeq: IcePy.Operation
    _op_opLongSeq: IcePy.Operation
    _op_opFloatSeq: IcePy.Operation
    _op_opDoubleSeq: IcePy.Operation
    _op_opComplex128Seq: IcePy.Operation
    _op_opBoolMatrix: IcePy.Operation
    _op_opByteMatrix: IcePy.Operation
    _op_opShortMatrix: IcePy.Operation
    _op_opIntMatrix: IcePy.Operation
    _op_opLongMatrix: IcePy.Operation
    _op_opFloatMatrix: IcePy.Operation
    _op_opDoubleMatrix: IcePy.Operation
    _op_opBogusNumpyArrayType: IcePy.Operation
    _op_opD: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::NumPy::Custom"

    @abstractmethod
    def opBoolSeq(self, v1: numpy.typing.NDArray[numpy.bool], current: Current) -> tuple[Sequence[bool] | numpy.typing.NDArray[numpy.bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool] | numpy.typing.NDArray[numpy.bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opByteSeq(self, v1: numpy.typing.NDArray[numpy.int8], current: Current) -> tuple[Sequence[int] | bytes | numpy.typing.NDArray[numpy.int8], Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes | numpy.typing.NDArray[numpy.int8], Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opShortSeq(self, v1: numpy.typing.NDArray[numpy.int16], current: Current) -> tuple[Sequence[int] | numpy.typing.NDArray[numpy.int16], Sequence[int]] | Awaitable[tuple[Sequence[int] | numpy.typing.NDArray[numpy.int16], Sequence[int]]]:
        pass

    @abstractmethod
    def opIntSeq(self, v1: numpy.typing.NDArray[numpy.int32], current: Current) -> tuple[Sequence[int] | numpy.typing.NDArray[numpy.int32], Sequence[int]] | Awaitable[tuple[Sequence[int] | numpy.typing.NDArray[numpy.int32], Sequence[int]]]:
        pass

    @abstractmethod
    def opLongSeq(self, v1: numpy.typing.NDArray[numpy.int64], current: Current) -> tuple[Sequence[int] | numpy.typing.NDArray[numpy.int64], Sequence[int]] | Awaitable[tuple[Sequence[int] | numpy.typing.NDArray[numpy.int64], Sequence[int]]]:
        pass

    @abstractmethod
    def opFloatSeq(self, v1: numpy.typing.NDArray[numpy.float32], current: Current) -> tuple[Sequence[float] | numpy.typing.NDArray[numpy.float32], Sequence[float]] | Awaitable[tuple[Sequence[float] | numpy.typing.NDArray[numpy.float32], Sequence[float]]]:
        pass

    @abstractmethod
    def opDoubleSeq(self, v1: numpy.typing.NDArray[numpy.float64], current: Current) -> tuple[Sequence[float] | numpy.typing.NDArray[numpy.float64], Sequence[float]] | Awaitable[tuple[Sequence[float] | numpy.typing.NDArray[numpy.float64], Sequence[float]]]:
        pass

    @abstractmethod
    def opComplex128Seq(self, v1: bytes, current: Current) -> Sequence[int] | bytes | Awaitable[Sequence[int] | bytes]:
        pass

    @abstractmethod
    def opBoolMatrix(self, current: Current) -> Sequence[bool] | numpy.typing.NDArray[numpy.bool] | Awaitable[Sequence[bool] | numpy.typing.NDArray[numpy.bool]]:
        pass

    @abstractmethod
    def opByteMatrix(self, current: Current) -> Sequence[int] | bytes | numpy.typing.NDArray[numpy.int8] | Awaitable[Sequence[int] | bytes | numpy.typing.NDArray[numpy.int8]]:
        pass

    @abstractmethod
    def opShortMatrix(self, current: Current) -> Sequence[int] | numpy.typing.NDArray[numpy.int16] | Awaitable[Sequence[int] | numpy.typing.NDArray[numpy.int16]]:
        pass

    @abstractmethod
    def opIntMatrix(self, current: Current) -> Sequence[int] | numpy.typing.NDArray[numpy.int32] | Awaitable[Sequence[int] | numpy.typing.NDArray[numpy.int32]]:
        pass

    @abstractmethod
    def opLongMatrix(self, current: Current) -> Sequence[int] | numpy.typing.NDArray[numpy.int64] | Awaitable[Sequence[int] | numpy.typing.NDArray[numpy.int64]]:
        pass

    @abstractmethod
    def opFloatMatrix(self, current: Current) -> Sequence[float] | numpy.typing.NDArray[numpy.float32] | Awaitable[Sequence[float] | numpy.typing.NDArray[numpy.float32]]:
        pass

    @abstractmethod
    def opDoubleMatrix(self, current: Current) -> Sequence[float] | numpy.typing.NDArray[numpy.float64] | Awaitable[Sequence[float] | numpy.typing.NDArray[numpy.float64]]:
        pass

    @abstractmethod
    def opBogusNumpyArrayType(self, current: Current) -> Sequence[bool] | numpy.typing.NDArray[numpy.bool] | Awaitable[Sequence[bool] | numpy.typing.NDArray[numpy.bool]]:
        pass

    @abstractmethod
    def opD(self, d: D | None, current: Current) -> D | None | Awaitable[D | None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Custom._op_opBoolSeq = IcePy.Operation(
    "opBoolSeq",
    "opBoolSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_NumPy_BoolSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t, False, 0),
    ())

Custom._op_opByteSeq = IcePy.Operation(
    "opByteSeq",
    "opByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_NumPy_ByteSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t, False, 0),
    ())

Custom._op_opShortSeq = IcePy.Operation(
    "opShortSeq",
    "opShortSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_NumPy_ShortSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t, False, 0),
    ())

Custom._op_opIntSeq = IcePy.Operation(
    "opIntSeq",
    "opIntSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_IntSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_NumPy_IntSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_NumPy_IntSeq1_t, False, 0),
    ())

Custom._op_opLongSeq = IcePy.Operation(
    "opLongSeq",
    "opLongSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_LongSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_NumPy_LongSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_NumPy_LongSeq1_t, False, 0),
    ())

Custom._op_opFloatSeq = IcePy.Operation(
    "opFloatSeq",
    "opFloatSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_NumPy_FloatSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t, False, 0),
    ())

Custom._op_opDoubleSeq = IcePy.Operation(
    "opDoubleSeq",
    "opDoubleSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_NumPy_DoubleSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t, False, 0),
    ())

Custom._op_opComplex128Seq = IcePy.Operation(
    "opComplex128Seq",
    "opComplex128Seq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_Complex128Seq_t, False, 0),),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_Complex128Seq_t, False, 0),
    ())

Custom._op_opBoolMatrix = IcePy.Operation(
    "opBoolMatrix",
    "opBoolMatrix",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNumPyMatrix3x3", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t, False, 0),
    ())

Custom._op_opByteMatrix = IcePy.Operation(
    "opByteMatrix",
    "opByteMatrix",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNumPyMatrix3x3", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t, False, 0),
    ())

Custom._op_opShortMatrix = IcePy.Operation(
    "opShortMatrix",
    "opShortMatrix",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNumPyMatrix3x3", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t, False, 0),
    ())

Custom._op_opIntMatrix = IcePy.Operation(
    "opIntMatrix",
    "opIntMatrix",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNumPyMatrix3x3", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_IntSeq1_t, False, 0),
    ())

Custom._op_opLongMatrix = IcePy.Operation(
    "opLongMatrix",
    "opLongMatrix",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNumPyMatrix3x3", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_LongSeq1_t, False, 0),
    ())

Custom._op_opFloatMatrix = IcePy.Operation(
    "opFloatMatrix",
    "opFloatMatrix",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNumPyMatrix3x3", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t, False, 0),
    ())

Custom._op_opDoubleMatrix = IcePy.Operation(
    "opDoubleMatrix",
    "opDoubleMatrix",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNumPyMatrix3x3", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t, False, 0),
    ())

Custom._op_opBogusNumpyArrayType = IcePy.Operation(
    "opBogusNumpyArrayType",
    "opBogusNumpyArrayType",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myBogusNumpyArrayType", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t, False, 0),
    ())

Custom._op_opD = IcePy.Operation(
    "opD",
    "opD",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_NumPy_D_t, False, 0),),
    (),
    ((), _generated_test_Ice_custom_Test_NumPy_D_t, False, 0),
    ())

Custom._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Custom", "CustomPrx", "_generated_test_Ice_custom_Test_NumPy_CustomPrx_t"]
