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

import array

from generated.test.Ice.custom.Test.BoolSeq1 import _generated_test_Ice_custom_Test_BoolSeq1_t

from generated.test.Ice.custom.Test.BoolSeq2 import _generated_test_Ice_custom_Test_BoolSeq2_t

from generated.test.Ice.custom.Test.ByteList import _generated_test_Ice_custom_Test_ByteList_t

from generated.test.Ice.custom.Test.ByteSeq1 import _generated_test_Ice_custom_Test_ByteSeq1_t

from generated.test.Ice.custom.Test.ByteSeq2 import _generated_test_Ice_custom_Test_ByteSeq2_t

from generated.test.Ice.custom.Test.ByteString import _generated_test_Ice_custom_Test_ByteString_t

from generated.test.Ice.custom.Test.C_forward import _generated_test_Ice_custom_Test_C_t

from generated.test.Ice.custom.Test.Custom_forward import _generated_test_Ice_custom_Test_CustomPrx_t

from generated.test.Ice.custom.Test.D_forward import _generated_test_Ice_custom_Test_D_t

from generated.test.Ice.custom.Test.DoubleSeq1 import _generated_test_Ice_custom_Test_DoubleSeq1_t

from generated.test.Ice.custom.Test.DoubleSeq2 import _generated_test_Ice_custom_Test_DoubleSeq2_t

from generated.test.Ice.custom.Test.FloatSeq1 import _generated_test_Ice_custom_Test_FloatSeq1_t

from generated.test.Ice.custom.Test.FloatSeq2 import _generated_test_Ice_custom_Test_FloatSeq2_t

from generated.test.Ice.custom.Test.IntSeq1 import _generated_test_Ice_custom_Test_IntSeq1_t

from generated.test.Ice.custom.Test.IntSeq2 import _generated_test_Ice_custom_Test_IntSeq2_t

from generated.test.Ice.custom.Test.LongSeq1 import _generated_test_Ice_custom_Test_LongSeq1_t

from generated.test.Ice.custom.Test.LongSeq2 import _generated_test_Ice_custom_Test_LongSeq2_t

from generated.test.Ice.custom.Test.S import _generated_test_Ice_custom_Test_S_t

from generated.test.Ice.custom.Test.ShortSeq1 import _generated_test_Ice_custom_Test_ShortSeq1_t

from generated.test.Ice.custom.Test.ShortSeq2 import _generated_test_Ice_custom_Test_ShortSeq2_t

from generated.test.Ice.custom.Test.StringList import _generated_test_Ice_custom_Test_StringList_t

from generated.test.Ice.custom.Test.StringTuple import _generated_test_Ice_custom_Test_StringTuple_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.custom.Test.C import C
    from generated.test.Ice.custom.Test.D import D
    from generated.test.Ice.custom.Test.S import S


class CustomPrx(ObjectPrx):

    def opByteString1(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return Custom._op_opByteString1.invoke(self, ((b1, ), context))

    def opByteString1Async(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return Custom._op_opByteString1.invokeAsync(self, ((b1, ), context))

    def opByteString2(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return Custom._op_opByteString2.invoke(self, ((b1, ), context))

    def opByteString2Async(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return Custom._op_opByteString2.invokeAsync(self, ((b1, ), context))

    def opByteList1(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return Custom._op_opByteList1.invoke(self, ((b1, ), context))

    def opByteList1Async(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return Custom._op_opByteList1.invokeAsync(self, ((b1, ), context))

    def opByteList2(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return Custom._op_opByteList2.invoke(self, ((b1, ), context))

    def opByteList2Async(self, b1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return Custom._op_opByteList2.invokeAsync(self, ((b1, ), context))

    def opStringList1(self, s1: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return Custom._op_opStringList1.invoke(self, ((s1, ), context))

    def opStringList1Async(self, s1: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return Custom._op_opStringList1.invokeAsync(self, ((s1, ), context))

    def opStringList2(self, s1: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return Custom._op_opStringList2.invoke(self, ((s1, ), context))

    def opStringList2Async(self, s1: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return Custom._op_opStringList2.invokeAsync(self, ((s1, ), context))

    def opStringTuple1(self, s1: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return Custom._op_opStringTuple1.invoke(self, ((s1, ), context))

    def opStringTuple1Async(self, s1: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return Custom._op_opStringTuple1.invokeAsync(self, ((s1, ), context))

    def opStringTuple2(self, s1: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return Custom._op_opStringTuple2.invoke(self, ((s1, ), context))

    def opStringTuple2Async(self, s1: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return Custom._op_opStringTuple2.invokeAsync(self, ((s1, ), context))

    def sendS(self, val: S, context: dict[str, str] | None = None) -> None:
        return Custom._op_sendS.invoke(self, ((val, ), context))

    def sendSAsync(self, val: S, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Custom._op_sendS.invokeAsync(self, ((val, ), context))

    def sendC(self, val: C | None, context: dict[str, str] | None = None) -> None:
        return Custom._op_sendC.invoke(self, ((val, ), context))

    def sendCAsync(self, val: C | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Custom._op_sendC.invokeAsync(self, ((val, ), context))

    def opBoolSeq(self, v1: Sequence[bool], context: dict[str, str] | None = None) -> tuple[array.array[bool], list[bool]]:
        return Custom._op_opBoolSeq.invoke(self, ((v1, ), context))

    def opBoolSeqAsync(self, v1: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[array.array[bool], list[bool]]]:
        return Custom._op_opBoolSeq.invokeAsync(self, ((v1, ), context))

    def opByteSeq(self, v1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[array.array[int], bytes]:
        return Custom._op_opByteSeq.invoke(self, ((v1, ), context))

    def opByteSeqAsync(self, v1: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[array.array[int], bytes]]:
        return Custom._op_opByteSeq.invokeAsync(self, ((v1, ), context))

    def opShortSeq(self, v1: Sequence[int], context: dict[str, str] | None = None) -> tuple[array.array[int], list[int]]:
        return Custom._op_opShortSeq.invoke(self, ((v1, ), context))

    def opShortSeqAsync(self, v1: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[array.array[int], list[int]]]:
        return Custom._op_opShortSeq.invokeAsync(self, ((v1, ), context))

    def opIntSeq(self, v1: Sequence[int], context: dict[str, str] | None = None) -> tuple[array.array[int], list[int]]:
        return Custom._op_opIntSeq.invoke(self, ((v1, ), context))

    def opIntSeqAsync(self, v1: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[array.array[int], list[int]]]:
        return Custom._op_opIntSeq.invokeAsync(self, ((v1, ), context))

    def opLongSeq(self, v1: Sequence[int], context: dict[str, str] | None = None) -> tuple[array.array[int], list[int]]:
        return Custom._op_opLongSeq.invoke(self, ((v1, ), context))

    def opLongSeqAsync(self, v1: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[array.array[int], list[int]]]:
        return Custom._op_opLongSeq.invokeAsync(self, ((v1, ), context))

    def opFloatSeq(self, v1: Sequence[float], context: dict[str, str] | None = None) -> tuple[array.array[float], list[float]]:
        return Custom._op_opFloatSeq.invoke(self, ((v1, ), context))

    def opFloatSeqAsync(self, v1: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[array.array[float], list[float]]]:
        return Custom._op_opFloatSeq.invokeAsync(self, ((v1, ), context))

    def opDoubleSeq(self, v1: Sequence[float], context: dict[str, str] | None = None) -> tuple[array.array[float], list[float]]:
        return Custom._op_opDoubleSeq.invoke(self, ((v1, ), context))

    def opDoubleSeqAsync(self, v1: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[array.array[float], list[float]]]:
        return Custom._op_opDoubleSeq.invokeAsync(self, ((v1, ), context))

    def opBogusArrayNotExistsFactory(self, context: dict[str, str] | None = None) -> array.array[bool]:
        return Custom._op_opBogusArrayNotExistsFactory.invoke(self, ((), context))

    def opBogusArrayNotExistsFactoryAsync(self, context: dict[str, str] | None = None) -> Awaitable[array.array[bool]]:
        return Custom._op_opBogusArrayNotExistsFactory.invokeAsync(self, ((), context))

    def opBogusArrayThrowFactory(self, context: dict[str, str] | None = None) -> array.array[bool]:
        return Custom._op_opBogusArrayThrowFactory.invoke(self, ((), context))

    def opBogusArrayThrowFactoryAsync(self, context: dict[str, str] | None = None) -> Awaitable[array.array[bool]]:
        return Custom._op_opBogusArrayThrowFactory.invokeAsync(self, ((), context))

    def opBogusArrayType(self, context: dict[str, str] | None = None) -> array.array[bool]:
        return Custom._op_opBogusArrayType.invoke(self, ((), context))

    def opBogusArrayTypeAsync(self, context: dict[str, str] | None = None) -> Awaitable[array.array[bool]]:
        return Custom._op_opBogusArrayType.invokeAsync(self, ((), context))

    def opBogusArrayNoneFactory(self, context: dict[str, str] | None = None) -> array.array[bool]:
        return Custom._op_opBogusArrayNoneFactory.invoke(self, ((), context))

    def opBogusArrayNoneFactoryAsync(self, context: dict[str, str] | None = None) -> Awaitable[array.array[bool]]:
        return Custom._op_opBogusArrayNoneFactory.invokeAsync(self, ((), context))

    def opBogusArraySignatureFactory(self, context: dict[str, str] | None = None) -> array.array[bool]:
        return Custom._op_opBogusArraySignatureFactory.invoke(self, ((), context))

    def opBogusArraySignatureFactoryAsync(self, context: dict[str, str] | None = None) -> Awaitable[array.array[bool]]:
        return Custom._op_opBogusArraySignatureFactory.invokeAsync(self, ((), context))

    def opBogusArrayNoCallableFactory(self, context: dict[str, str] | None = None) -> array.array[bool]:
        return Custom._op_opBogusArrayNoCallableFactory.invoke(self, ((), context))

    def opBogusArrayNoCallableFactoryAsync(self, context: dict[str, str] | None = None) -> Awaitable[array.array[bool]]:
        return Custom._op_opBogusArrayNoCallableFactory.invokeAsync(self, ((), context))

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
        return "::Test::Custom"

IcePy.defineProxy("::Test::Custom", CustomPrx)

class Custom(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Custom", )
    _op_opByteString1: IcePy.Operation
    _op_opByteString2: IcePy.Operation
    _op_opByteList1: IcePy.Operation
    _op_opByteList2: IcePy.Operation
    _op_opStringList1: IcePy.Operation
    _op_opStringList2: IcePy.Operation
    _op_opStringTuple1: IcePy.Operation
    _op_opStringTuple2: IcePy.Operation
    _op_sendS: IcePy.Operation
    _op_sendC: IcePy.Operation
    _op_opBoolSeq: IcePy.Operation
    _op_opByteSeq: IcePy.Operation
    _op_opShortSeq: IcePy.Operation
    _op_opIntSeq: IcePy.Operation
    _op_opLongSeq: IcePy.Operation
    _op_opFloatSeq: IcePy.Operation
    _op_opDoubleSeq: IcePy.Operation
    _op_opBogusArrayNotExistsFactory: IcePy.Operation
    _op_opBogusArrayThrowFactory: IcePy.Operation
    _op_opBogusArrayType: IcePy.Operation
    _op_opBogusArrayNoneFactory: IcePy.Operation
    _op_opBogusArraySignatureFactory: IcePy.Operation
    _op_opBogusArrayNoCallableFactory: IcePy.Operation
    _op_opD: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Custom"

    @abstractmethod
    def opByteString1(self, b1: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opByteString2(self, b1: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opByteList1(self, b1: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opByteList2(self, b1: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opStringList1(self, s1: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opStringList2(self, s1: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opStringTuple1(self, s1: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opStringTuple2(self, s1: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def sendS(self, val: S, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def sendC(self, val: C | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opBoolSeq(self, v1: array.array[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opByteSeq(self, v1: array.array[int], current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opShortSeq(self, v1: array.array[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opIntSeq(self, v1: array.array[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opLongSeq(self, v1: array.array[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opFloatSeq(self, v1: array.array[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opDoubleSeq(self, v1: array.array[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opBogusArrayNotExistsFactory(self, current: Current) -> Sequence[bool] | Awaitable[Sequence[bool]]:
        pass

    @abstractmethod
    def opBogusArrayThrowFactory(self, current: Current) -> Sequence[bool] | Awaitable[Sequence[bool]]:
        pass

    @abstractmethod
    def opBogusArrayType(self, current: Current) -> Sequence[bool] | Awaitable[Sequence[bool]]:
        pass

    @abstractmethod
    def opBogusArrayNoneFactory(self, current: Current) -> Sequence[bool] | Awaitable[Sequence[bool]]:
        pass

    @abstractmethod
    def opBogusArraySignatureFactory(self, current: Current) -> Sequence[bool] | Awaitable[Sequence[bool]]:
        pass

    @abstractmethod
    def opBogusArrayNoCallableFactory(self, current: Current) -> Sequence[bool] | Awaitable[Sequence[bool]]:
        pass

    @abstractmethod
    def opD(self, d: D | None, current: Current) -> D | None | Awaitable[D | None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Custom._op_opByteString1 = IcePy.Operation(
    "opByteString1",
    "opByteString1",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_ByteString_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_ByteString_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_ByteString_t, False, 0),
    ())

Custom._op_opByteString2 = IcePy.Operation(
    "opByteString2",
    "opByteString2",
    OperationMode.Normal,
    None,
    ("python:seq:tuple", ),
    ((("python:seq:list", ), _generated_test_Ice_custom_Test_ByteString_t, False, 0),),
    ((("python:seq:list", ), _generated_test_Ice_custom_Test_ByteString_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_ByteString_t, False, 0),
    ())

Custom._op_opByteList1 = IcePy.Operation(
    "opByteList1",
    "opByteList1",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_ByteList_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_ByteList_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_ByteList_t, False, 0),
    ())

Custom._op_opByteList2 = IcePy.Operation(
    "opByteList2",
    "opByteList2",
    OperationMode.Normal,
    None,
    ("python:seq:list", ),
    ((("python:seq:tuple", ), _generated_test_Ice_custom_Test_ByteList_t, False, 0),),
    ((("python:seq:tuple", ), _generated_test_Ice_custom_Test_ByteList_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_ByteList_t, False, 0),
    ())

Custom._op_opStringList1 = IcePy.Operation(
    "opStringList1",
    "opStringList1",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_StringList_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_StringList_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_StringList_t, False, 0),
    ())

Custom._op_opStringList2 = IcePy.Operation(
    "opStringList2",
    "opStringList2",
    OperationMode.Normal,
    None,
    ("python:seq:tuple", ),
    ((("python:seq:tuple", ), _generated_test_Ice_custom_Test_StringList_t, False, 0),),
    ((("python:seq:tuple", ), _generated_test_Ice_custom_Test_StringList_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_StringList_t, False, 0),
    ())

Custom._op_opStringTuple1 = IcePy.Operation(
    "opStringTuple1",
    "opStringTuple1",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_StringTuple_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_StringTuple_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_StringTuple_t, False, 0),
    ())

Custom._op_opStringTuple2 = IcePy.Operation(
    "opStringTuple2",
    "opStringTuple2",
    OperationMode.Normal,
    None,
    ("python:seq:list", ),
    ((("python:seq:list", ), _generated_test_Ice_custom_Test_StringTuple_t, False, 0),),
    ((("python:seq:list", ), _generated_test_Ice_custom_Test_StringTuple_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_StringTuple_t, False, 0),
    ())

Custom._op_sendS = IcePy.Operation(
    "sendS",
    "sendS",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_S_t, False, 0),),
    (),
    None,
    ())

Custom._op_sendC = IcePy.Operation(
    "sendC",
    "sendC",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_C_t, False, 0),),
    (),
    None,
    ())

Custom._op_opBoolSeq = IcePy.Operation(
    "opBoolSeq",
    "opBoolSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_BoolSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
    ())

Custom._op_opByteSeq = IcePy.Operation(
    "opByteSeq",
    "opByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_ByteSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_ByteSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_ByteSeq1_t, False, 0),
    ())

Custom._op_opShortSeq = IcePy.Operation(
    "opShortSeq",
    "opShortSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_ShortSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_ShortSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_ShortSeq1_t, False, 0),
    ())

Custom._op_opIntSeq = IcePy.Operation(
    "opIntSeq",
    "opIntSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_IntSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_IntSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_IntSeq1_t, False, 0),
    ())

Custom._op_opLongSeq = IcePy.Operation(
    "opLongSeq",
    "opLongSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_LongSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_LongSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_LongSeq1_t, False, 0),
    ())

Custom._op_opFloatSeq = IcePy.Operation(
    "opFloatSeq",
    "opFloatSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_FloatSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_FloatSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_FloatSeq1_t, False, 0),
    ())

Custom._op_opDoubleSeq = IcePy.Operation(
    "opDoubleSeq",
    "opDoubleSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_DoubleSeq1_t, False, 0),),
    (((), _generated_test_Ice_custom_Test_DoubleSeq2_t, False, 0),),
    ((), _generated_test_Ice_custom_Test_DoubleSeq1_t, False, 0),
    ())

Custom._op_opBogusArrayNotExistsFactory = IcePy.Operation(
    "opBogusArrayNotExistsFactory",
    "opBogusArrayNotExistsFactory",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myBogusArrayNotExistsFactory", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
    ())

Custom._op_opBogusArrayThrowFactory = IcePy.Operation(
    "opBogusArrayThrowFactory",
    "opBogusArrayThrowFactory",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myBogusArrayThrowFactory", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
    ())

Custom._op_opBogusArrayType = IcePy.Operation(
    "opBogusArrayType",
    "opBogusArrayType",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myBogusArrayType", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
    ())

Custom._op_opBogusArrayNoneFactory = IcePy.Operation(
    "opBogusArrayNoneFactory",
    "opBogusArrayNoneFactory",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myBogusArrayNoneFactory", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
    ())

Custom._op_opBogusArraySignatureFactory = IcePy.Operation(
    "opBogusArraySignatureFactory",
    "opBogusArraySignatureFactory",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myBogusArraySignatureFactory", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
    ())

Custom._op_opBogusArrayNoCallableFactory = IcePy.Operation(
    "opBogusArrayNoCallableFactory",
    "opBogusArrayNoCallableFactory",
    OperationMode.Normal,
    None,
    ("python:memoryview:Custom.myNoCallableFactory", ),
    (),
    (),
    ((), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
    ())

Custom._op_opD = IcePy.Operation(
    "opD",
    "opD",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_custom_Test_D_t, False, 0),),
    (),
    ((), _generated_test_Ice_custom_Test_D_t, False, 0),
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

__all__ = ["Custom", "CustomPrx", "_generated_test_Ice_custom_Test_CustomPrx_t"]
