# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Context import _Ice_Context_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.BoolBoolSD import _Test_BoolBoolSD_t

from Test.BoolS import _Test_BoolS_t

from Test.BoolSS import _Test_BoolSS_t

from Test.ByteBoolD import _Test_ByteBoolD_t

from Test.ByteBoolDS import _Test_ByteBoolDS_t

from Test.ByteByteSD import _Test_ByteByteSD_t

from Test.ByteS import _Test_ByteS_t

from Test.ByteSS import _Test_ByteSS_t

from Test.DoubleS import _Test_DoubleS_t

from Test.DoubleSS import _Test_DoubleSS_t

from Test.FloatS import _Test_FloatS_t

from Test.FloatSS import _Test_FloatSS_t

from Test.IntIntSD import _Test_IntIntSD_t

from Test.IntS import _Test_IntS_t

from Test.IntSS import _Test_IntSS_t

from Test.LongFloatD import _Test_LongFloatD_t

from Test.LongFloatDS import _Test_LongFloatDS_t

from Test.LongLongSD import _Test_LongLongSD_t

from Test.LongS import _Test_LongS_t

from Test.LongSS import _Test_LongSS_t

from Test.MyClass_forward import _Test_MyClassPrx_t

from Test.MyEnum import _Test_MyEnum_t

from Test.MyEnumMyEnumSD import _Test_MyEnumMyEnumSD_t

from Test.MyEnumStringD import _Test_MyEnumStringD_t

from Test.MyEnumStringDS import _Test_MyEnumStringDS_t

from Test.MyStructMyEnumD import _Test_MyStructMyEnumD_t

from Test.MyStructMyEnumDS import _Test_MyStructMyEnumDS_t

from Test.ShortIntD import _Test_ShortIntD_t

from Test.ShortIntDS import _Test_ShortIntDS_t

from Test.ShortS import _Test_ShortS_t

from Test.ShortSS import _Test_ShortSS_t

from Test.ShortShortSD import _Test_ShortShortSD_t

from Test.StringDoubleSD import _Test_StringDoubleSD_t

from Test.StringFloatSD import _Test_StringFloatSD_t

from Test.StringMyEnumD import _Test_StringMyEnumD_t

from Test.StringMyEnumDS import _Test_StringMyEnumDS_t

from Test.StringS import _Test_StringS_t

from Test.StringSS import _Test_StringSS_t

from Test.StringSSS import _Test_StringSSS_t

from Test.StringStringD import _Test_StringStringD_t

from Test.StringStringDS import _Test_StringStringDS_t

from Test.StringStringSD import _Test_StringStringSD_t

from Test.Structure import _Test_Structure_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.MyClass import MyClassPrx
    from Test.MyEnum import MyEnum
    from Test.MyStruct import MyStruct
    from Test.Structure import Structure
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class MyClassPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_shutdown.invokeAsync(self, ((), context))

    def supportsCompress(self, context: dict[str, str] | None = None) -> bool:
        return MyClass._op_supportsCompress.invoke(self, ((), context))

    def supportsCompressAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return MyClass._op_supportsCompress.invokeAsync(self, ((), context))

    def opVoid(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_opVoid.invoke(self, ((), context))

    def opVoidAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_opVoid.invokeAsync(self, ((), context))

    def opByte(self, p1: int, p2: int, context: dict[str, str] | None = None) -> tuple[int, int]:
        return MyClass._op_opByte.invoke(self, ((p1, p2), context))

    def opByteAsync(self, p1: int, p2: int, context: dict[str, str] | None = None) -> Awaitable[tuple[int, int]]:
        return MyClass._op_opByte.invokeAsync(self, ((p1, p2), context))

    def opBool(self, p1: bool, p2: bool, context: dict[str, str] | None = None) -> tuple[bool, bool]:
        return MyClass._op_opBool.invoke(self, ((p1, p2), context))

    def opBoolAsync(self, p1: bool, p2: bool, context: dict[str, str] | None = None) -> Awaitable[tuple[bool, bool]]:
        return MyClass._op_opBool.invokeAsync(self, ((p1, p2), context))

    def opShortIntLong(self, p1: int, p2: int, p3: int, context: dict[str, str] | None = None) -> tuple[int, int, int, int]:
        return MyClass._op_opShortIntLong.invoke(self, ((p1, p2, p3), context))

    def opShortIntLongAsync(self, p1: int, p2: int, p3: int, context: dict[str, str] | None = None) -> Awaitable[tuple[int, int, int, int]]:
        return MyClass._op_opShortIntLong.invokeAsync(self, ((p1, p2, p3), context))

    def opFloatDouble(self, p1: float, p2: float, context: dict[str, str] | None = None) -> tuple[float, float, float]:
        return MyClass._op_opFloatDouble.invoke(self, ((p1, p2), context))

    def opFloatDoubleAsync(self, p1: float, p2: float, context: dict[str, str] | None = None) -> Awaitable[tuple[float, float, float]]:
        return MyClass._op_opFloatDouble.invokeAsync(self, ((p1, p2), context))

    def opString(self, p1: str, p2: str, context: dict[str, str] | None = None) -> tuple[str, str]:
        return MyClass._op_opString.invoke(self, ((p1, p2), context))

    def opStringAsync(self, p1: str, p2: str, context: dict[str, str] | None = None) -> Awaitable[tuple[str, str]]:
        return MyClass._op_opString.invokeAsync(self, ((p1, p2), context))

    def opMyEnum(self, p1: MyEnum, context: dict[str, str] | None = None) -> tuple[MyEnum, MyEnum]:
        return MyClass._op_opMyEnum.invoke(self, ((p1, ), context))

    def opMyEnumAsync(self, p1: MyEnum, context: dict[str, str] | None = None) -> Awaitable[tuple[MyEnum, MyEnum]]:
        return MyClass._op_opMyEnum.invokeAsync(self, ((p1, ), context))

    def opMyClass(self, p1: MyClassPrx | None, context: dict[str, str] | None = None) -> tuple[MyClassPrx | None, MyClassPrx | None, MyClassPrx | None]:
        return MyClass._op_opMyClass.invoke(self, ((p1, ), context))

    def opMyClassAsync(self, p1: MyClassPrx | None, context: dict[str, str] | None = None) -> Awaitable[tuple[MyClassPrx | None, MyClassPrx | None, MyClassPrx | None]]:
        return MyClass._op_opMyClass.invokeAsync(self, ((p1, ), context))

    def opStruct(self, p1: Structure, p2: Structure, context: dict[str, str] | None = None) -> tuple[Structure, Structure]:
        return MyClass._op_opStruct.invoke(self, ((p1, p2), context))

    def opStructAsync(self, p1: Structure, p2: Structure, context: dict[str, str] | None = None) -> Awaitable[tuple[Structure, Structure]]:
        return MyClass._op_opStruct.invokeAsync(self, ((p1, p2), context))

    def opByteS(self, p1: Sequence[int] | bytes, p2: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opByteS.invoke(self, ((p1, p2), context))

    def opByteSAsync(self, p1: Sequence[int] | bytes, p2: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opByteS.invokeAsync(self, ((p1, p2), context))

    def opBoolS(self, p1: Sequence[bool], p2: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return MyClass._op_opBoolS.invoke(self, ((p1, p2), context))

    def opBoolSAsync(self, p1: Sequence[bool], p2: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return MyClass._op_opBoolS.invokeAsync(self, ((p1, p2), context))

    def opShortIntLongS(self, p1: Sequence[int], p2: Sequence[int], p3: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int], list[int], list[int]]:
        return MyClass._op_opShortIntLongS.invoke(self, ((p1, p2, p3), context))

    def opShortIntLongSAsync(self, p1: Sequence[int], p2: Sequence[int], p3: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int], list[int], list[int]]]:
        return MyClass._op_opShortIntLongS.invokeAsync(self, ((p1, p2, p3), context))

    def opFloatDoubleS(self, p1: Sequence[float], p2: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float], list[float]]:
        return MyClass._op_opFloatDoubleS.invoke(self, ((p1, p2), context))

    def opFloatDoubleSAsync(self, p1: Sequence[float], p2: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float], list[float]]]:
        return MyClass._op_opFloatDoubleS.invokeAsync(self, ((p1, p2), context))

    def opStringS(self, p1: Sequence[str], p2: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return MyClass._op_opStringS.invoke(self, ((p1, p2), context))

    def opStringSAsync(self, p1: Sequence[str], p2: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return MyClass._op_opStringS.invokeAsync(self, ((p1, p2), context))

    def opByteSS(self, p1: Sequence[Sequence[int] | bytes], p2: Sequence[Sequence[int] | bytes], context: dict[str, str] | None = None) -> tuple[list[bytes], list[bytes]]:
        return MyClass._op_opByteSS.invoke(self, ((p1, p2), context))

    def opByteSSAsync(self, p1: Sequence[Sequence[int] | bytes], p2: Sequence[Sequence[int] | bytes], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bytes], list[bytes]]]:
        return MyClass._op_opByteSS.invokeAsync(self, ((p1, p2), context))

    def opBoolSS(self, p1: Sequence[Sequence[bool]], p2: Sequence[Sequence[bool]], context: dict[str, str] | None = None) -> tuple[list[list[bool]], list[list[bool]]]:
        return MyClass._op_opBoolSS.invoke(self, ((p1, p2), context))

    def opBoolSSAsync(self, p1: Sequence[Sequence[bool]], p2: Sequence[Sequence[bool]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[bool]], list[list[bool]]]]:
        return MyClass._op_opBoolSS.invokeAsync(self, ((p1, p2), context))

    def opShortIntLongSS(self, p1: Sequence[Sequence[int]], p2: Sequence[Sequence[int]], p3: Sequence[Sequence[int]], context: dict[str, str] | None = None) -> tuple[list[list[int]], list[list[int]], list[list[int]], list[list[int]]]:
        return MyClass._op_opShortIntLongSS.invoke(self, ((p1, p2, p3), context))

    def opShortIntLongSSAsync(self, p1: Sequence[Sequence[int]], p2: Sequence[Sequence[int]], p3: Sequence[Sequence[int]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[int]], list[list[int]], list[list[int]], list[list[int]]]]:
        return MyClass._op_opShortIntLongSS.invokeAsync(self, ((p1, p2, p3), context))

    def opFloatDoubleSS(self, p1: Sequence[Sequence[float]], p2: Sequence[Sequence[float]], context: dict[str, str] | None = None) -> tuple[list[list[float]], list[list[float]], list[list[float]]]:
        return MyClass._op_opFloatDoubleSS.invoke(self, ((p1, p2), context))

    def opFloatDoubleSSAsync(self, p1: Sequence[Sequence[float]], p2: Sequence[Sequence[float]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[float]], list[list[float]], list[list[float]]]]:
        return MyClass._op_opFloatDoubleSS.invokeAsync(self, ((p1, p2), context))

    def opStringSS(self, p1: Sequence[Sequence[str]], p2: Sequence[Sequence[str]], context: dict[str, str] | None = None) -> tuple[list[list[str]], list[list[str]]]:
        return MyClass._op_opStringSS.invoke(self, ((p1, p2), context))

    def opStringSSAsync(self, p1: Sequence[Sequence[str]], p2: Sequence[Sequence[str]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[str]], list[list[str]]]]:
        return MyClass._op_opStringSS.invokeAsync(self, ((p1, p2), context))

    def opStringSSS(self, p1: Sequence[Sequence[Sequence[str]]], p2: Sequence[Sequence[Sequence[str]]], context: dict[str, str] | None = None) -> tuple[list[list[list[str]]], list[list[list[str]]]]:
        return MyClass._op_opStringSSS.invoke(self, ((p1, p2), context))

    def opStringSSSAsync(self, p1: Sequence[Sequence[Sequence[str]]], p2: Sequence[Sequence[Sequence[str]]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[list[str]]], list[list[list[str]]]]]:
        return MyClass._op_opStringSSS.invokeAsync(self, ((p1, p2), context))

    def opByteBoolD(self, p1: Mapping[int, bool], p2: Mapping[int, bool], context: dict[str, str] | None = None) -> tuple[dict[int, bool], dict[int, bool]]:
        return MyClass._op_opByteBoolD.invoke(self, ((p1, p2), context))

    def opByteBoolDAsync(self, p1: Mapping[int, bool], p2: Mapping[int, bool], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, bool], dict[int, bool]]]:
        return MyClass._op_opByteBoolD.invokeAsync(self, ((p1, p2), context))

    def opShortIntD(self, p1: Mapping[int, int], p2: Mapping[int, int], context: dict[str, str] | None = None) -> tuple[dict[int, int], dict[int, int]]:
        return MyClass._op_opShortIntD.invoke(self, ((p1, p2), context))

    def opShortIntDAsync(self, p1: Mapping[int, int], p2: Mapping[int, int], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, int], dict[int, int]]]:
        return MyClass._op_opShortIntD.invokeAsync(self, ((p1, p2), context))

    def opLongFloatD(self, p1: Mapping[int, float], p2: Mapping[int, float], context: dict[str, str] | None = None) -> tuple[dict[int, float], dict[int, float]]:
        return MyClass._op_opLongFloatD.invoke(self, ((p1, p2), context))

    def opLongFloatDAsync(self, p1: Mapping[int, float], p2: Mapping[int, float], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, float], dict[int, float]]]:
        return MyClass._op_opLongFloatD.invokeAsync(self, ((p1, p2), context))

    def opStringStringD(self, p1: Mapping[str, str], p2: Mapping[str, str], context: dict[str, str] | None = None) -> tuple[dict[str, str], dict[str, str]]:
        return MyClass._op_opStringStringD.invoke(self, ((p1, p2), context))

    def opStringStringDAsync(self, p1: Mapping[str, str], p2: Mapping[str, str], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, str], dict[str, str]]]:
        return MyClass._op_opStringStringD.invokeAsync(self, ((p1, p2), context))

    def opStringMyEnumD(self, p1: Mapping[str, MyEnum], p2: Mapping[str, MyEnum], context: dict[str, str] | None = None) -> tuple[dict[str, MyEnum], dict[str, MyEnum]]:
        return MyClass._op_opStringMyEnumD.invoke(self, ((p1, p2), context))

    def opStringMyEnumDAsync(self, p1: Mapping[str, MyEnum], p2: Mapping[str, MyEnum], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, MyEnum], dict[str, MyEnum]]]:
        return MyClass._op_opStringMyEnumD.invokeAsync(self, ((p1, p2), context))

    def opMyEnumStringD(self, p1: Mapping[MyEnum, str], p2: Mapping[MyEnum, str], context: dict[str, str] | None = None) -> tuple[dict[MyEnum, str], dict[MyEnum, str]]:
        return MyClass._op_opMyEnumStringD.invoke(self, ((p1, p2), context))

    def opMyEnumStringDAsync(self, p1: Mapping[MyEnum, str], p2: Mapping[MyEnum, str], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[MyEnum, str], dict[MyEnum, str]]]:
        return MyClass._op_opMyEnumStringD.invokeAsync(self, ((p1, p2), context))

    def opMyStructMyEnumD(self, p1: Mapping[MyStruct, MyEnum], p2: Mapping[MyStruct, MyEnum], context: dict[str, str] | None = None) -> tuple[dict[MyStruct, MyEnum], dict[MyStruct, MyEnum]]:
        return MyClass._op_opMyStructMyEnumD.invoke(self, ((p1, p2), context))

    def opMyStructMyEnumDAsync(self, p1: Mapping[MyStruct, MyEnum], p2: Mapping[MyStruct, MyEnum], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[MyStruct, MyEnum], dict[MyStruct, MyEnum]]]:
        return MyClass._op_opMyStructMyEnumD.invokeAsync(self, ((p1, p2), context))

    def opByteBoolDS(self, p1: Sequence[Mapping[int, bool]], p2: Sequence[Mapping[int, bool]], context: dict[str, str] | None = None) -> tuple[list[dict[int, bool]], list[dict[int, bool]]]:
        return MyClass._op_opByteBoolDS.invoke(self, ((p1, p2), context))

    def opByteBoolDSAsync(self, p1: Sequence[Mapping[int, bool]], p2: Sequence[Mapping[int, bool]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[int, bool]], list[dict[int, bool]]]]:
        return MyClass._op_opByteBoolDS.invokeAsync(self, ((p1, p2), context))

    def opShortIntDS(self, p1: Sequence[Mapping[int, int]], p2: Sequence[Mapping[int, int]], context: dict[str, str] | None = None) -> tuple[list[dict[int, int]], list[dict[int, int]]]:
        return MyClass._op_opShortIntDS.invoke(self, ((p1, p2), context))

    def opShortIntDSAsync(self, p1: Sequence[Mapping[int, int]], p2: Sequence[Mapping[int, int]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[int, int]], list[dict[int, int]]]]:
        return MyClass._op_opShortIntDS.invokeAsync(self, ((p1, p2), context))

    def opLongFloatDS(self, p1: Sequence[Mapping[int, float]], p2: Sequence[Mapping[int, float]], context: dict[str, str] | None = None) -> tuple[list[dict[int, float]], list[dict[int, float]]]:
        return MyClass._op_opLongFloatDS.invoke(self, ((p1, p2), context))

    def opLongFloatDSAsync(self, p1: Sequence[Mapping[int, float]], p2: Sequence[Mapping[int, float]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[int, float]], list[dict[int, float]]]]:
        return MyClass._op_opLongFloatDS.invokeAsync(self, ((p1, p2), context))

    def opStringStringDS(self, p1: Sequence[Mapping[str, str]], p2: Sequence[Mapping[str, str]], context: dict[str, str] | None = None) -> tuple[list[dict[str, str]], list[dict[str, str]]]:
        return MyClass._op_opStringStringDS.invoke(self, ((p1, p2), context))

    def opStringStringDSAsync(self, p1: Sequence[Mapping[str, str]], p2: Sequence[Mapping[str, str]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[str, str]], list[dict[str, str]]]]:
        return MyClass._op_opStringStringDS.invokeAsync(self, ((p1, p2), context))

    def opStringMyEnumDS(self, p1: Sequence[Mapping[str, MyEnum]], p2: Sequence[Mapping[str, MyEnum]], context: dict[str, str] | None = None) -> tuple[list[dict[str, MyEnum]], list[dict[str, MyEnum]]]:
        return MyClass._op_opStringMyEnumDS.invoke(self, ((p1, p2), context))

    def opStringMyEnumDSAsync(self, p1: Sequence[Mapping[str, MyEnum]], p2: Sequence[Mapping[str, MyEnum]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[str, MyEnum]], list[dict[str, MyEnum]]]]:
        return MyClass._op_opStringMyEnumDS.invokeAsync(self, ((p1, p2), context))

    def opMyEnumStringDS(self, p1: Sequence[Mapping[MyEnum, str]], p2: Sequence[Mapping[MyEnum, str]], context: dict[str, str] | None = None) -> tuple[list[dict[MyEnum, str]], list[dict[MyEnum, str]]]:
        return MyClass._op_opMyEnumStringDS.invoke(self, ((p1, p2), context))

    def opMyEnumStringDSAsync(self, p1: Sequence[Mapping[MyEnum, str]], p2: Sequence[Mapping[MyEnum, str]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[MyEnum, str]], list[dict[MyEnum, str]]]]:
        return MyClass._op_opMyEnumStringDS.invokeAsync(self, ((p1, p2), context))

    def opMyStructMyEnumDS(self, p1: Sequence[Mapping[MyStruct, MyEnum]], p2: Sequence[Mapping[MyStruct, MyEnum]], context: dict[str, str] | None = None) -> tuple[list[dict[MyStruct, MyEnum]], list[dict[MyStruct, MyEnum]]]:
        return MyClass._op_opMyStructMyEnumDS.invoke(self, ((p1, p2), context))

    def opMyStructMyEnumDSAsync(self, p1: Sequence[Mapping[MyStruct, MyEnum]], p2: Sequence[Mapping[MyStruct, MyEnum]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[MyStruct, MyEnum]], list[dict[MyStruct, MyEnum]]]]:
        return MyClass._op_opMyStructMyEnumDS.invokeAsync(self, ((p1, p2), context))

    def opByteByteSD(self, p1: Mapping[int, Sequence[int] | bytes], p2: Mapping[int, Sequence[int] | bytes], context: dict[str, str] | None = None) -> tuple[dict[int, bytes], dict[int, bytes]]:
        return MyClass._op_opByteByteSD.invoke(self, ((p1, p2), context))

    def opByteByteSDAsync(self, p1: Mapping[int, Sequence[int] | bytes], p2: Mapping[int, Sequence[int] | bytes], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, bytes], dict[int, bytes]]]:
        return MyClass._op_opByteByteSD.invokeAsync(self, ((p1, p2), context))

    def opBoolBoolSD(self, p1: Mapping[bool, Sequence[bool]], p2: Mapping[bool, Sequence[bool]], context: dict[str, str] | None = None) -> tuple[dict[bool, list[bool]], dict[bool, list[bool]]]:
        return MyClass._op_opBoolBoolSD.invoke(self, ((p1, p2), context))

    def opBoolBoolSDAsync(self, p1: Mapping[bool, Sequence[bool]], p2: Mapping[bool, Sequence[bool]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[bool, list[bool]], dict[bool, list[bool]]]]:
        return MyClass._op_opBoolBoolSD.invokeAsync(self, ((p1, p2), context))

    def opShortShortSD(self, p1: Mapping[int, Sequence[int]], p2: Mapping[int, Sequence[int]], context: dict[str, str] | None = None) -> tuple[dict[int, list[int]], dict[int, list[int]]]:
        return MyClass._op_opShortShortSD.invoke(self, ((p1, p2), context))

    def opShortShortSDAsync(self, p1: Mapping[int, Sequence[int]], p2: Mapping[int, Sequence[int]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, list[int]], dict[int, list[int]]]]:
        return MyClass._op_opShortShortSD.invokeAsync(self, ((p1, p2), context))

    def opIntIntSD(self, p1: Mapping[int, Sequence[int]], p2: Mapping[int, Sequence[int]], context: dict[str, str] | None = None) -> tuple[dict[int, list[int]], dict[int, list[int]]]:
        return MyClass._op_opIntIntSD.invoke(self, ((p1, p2), context))

    def opIntIntSDAsync(self, p1: Mapping[int, Sequence[int]], p2: Mapping[int, Sequence[int]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, list[int]], dict[int, list[int]]]]:
        return MyClass._op_opIntIntSD.invokeAsync(self, ((p1, p2), context))

    def opLongLongSD(self, p1: Mapping[int, Sequence[int]], p2: Mapping[int, Sequence[int]], context: dict[str, str] | None = None) -> tuple[dict[int, list[int]], dict[int, list[int]]]:
        return MyClass._op_opLongLongSD.invoke(self, ((p1, p2), context))

    def opLongLongSDAsync(self, p1: Mapping[int, Sequence[int]], p2: Mapping[int, Sequence[int]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, list[int]], dict[int, list[int]]]]:
        return MyClass._op_opLongLongSD.invokeAsync(self, ((p1, p2), context))

    def opStringFloatSD(self, p1: Mapping[str, Sequence[float]], p2: Mapping[str, Sequence[float]], context: dict[str, str] | None = None) -> tuple[dict[str, list[float]], dict[str, list[float]]]:
        return MyClass._op_opStringFloatSD.invoke(self, ((p1, p2), context))

    def opStringFloatSDAsync(self, p1: Mapping[str, Sequence[float]], p2: Mapping[str, Sequence[float]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, list[float]], dict[str, list[float]]]]:
        return MyClass._op_opStringFloatSD.invokeAsync(self, ((p1, p2), context))

    def opStringDoubleSD(self, p1: Mapping[str, Sequence[float]], p2: Mapping[str, Sequence[float]], context: dict[str, str] | None = None) -> tuple[dict[str, list[float]], dict[str, list[float]]]:
        return MyClass._op_opStringDoubleSD.invoke(self, ((p1, p2), context))

    def opStringDoubleSDAsync(self, p1: Mapping[str, Sequence[float]], p2: Mapping[str, Sequence[float]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, list[float]], dict[str, list[float]]]]:
        return MyClass._op_opStringDoubleSD.invokeAsync(self, ((p1, p2), context))

    def opStringStringSD(self, p1: Mapping[str, Sequence[str]], p2: Mapping[str, Sequence[str]], context: dict[str, str] | None = None) -> tuple[dict[str, list[str]], dict[str, list[str]]]:
        return MyClass._op_opStringStringSD.invoke(self, ((p1, p2), context))

    def opStringStringSDAsync(self, p1: Mapping[str, Sequence[str]], p2: Mapping[str, Sequence[str]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, list[str]], dict[str, list[str]]]]:
        return MyClass._op_opStringStringSD.invokeAsync(self, ((p1, p2), context))

    def opMyEnumMyEnumSD(self, p1: Mapping[MyEnum, Sequence[MyEnum]], p2: Mapping[MyEnum, Sequence[MyEnum]], context: dict[str, str] | None = None) -> tuple[dict[MyEnum, list[MyEnum]], dict[MyEnum, list[MyEnum]]]:
        return MyClass._op_opMyEnumMyEnumSD.invoke(self, ((p1, p2), context))

    def opMyEnumMyEnumSDAsync(self, p1: Mapping[MyEnum, Sequence[MyEnum]], p2: Mapping[MyEnum, Sequence[MyEnum]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[MyEnum, list[MyEnum]], dict[MyEnum, list[MyEnum]]]]:
        return MyClass._op_opMyEnumMyEnumSD.invokeAsync(self, ((p1, p2), context))

    def opIntS(self, s: Sequence[int], context: dict[str, str] | None = None) -> list[int]:
        return MyClass._op_opIntS.invoke(self, ((s, ), context))

    def opIntSAsync(self, s: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[list[int]]:
        return MyClass._op_opIntS.invokeAsync(self, ((s, ), context))

    def opByteSOneway(self, s: Sequence[int] | bytes, context: dict[str, str] | None = None) -> None:
        return MyClass._op_opByteSOneway.invoke(self, ((s, ), context))

    def opByteSOnewayAsync(self, s: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_opByteSOneway.invokeAsync(self, ((s, ), context))

    def opByteSOnewayCallCount(self, context: dict[str, str] | None = None) -> int:
        return MyClass._op_opByteSOnewayCallCount.invoke(self, ((), context))

    def opByteSOnewayCallCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_opByteSOnewayCallCount.invokeAsync(self, ((), context))

    def opContext(self, context: dict[str, str] | None = None) -> dict[str, str]:
        return MyClass._op_opContext.invoke(self, ((), context))

    def opContextAsync(self, context: dict[str, str] | None = None) -> Awaitable[dict[str, str]]:
        return MyClass._op_opContext.invokeAsync(self, ((), context))

    def opDoubleMarshaling(self, p1: float, p2: Sequence[float], context: dict[str, str] | None = None) -> None:
        return MyClass._op_opDoubleMarshaling.invoke(self, ((p1, p2), context))

    def opDoubleMarshalingAsync(self, p1: float, p2: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_opDoubleMarshaling.invokeAsync(self, ((p1, p2), context))

    def opIdempotent(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_opIdempotent.invoke(self, ((), context))

    def opIdempotentAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_opIdempotent.invokeAsync(self, ((), context))

    def opByte1(self, opByte1: int, context: dict[str, str] | None = None) -> int:
        return MyClass._op_opByte1.invoke(self, ((opByte1, ), context))

    def opByte1Async(self, opByte1: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_opByte1.invokeAsync(self, ((opByte1, ), context))

    def opShort1(self, opShort1: int, context: dict[str, str] | None = None) -> int:
        return MyClass._op_opShort1.invoke(self, ((opShort1, ), context))

    def opShort1Async(self, opShort1: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_opShort1.invokeAsync(self, ((opShort1, ), context))

    def opInt1(self, opInt1: int, context: dict[str, str] | None = None) -> int:
        return MyClass._op_opInt1.invoke(self, ((opInt1, ), context))

    def opInt1Async(self, opInt1: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_opInt1.invokeAsync(self, ((opInt1, ), context))

    def opLong1(self, opLong1: int, context: dict[str, str] | None = None) -> int:
        return MyClass._op_opLong1.invoke(self, ((opLong1, ), context))

    def opLong1Async(self, opLong1: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_opLong1.invokeAsync(self, ((opLong1, ), context))

    def opFloat1(self, opFloat1: float, context: dict[str, str] | None = None) -> float:
        return MyClass._op_opFloat1.invoke(self, ((opFloat1, ), context))

    def opFloat1Async(self, opFloat1: float, context: dict[str, str] | None = None) -> Awaitable[float]:
        return MyClass._op_opFloat1.invokeAsync(self, ((opFloat1, ), context))

    def opDouble1(self, opDouble1: float, context: dict[str, str] | None = None) -> float:
        return MyClass._op_opDouble1.invoke(self, ((opDouble1, ), context))

    def opDouble1Async(self, opDouble1: float, context: dict[str, str] | None = None) -> Awaitable[float]:
        return MyClass._op_opDouble1.invokeAsync(self, ((opDouble1, ), context))

    def opString1(self, opString1: str, context: dict[str, str] | None = None) -> str:
        return MyClass._op_opString1.invoke(self, ((opString1, ), context))

    def opString1Async(self, opString1: str, context: dict[str, str] | None = None) -> Awaitable[str]:
        return MyClass._op_opString1.invokeAsync(self, ((opString1, ), context))

    def opStringS1(self, opStringS1: Sequence[str], context: dict[str, str] | None = None) -> list[str]:
        return MyClass._op_opStringS1.invoke(self, ((opStringS1, ), context))

    def opStringS1Async(self, opStringS1: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        return MyClass._op_opStringS1.invokeAsync(self, ((opStringS1, ), context))

    def opByteBoolD1(self, opByteBoolD1: Mapping[int, bool], context: dict[str, str] | None = None) -> dict[int, bool]:
        return MyClass._op_opByteBoolD1.invoke(self, ((opByteBoolD1, ), context))

    def opByteBoolD1Async(self, opByteBoolD1: Mapping[int, bool], context: dict[str, str] | None = None) -> Awaitable[dict[int, bool]]:
        return MyClass._op_opByteBoolD1.invokeAsync(self, ((opByteBoolD1, ), context))

    def opStringS2(self, stringS: Sequence[str], context: dict[str, str] | None = None) -> list[str]:
        return MyClass._op_opStringS2.invoke(self, ((stringS, ), context))

    def opStringS2Async(self, stringS: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        return MyClass._op_opStringS2.invokeAsync(self, ((stringS, ), context))

    def opByteBoolD2(self, byteBoolD: Mapping[int, bool], context: dict[str, str] | None = None) -> dict[int, bool]:
        return MyClass._op_opByteBoolD2.invoke(self, ((byteBoolD, ), context))

    def opByteBoolD2Async(self, byteBoolD: Mapping[int, bool], context: dict[str, str] | None = None) -> Awaitable[dict[int, bool]]:
        return MyClass._op_opByteBoolD2.invokeAsync(self, ((byteBoolD, ), context))

    def opStringLiterals(self, context: dict[str, str] | None = None) -> list[str]:
        return MyClass._op_opStringLiterals.invoke(self, ((), context))

    def opStringLiteralsAsync(self, context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        return MyClass._op_opStringLiterals.invokeAsync(self, ((), context))

    def opWStringLiterals(self, context: dict[str, str] | None = None) -> list[str]:
        return MyClass._op_opWStringLiterals.invoke(self, ((), context))

    def opWStringLiteralsAsync(self, context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        return MyClass._op_opWStringLiterals.invokeAsync(self, ((), context))

    def opMStruct1(self, context: dict[str, str] | None = None) -> Structure:
        return MyClass._op_opMStruct1.invoke(self, ((), context))

    def opMStruct1Async(self, context: dict[str, str] | None = None) -> Awaitable[Structure]:
        return MyClass._op_opMStruct1.invokeAsync(self, ((), context))

    def opMStruct2(self, p1: Structure, context: dict[str, str] | None = None) -> tuple[Structure, Structure]:
        return MyClass._op_opMStruct2.invoke(self, ((p1, ), context))

    def opMStruct2Async(self, p1: Structure, context: dict[str, str] | None = None) -> Awaitable[tuple[Structure, Structure]]:
        return MyClass._op_opMStruct2.invokeAsync(self, ((p1, ), context))

    def opMSeq1(self, context: dict[str, str] | None = None) -> list[str]:
        return MyClass._op_opMSeq1.invoke(self, ((), context))

    def opMSeq1Async(self, context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        return MyClass._op_opMSeq1.invokeAsync(self, ((), context))

    def opMSeq2(self, p1: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return MyClass._op_opMSeq2.invoke(self, ((p1, ), context))

    def opMSeq2Async(self, p1: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return MyClass._op_opMSeq2.invokeAsync(self, ((p1, ), context))

    def opMDict1(self, context: dict[str, str] | None = None) -> dict[str, str]:
        return MyClass._op_opMDict1.invoke(self, ((), context))

    def opMDict1Async(self, context: dict[str, str] | None = None) -> Awaitable[dict[str, str]]:
        return MyClass._op_opMDict1.invokeAsync(self, ((), context))

    def opMDict2(self, p1: Mapping[str, str], context: dict[str, str] | None = None) -> tuple[dict[str, str], dict[str, str]]:
        return MyClass._op_opMDict2.invoke(self, ((p1, ), context))

    def opMDict2Async(self, p1: Mapping[str, str], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, str], dict[str, str]]]:
        return MyClass._op_opMDict2.invokeAsync(self, ((p1, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyClassPrx | None:
        return checkedCast(MyClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyClassPrx | None ]:
        return checkedCastAsync(MyClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyClassPrx | None:
        return uncheckedCast(MyClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

IcePy.defineProxy("::Test::MyClass", MyClassPrx)

class MyClass(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyClass", )
    _op_shutdown: IcePy.Operation
    _op_supportsCompress: IcePy.Operation
    _op_opVoid: IcePy.Operation
    _op_opByte: IcePy.Operation
    _op_opBool: IcePy.Operation
    _op_opShortIntLong: IcePy.Operation
    _op_opFloatDouble: IcePy.Operation
    _op_opString: IcePy.Operation
    _op_opMyEnum: IcePy.Operation
    _op_opMyClass: IcePy.Operation
    _op_opStruct: IcePy.Operation
    _op_opByteS: IcePy.Operation
    _op_opBoolS: IcePy.Operation
    _op_opShortIntLongS: IcePy.Operation
    _op_opFloatDoubleS: IcePy.Operation
    _op_opStringS: IcePy.Operation
    _op_opByteSS: IcePy.Operation
    _op_opBoolSS: IcePy.Operation
    _op_opShortIntLongSS: IcePy.Operation
    _op_opFloatDoubleSS: IcePy.Operation
    _op_opStringSS: IcePy.Operation
    _op_opStringSSS: IcePy.Operation
    _op_opByteBoolD: IcePy.Operation
    _op_opShortIntD: IcePy.Operation
    _op_opLongFloatD: IcePy.Operation
    _op_opStringStringD: IcePy.Operation
    _op_opStringMyEnumD: IcePy.Operation
    _op_opMyEnumStringD: IcePy.Operation
    _op_opMyStructMyEnumD: IcePy.Operation
    _op_opByteBoolDS: IcePy.Operation
    _op_opShortIntDS: IcePy.Operation
    _op_opLongFloatDS: IcePy.Operation
    _op_opStringStringDS: IcePy.Operation
    _op_opStringMyEnumDS: IcePy.Operation
    _op_opMyEnumStringDS: IcePy.Operation
    _op_opMyStructMyEnumDS: IcePy.Operation
    _op_opByteByteSD: IcePy.Operation
    _op_opBoolBoolSD: IcePy.Operation
    _op_opShortShortSD: IcePy.Operation
    _op_opIntIntSD: IcePy.Operation
    _op_opLongLongSD: IcePy.Operation
    _op_opStringFloatSD: IcePy.Operation
    _op_opStringDoubleSD: IcePy.Operation
    _op_opStringStringSD: IcePy.Operation
    _op_opMyEnumMyEnumSD: IcePy.Operation
    _op_opIntS: IcePy.Operation
    _op_opByteSOneway: IcePy.Operation
    _op_opByteSOnewayCallCount: IcePy.Operation
    _op_opContext: IcePy.Operation
    _op_opDoubleMarshaling: IcePy.Operation
    _op_opIdempotent: IcePy.Operation
    _op_opByte1: IcePy.Operation
    _op_opShort1: IcePy.Operation
    _op_opInt1: IcePy.Operation
    _op_opLong1: IcePy.Operation
    _op_opFloat1: IcePy.Operation
    _op_opDouble1: IcePy.Operation
    _op_opString1: IcePy.Operation
    _op_opStringS1: IcePy.Operation
    _op_opByteBoolD1: IcePy.Operation
    _op_opStringS2: IcePy.Operation
    _op_opByteBoolD2: IcePy.Operation
    _op_opStringLiterals: IcePy.Operation
    _op_opWStringLiterals: IcePy.Operation
    _op_opMStruct1: IcePy.Operation
    _op_opMStruct2: IcePy.Operation
    _op_opMSeq1: IcePy.Operation
    _op_opMSeq2: IcePy.Operation
    _op_opMDict1: IcePy.Operation
    _op_opMDict2: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def supportsCompress(self, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def opVoid(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opByte(self, p1: int, p2: int, current: Current) -> tuple[int, int] | Awaitable[tuple[int, int]]:
        pass

    @abstractmethod
    def opBool(self, p1: bool, p2: bool, current: Current) -> tuple[bool, bool] | Awaitable[tuple[bool, bool]]:
        pass

    @abstractmethod
    def opShortIntLong(self, p1: int, p2: int, p3: int, current: Current) -> tuple[int, int, int, int] | Awaitable[tuple[int, int, int, int]]:
        pass

    @abstractmethod
    def opFloatDouble(self, p1: float, p2: float, current: Current) -> tuple[float, float, float] | Awaitable[tuple[float, float, float]]:
        pass

    @abstractmethod
    def opString(self, p1: str, p2: str, current: Current) -> tuple[str, str] | Awaitable[tuple[str, str]]:
        pass

    @abstractmethod
    def opMyEnum(self, p1: MyEnum, current: Current) -> tuple[MyEnum, MyEnum] | Awaitable[tuple[MyEnum, MyEnum]]:
        pass

    @abstractmethod
    def opMyClass(self, p1: MyClassPrx | None, current: Current) -> tuple[MyClassPrx | None, MyClassPrx | None, MyClassPrx | None] | Awaitable[tuple[MyClassPrx | None, MyClassPrx | None, MyClassPrx | None]]:
        pass

    @abstractmethod
    def opStruct(self, p1: Structure, p2: Structure, current: Current) -> tuple[Structure, Structure] | Awaitable[tuple[Structure, Structure]]:
        pass

    @abstractmethod
    def opByteS(self, p1: bytes, p2: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opBoolS(self, p1: list[bool], p2: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opShortIntLongS(self, p1: list[int], p2: list[int], p3: list[int], current: Current) -> tuple[Sequence[int], Sequence[int], Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int], Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opFloatDoubleS(self, p1: list[float], p2: list[float], current: Current) -> tuple[Sequence[float], Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opStringS(self, p1: list[str], p2: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opByteSS(self, p1: list[bytes], p2: list[bytes], current: Current) -> tuple[Sequence[Sequence[int] | bytes], Sequence[Sequence[int] | bytes]] | Awaitable[tuple[Sequence[Sequence[int] | bytes], Sequence[Sequence[int] | bytes]]]:
        pass

    @abstractmethod
    def opBoolSS(self, p1: list[list[bool]], p2: list[list[bool]], current: Current) -> tuple[Sequence[Sequence[bool]], Sequence[Sequence[bool]]] | Awaitable[tuple[Sequence[Sequence[bool]], Sequence[Sequence[bool]]]]:
        pass

    @abstractmethod
    def opShortIntLongSS(self, p1: list[list[int]], p2: list[list[int]], p3: list[list[int]], current: Current) -> tuple[Sequence[Sequence[int]], Sequence[Sequence[int]], Sequence[Sequence[int]], Sequence[Sequence[int]]] | Awaitable[tuple[Sequence[Sequence[int]], Sequence[Sequence[int]], Sequence[Sequence[int]], Sequence[Sequence[int]]]]:
        pass

    @abstractmethod
    def opFloatDoubleSS(self, p1: list[list[float]], p2: list[list[float]], current: Current) -> tuple[Sequence[Sequence[float]], Sequence[Sequence[float]], Sequence[Sequence[float]]] | Awaitable[tuple[Sequence[Sequence[float]], Sequence[Sequence[float]], Sequence[Sequence[float]]]]:
        pass

    @abstractmethod
    def opStringSS(self, p1: list[list[str]], p2: list[list[str]], current: Current) -> tuple[Sequence[Sequence[str]], Sequence[Sequence[str]]] | Awaitable[tuple[Sequence[Sequence[str]], Sequence[Sequence[str]]]]:
        pass

    @abstractmethod
    def opStringSSS(self, p1: list[list[list[str]]], p2: list[list[list[str]]], current: Current) -> tuple[Sequence[Sequence[Sequence[str]]], Sequence[Sequence[Sequence[str]]]] | Awaitable[tuple[Sequence[Sequence[Sequence[str]]], Sequence[Sequence[Sequence[str]]]]]:
        pass

    @abstractmethod
    def opByteBoolD(self, p1: dict[int, bool], p2: dict[int, bool], current: Current) -> tuple[Mapping[int, bool], Mapping[int, bool]] | Awaitable[tuple[Mapping[int, bool], Mapping[int, bool]]]:
        pass

    @abstractmethod
    def opShortIntD(self, p1: dict[int, int], p2: dict[int, int], current: Current) -> tuple[Mapping[int, int], Mapping[int, int]] | Awaitable[tuple[Mapping[int, int], Mapping[int, int]]]:
        pass

    @abstractmethod
    def opLongFloatD(self, p1: dict[int, float], p2: dict[int, float], current: Current) -> tuple[Mapping[int, float], Mapping[int, float]] | Awaitable[tuple[Mapping[int, float], Mapping[int, float]]]:
        pass

    @abstractmethod
    def opStringStringD(self, p1: dict[str, str], p2: dict[str, str], current: Current) -> tuple[Mapping[str, str], Mapping[str, str]] | Awaitable[tuple[Mapping[str, str], Mapping[str, str]]]:
        pass

    @abstractmethod
    def opStringMyEnumD(self, p1: dict[str, MyEnum], p2: dict[str, MyEnum], current: Current) -> tuple[Mapping[str, MyEnum], Mapping[str, MyEnum]] | Awaitable[tuple[Mapping[str, MyEnum], Mapping[str, MyEnum]]]:
        pass

    @abstractmethod
    def opMyEnumStringD(self, p1: dict[MyEnum, str], p2: dict[MyEnum, str], current: Current) -> tuple[Mapping[MyEnum, str], Mapping[MyEnum, str]] | Awaitable[tuple[Mapping[MyEnum, str], Mapping[MyEnum, str]]]:
        pass

    @abstractmethod
    def opMyStructMyEnumD(self, p1: dict[MyStruct, MyEnum], p2: dict[MyStruct, MyEnum], current: Current) -> tuple[Mapping[MyStruct, MyEnum], Mapping[MyStruct, MyEnum]] | Awaitable[tuple[Mapping[MyStruct, MyEnum], Mapping[MyStruct, MyEnum]]]:
        pass

    @abstractmethod
    def opByteBoolDS(self, p1: list[dict[int, bool]], p2: list[dict[int, bool]], current: Current) -> tuple[Sequence[Mapping[int, bool]], Sequence[Mapping[int, bool]]] | Awaitable[tuple[Sequence[Mapping[int, bool]], Sequence[Mapping[int, bool]]]]:
        pass

    @abstractmethod
    def opShortIntDS(self, p1: list[dict[int, int]], p2: list[dict[int, int]], current: Current) -> tuple[Sequence[Mapping[int, int]], Sequence[Mapping[int, int]]] | Awaitable[tuple[Sequence[Mapping[int, int]], Sequence[Mapping[int, int]]]]:
        pass

    @abstractmethod
    def opLongFloatDS(self, p1: list[dict[int, float]], p2: list[dict[int, float]], current: Current) -> tuple[Sequence[Mapping[int, float]], Sequence[Mapping[int, float]]] | Awaitable[tuple[Sequence[Mapping[int, float]], Sequence[Mapping[int, float]]]]:
        pass

    @abstractmethod
    def opStringStringDS(self, p1: list[dict[str, str]], p2: list[dict[str, str]], current: Current) -> tuple[Sequence[Mapping[str, str]], Sequence[Mapping[str, str]]] | Awaitable[tuple[Sequence[Mapping[str, str]], Sequence[Mapping[str, str]]]]:
        pass

    @abstractmethod
    def opStringMyEnumDS(self, p1: list[dict[str, MyEnum]], p2: list[dict[str, MyEnum]], current: Current) -> tuple[Sequence[Mapping[str, MyEnum]], Sequence[Mapping[str, MyEnum]]] | Awaitable[tuple[Sequence[Mapping[str, MyEnum]], Sequence[Mapping[str, MyEnum]]]]:
        pass

    @abstractmethod
    def opMyEnumStringDS(self, p1: list[dict[MyEnum, str]], p2: list[dict[MyEnum, str]], current: Current) -> tuple[Sequence[Mapping[MyEnum, str]], Sequence[Mapping[MyEnum, str]]] | Awaitable[tuple[Sequence[Mapping[MyEnum, str]], Sequence[Mapping[MyEnum, str]]]]:
        pass

    @abstractmethod
    def opMyStructMyEnumDS(self, p1: list[dict[MyStruct, MyEnum]], p2: list[dict[MyStruct, MyEnum]], current: Current) -> tuple[Sequence[Mapping[MyStruct, MyEnum]], Sequence[Mapping[MyStruct, MyEnum]]] | Awaitable[tuple[Sequence[Mapping[MyStruct, MyEnum]], Sequence[Mapping[MyStruct, MyEnum]]]]:
        pass

    @abstractmethod
    def opByteByteSD(self, p1: dict[int, bytes], p2: dict[int, bytes], current: Current) -> tuple[Mapping[int, Sequence[int] | bytes], Mapping[int, Sequence[int] | bytes]] | Awaitable[tuple[Mapping[int, Sequence[int] | bytes], Mapping[int, Sequence[int] | bytes]]]:
        pass

    @abstractmethod
    def opBoolBoolSD(self, p1: dict[bool, list[bool]], p2: dict[bool, list[bool]], current: Current) -> tuple[Mapping[bool, Sequence[bool]], Mapping[bool, Sequence[bool]]] | Awaitable[tuple[Mapping[bool, Sequence[bool]], Mapping[bool, Sequence[bool]]]]:
        pass

    @abstractmethod
    def opShortShortSD(self, p1: dict[int, list[int]], p2: dict[int, list[int]], current: Current) -> tuple[Mapping[int, Sequence[int]], Mapping[int, Sequence[int]]] | Awaitable[tuple[Mapping[int, Sequence[int]], Mapping[int, Sequence[int]]]]:
        pass

    @abstractmethod
    def opIntIntSD(self, p1: dict[int, list[int]], p2: dict[int, list[int]], current: Current) -> tuple[Mapping[int, Sequence[int]], Mapping[int, Sequence[int]]] | Awaitable[tuple[Mapping[int, Sequence[int]], Mapping[int, Sequence[int]]]]:
        pass

    @abstractmethod
    def opLongLongSD(self, p1: dict[int, list[int]], p2: dict[int, list[int]], current: Current) -> tuple[Mapping[int, Sequence[int]], Mapping[int, Sequence[int]]] | Awaitable[tuple[Mapping[int, Sequence[int]], Mapping[int, Sequence[int]]]]:
        pass

    @abstractmethod
    def opStringFloatSD(self, p1: dict[str, list[float]], p2: dict[str, list[float]], current: Current) -> tuple[Mapping[str, Sequence[float]], Mapping[str, Sequence[float]]] | Awaitable[tuple[Mapping[str, Sequence[float]], Mapping[str, Sequence[float]]]]:
        pass

    @abstractmethod
    def opStringDoubleSD(self, p1: dict[str, list[float]], p2: dict[str, list[float]], current: Current) -> tuple[Mapping[str, Sequence[float]], Mapping[str, Sequence[float]]] | Awaitable[tuple[Mapping[str, Sequence[float]], Mapping[str, Sequence[float]]]]:
        pass

    @abstractmethod
    def opStringStringSD(self, p1: dict[str, list[str]], p2: dict[str, list[str]], current: Current) -> tuple[Mapping[str, Sequence[str]], Mapping[str, Sequence[str]]] | Awaitable[tuple[Mapping[str, Sequence[str]], Mapping[str, Sequence[str]]]]:
        pass

    @abstractmethod
    def opMyEnumMyEnumSD(self, p1: dict[MyEnum, list[MyEnum]], p2: dict[MyEnum, list[MyEnum]], current: Current) -> tuple[Mapping[MyEnum, Sequence[MyEnum]], Mapping[MyEnum, Sequence[MyEnum]]] | Awaitable[tuple[Mapping[MyEnum, Sequence[MyEnum]], Mapping[MyEnum, Sequence[MyEnum]]]]:
        pass

    @abstractmethod
    def opIntS(self, s: list[int], current: Current) -> Sequence[int] | Awaitable[Sequence[int]]:
        pass

    @abstractmethod
    def opByteSOneway(self, s: bytes, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opByteSOnewayCallCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opContext(self, current: Current) -> Mapping[str, str] | Awaitable[Mapping[str, str]]:
        pass

    @abstractmethod
    def opDoubleMarshaling(self, p1: float, p2: list[float], current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opIdempotent(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opByte1(self, opByte1: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opShort1(self, opShort1: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opInt1(self, opInt1: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opLong1(self, opLong1: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opFloat1(self, opFloat1: float, current: Current) -> float | Awaitable[float]:
        pass

    @abstractmethod
    def opDouble1(self, opDouble1: float, current: Current) -> float | Awaitable[float]:
        pass

    @abstractmethod
    def opString1(self, opString1: str, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def opStringS1(self, opStringS1: list[str], current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        pass

    @abstractmethod
    def opByteBoolD1(self, opByteBoolD1: dict[int, bool], current: Current) -> Mapping[int, bool] | Awaitable[Mapping[int, bool]]:
        pass

    @abstractmethod
    def opStringS2(self, stringS: list[str], current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        pass

    @abstractmethod
    def opByteBoolD2(self, byteBoolD: dict[int, bool], current: Current) -> Mapping[int, bool] | Awaitable[Mapping[int, bool]]:
        pass

    @abstractmethod
    def opStringLiterals(self, current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        pass

    @abstractmethod
    def opWStringLiterals(self, current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        pass

    @abstractmethod
    def opMStruct1(self, current: Current) -> Structure | Awaitable[Structure]:
        pass

    @abstractmethod
    def opMStruct2(self, p1: Structure, current: Current) -> tuple[Structure, Structure] | Awaitable[tuple[Structure, Structure]]:
        pass

    @abstractmethod
    def opMSeq1(self, current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        pass

    @abstractmethod
    def opMSeq2(self, p1: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opMDict1(self, current: Current) -> Mapping[str, str] | Awaitable[Mapping[str, str]]:
        pass

    @abstractmethod
    def opMDict2(self, p1: dict[str, str], current: Current) -> tuple[Mapping[str, str], Mapping[str, str]] | Awaitable[tuple[Mapping[str, str], Mapping[str, str]]]:
        pass

MyClass._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_supportsCompress = IcePy.Operation(
    "supportsCompress",
    "supportsCompress",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

MyClass._op_opVoid = IcePy.Operation(
    "opVoid",
    "opVoid",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_opByte = IcePy.Operation(
    "opByte",
    "opByte",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_byte, False, 0), ((), IcePy._t_byte, False, 0)),
    (((), IcePy._t_byte, False, 0),),
    ((), IcePy._t_byte, False, 0),
    ())

MyClass._op_opBool = IcePy.Operation(
    "opBool",
    "opBool",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0), ((), IcePy._t_bool, False, 0)),
    (((), IcePy._t_bool, False, 0),),
    ((), IcePy._t_bool, False, 0),
    ())

MyClass._op_opShortIntLong = IcePy.Operation(
    "opShortIntLong",
    "opShortIntLong",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_short, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_long, False, 0)),
    (((), IcePy._t_short, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_long, False, 0)),
    ((), IcePy._t_long, False, 0),
    ())

MyClass._op_opFloatDouble = IcePy.Operation(
    "opFloatDouble",
    "opFloatDouble",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_float, False, 0), ((), IcePy._t_double, False, 0)),
    (((), IcePy._t_float, False, 0), ((), IcePy._t_double, False, 0)),
    ((), IcePy._t_double, False, 0),
    ())

MyClass._op_opString = IcePy.Operation(
    "opString",
    "opString",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (((), IcePy._t_string, False, 0),),
    ((), IcePy._t_string, False, 0),
    ())

MyClass._op_opMyEnum = IcePy.Operation(
    "opMyEnum",
    "opMyEnum",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyEnum_t, False, 0),),
    (((), _Test_MyEnum_t, False, 0),),
    ((), _Test_MyEnum_t, False, 0),
    ())

MyClass._op_opMyClass = IcePy.Operation(
    "opMyClass",
    "opMyClass",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyClassPrx_t, False, 0),),
    (((), _Test_MyClassPrx_t, False, 0), ((), _Test_MyClassPrx_t, False, 0)),
    ((), _Test_MyClassPrx_t, False, 0),
    ())

MyClass._op_opStruct = IcePy.Operation(
    "opStruct",
    "opStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Structure_t, False, 0), ((), _Test_Structure_t, False, 0)),
    (((), _Test_Structure_t, False, 0),),
    ((), _Test_Structure_t, False, 0),
    ())

MyClass._op_opByteS = IcePy.Operation(
    "opByteS",
    "opByteS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteS_t, False, 0), ((), _Test_ByteS_t, False, 0)),
    (((), _Test_ByteS_t, False, 0),),
    ((), _Test_ByteS_t, False, 0),
    ())

MyClass._op_opBoolS = IcePy.Operation(
    "opBoolS",
    "opBoolS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolS_t, False, 0), ((), _Test_BoolS_t, False, 0)),
    (((), _Test_BoolS_t, False, 0),),
    ((), _Test_BoolS_t, False, 0),
    ())

MyClass._op_opShortIntLongS = IcePy.Operation(
    "opShortIntLongS",
    "opShortIntLongS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortS_t, False, 0), ((), _Test_IntS_t, False, 0), ((), _Test_LongS_t, False, 0)),
    (((), _Test_ShortS_t, False, 0), ((), _Test_IntS_t, False, 0), ((), _Test_LongS_t, False, 0)),
    ((), _Test_LongS_t, False, 0),
    ())

MyClass._op_opFloatDoubleS = IcePy.Operation(
    "opFloatDoubleS",
    "opFloatDoubleS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FloatS_t, False, 0), ((), _Test_DoubleS_t, False, 0)),
    (((), _Test_FloatS_t, False, 0), ((), _Test_DoubleS_t, False, 0)),
    ((), _Test_DoubleS_t, False, 0),
    ())

MyClass._op_opStringS = IcePy.Operation(
    "opStringS",
    "opStringS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringS_t, False, 0), ((), _Test_StringS_t, False, 0)),
    (((), _Test_StringS_t, False, 0),),
    ((), _Test_StringS_t, False, 0),
    ())

MyClass._op_opByteSS = IcePy.Operation(
    "opByteSS",
    "opByteSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSS_t, False, 0), ((), _Test_ByteSS_t, False, 0)),
    (((), _Test_ByteSS_t, False, 0),),
    ((), _Test_ByteSS_t, False, 0),
    ())

MyClass._op_opBoolSS = IcePy.Operation(
    "opBoolSS",
    "opBoolSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolSS_t, False, 0), ((), _Test_BoolSS_t, False, 0)),
    (((), _Test_BoolSS_t, False, 0),),
    ((), _Test_BoolSS_t, False, 0),
    ())

MyClass._op_opShortIntLongSS = IcePy.Operation(
    "opShortIntLongSS",
    "opShortIntLongSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortSS_t, False, 0), ((), _Test_IntSS_t, False, 0), ((), _Test_LongSS_t, False, 0)),
    (((), _Test_ShortSS_t, False, 0), ((), _Test_IntSS_t, False, 0), ((), _Test_LongSS_t, False, 0)),
    ((), _Test_LongSS_t, False, 0),
    ())

MyClass._op_opFloatDoubleSS = IcePy.Operation(
    "opFloatDoubleSS",
    "opFloatDoubleSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FloatSS_t, False, 0), ((), _Test_DoubleSS_t, False, 0)),
    (((), _Test_FloatSS_t, False, 0), ((), _Test_DoubleSS_t, False, 0)),
    ((), _Test_DoubleSS_t, False, 0),
    ())

MyClass._op_opStringSS = IcePy.Operation(
    "opStringSS",
    "opStringSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSS_t, False, 0), ((), _Test_StringSS_t, False, 0)),
    (((), _Test_StringSS_t, False, 0),),
    ((), _Test_StringSS_t, False, 0),
    ())

MyClass._op_opStringSSS = IcePy.Operation(
    "opStringSSS",
    "opStringSSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSSS_t, False, 0), ((), _Test_StringSSS_t, False, 0)),
    (((), _Test_StringSSS_t, False, 0),),
    ((), _Test_StringSSS_t, False, 0),
    ())

MyClass._op_opByteBoolD = IcePy.Operation(
    "opByteBoolD",
    "opByteBoolD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteBoolD_t, False, 0), ((), _Test_ByteBoolD_t, False, 0)),
    (((), _Test_ByteBoolD_t, False, 0),),
    ((), _Test_ByteBoolD_t, False, 0),
    ())

MyClass._op_opShortIntD = IcePy.Operation(
    "opShortIntD",
    "opShortIntD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortIntD_t, False, 0), ((), _Test_ShortIntD_t, False, 0)),
    (((), _Test_ShortIntD_t, False, 0),),
    ((), _Test_ShortIntD_t, False, 0),
    ())

MyClass._op_opLongFloatD = IcePy.Operation(
    "opLongFloatD",
    "opLongFloatD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongFloatD_t, False, 0), ((), _Test_LongFloatD_t, False, 0)),
    (((), _Test_LongFloatD_t, False, 0),),
    ((), _Test_LongFloatD_t, False, 0),
    ())

MyClass._op_opStringStringD = IcePy.Operation(
    "opStringStringD",
    "opStringStringD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringStringD_t, False, 0), ((), _Test_StringStringD_t, False, 0)),
    (((), _Test_StringStringD_t, False, 0),),
    ((), _Test_StringStringD_t, False, 0),
    ())

MyClass._op_opStringMyEnumD = IcePy.Operation(
    "opStringMyEnumD",
    "opStringMyEnumD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringMyEnumD_t, False, 0), ((), _Test_StringMyEnumD_t, False, 0)),
    (((), _Test_StringMyEnumD_t, False, 0),),
    ((), _Test_StringMyEnumD_t, False, 0),
    ())

MyClass._op_opMyEnumStringD = IcePy.Operation(
    "opMyEnumStringD",
    "opMyEnumStringD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyEnumStringD_t, False, 0), ((), _Test_MyEnumStringD_t, False, 0)),
    (((), _Test_MyEnumStringD_t, False, 0),),
    ((), _Test_MyEnumStringD_t, False, 0),
    ())

MyClass._op_opMyStructMyEnumD = IcePy.Operation(
    "opMyStructMyEnumD",
    "opMyStructMyEnumD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyStructMyEnumD_t, False, 0), ((), _Test_MyStructMyEnumD_t, False, 0)),
    (((), _Test_MyStructMyEnumD_t, False, 0),),
    ((), _Test_MyStructMyEnumD_t, False, 0),
    ())

MyClass._op_opByteBoolDS = IcePy.Operation(
    "opByteBoolDS",
    "opByteBoolDS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteBoolDS_t, False, 0), ((), _Test_ByteBoolDS_t, False, 0)),
    (((), _Test_ByteBoolDS_t, False, 0),),
    ((), _Test_ByteBoolDS_t, False, 0),
    ())

MyClass._op_opShortIntDS = IcePy.Operation(
    "opShortIntDS",
    "opShortIntDS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortIntDS_t, False, 0), ((), _Test_ShortIntDS_t, False, 0)),
    (((), _Test_ShortIntDS_t, False, 0),),
    ((), _Test_ShortIntDS_t, False, 0),
    ())

MyClass._op_opLongFloatDS = IcePy.Operation(
    "opLongFloatDS",
    "opLongFloatDS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongFloatDS_t, False, 0), ((), _Test_LongFloatDS_t, False, 0)),
    (((), _Test_LongFloatDS_t, False, 0),),
    ((), _Test_LongFloatDS_t, False, 0),
    ())

MyClass._op_opStringStringDS = IcePy.Operation(
    "opStringStringDS",
    "opStringStringDS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringStringDS_t, False, 0), ((), _Test_StringStringDS_t, False, 0)),
    (((), _Test_StringStringDS_t, False, 0),),
    ((), _Test_StringStringDS_t, False, 0),
    ())

MyClass._op_opStringMyEnumDS = IcePy.Operation(
    "opStringMyEnumDS",
    "opStringMyEnumDS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringMyEnumDS_t, False, 0), ((), _Test_StringMyEnumDS_t, False, 0)),
    (((), _Test_StringMyEnumDS_t, False, 0),),
    ((), _Test_StringMyEnumDS_t, False, 0),
    ())

MyClass._op_opMyEnumStringDS = IcePy.Operation(
    "opMyEnumStringDS",
    "opMyEnumStringDS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyEnumStringDS_t, False, 0), ((), _Test_MyEnumStringDS_t, False, 0)),
    (((), _Test_MyEnumStringDS_t, False, 0),),
    ((), _Test_MyEnumStringDS_t, False, 0),
    ())

MyClass._op_opMyStructMyEnumDS = IcePy.Operation(
    "opMyStructMyEnumDS",
    "opMyStructMyEnumDS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyStructMyEnumDS_t, False, 0), ((), _Test_MyStructMyEnumDS_t, False, 0)),
    (((), _Test_MyStructMyEnumDS_t, False, 0),),
    ((), _Test_MyStructMyEnumDS_t, False, 0),
    ())

MyClass._op_opByteByteSD = IcePy.Operation(
    "opByteByteSD",
    "opByteByteSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteByteSD_t, False, 0), ((), _Test_ByteByteSD_t, False, 0)),
    (((), _Test_ByteByteSD_t, False, 0),),
    ((), _Test_ByteByteSD_t, False, 0),
    ())

MyClass._op_opBoolBoolSD = IcePy.Operation(
    "opBoolBoolSD",
    "opBoolBoolSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolBoolSD_t, False, 0), ((), _Test_BoolBoolSD_t, False, 0)),
    (((), _Test_BoolBoolSD_t, False, 0),),
    ((), _Test_BoolBoolSD_t, False, 0),
    ())

MyClass._op_opShortShortSD = IcePy.Operation(
    "opShortShortSD",
    "opShortShortSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortShortSD_t, False, 0), ((), _Test_ShortShortSD_t, False, 0)),
    (((), _Test_ShortShortSD_t, False, 0),),
    ((), _Test_ShortShortSD_t, False, 0),
    ())

MyClass._op_opIntIntSD = IcePy.Operation(
    "opIntIntSD",
    "opIntIntSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntIntSD_t, False, 0), ((), _Test_IntIntSD_t, False, 0)),
    (((), _Test_IntIntSD_t, False, 0),),
    ((), _Test_IntIntSD_t, False, 0),
    ())

MyClass._op_opLongLongSD = IcePy.Operation(
    "opLongLongSD",
    "opLongLongSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongLongSD_t, False, 0), ((), _Test_LongLongSD_t, False, 0)),
    (((), _Test_LongLongSD_t, False, 0),),
    ((), _Test_LongLongSD_t, False, 0),
    ())

MyClass._op_opStringFloatSD = IcePy.Operation(
    "opStringFloatSD",
    "opStringFloatSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringFloatSD_t, False, 0), ((), _Test_StringFloatSD_t, False, 0)),
    (((), _Test_StringFloatSD_t, False, 0),),
    ((), _Test_StringFloatSD_t, False, 0),
    ())

MyClass._op_opStringDoubleSD = IcePy.Operation(
    "opStringDoubleSD",
    "opStringDoubleSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringDoubleSD_t, False, 0), ((), _Test_StringDoubleSD_t, False, 0)),
    (((), _Test_StringDoubleSD_t, False, 0),),
    ((), _Test_StringDoubleSD_t, False, 0),
    ())

MyClass._op_opStringStringSD = IcePy.Operation(
    "opStringStringSD",
    "opStringStringSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringStringSD_t, False, 0), ((), _Test_StringStringSD_t, False, 0)),
    (((), _Test_StringStringSD_t, False, 0),),
    ((), _Test_StringStringSD_t, False, 0),
    ())

MyClass._op_opMyEnumMyEnumSD = IcePy.Operation(
    "opMyEnumMyEnumSD",
    "opMyEnumMyEnumSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyEnumMyEnumSD_t, False, 0), ((), _Test_MyEnumMyEnumSD_t, False, 0)),
    (((), _Test_MyEnumMyEnumSD_t, False, 0),),
    ((), _Test_MyEnumMyEnumSD_t, False, 0),
    ())

MyClass._op_opIntS = IcePy.Operation(
    "opIntS",
    "opIntS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntS_t, False, 0),),
    (),
    ((), _Test_IntS_t, False, 0),
    ())

MyClass._op_opByteSOneway = IcePy.Operation(
    "opByteSOneway",
    "opByteSOneway",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteS_t, False, 0),),
    (),
    None,
    ())

MyClass._op_opByteSOnewayCallCount = IcePy.Operation(
    "opByteSOnewayCallCount",
    "opByteSOnewayCallCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

MyClass._op_opContext = IcePy.Operation(
    "opContext",
    "opContext",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_Context_t, False, 0),
    ())

MyClass._op_opDoubleMarshaling = IcePy.Operation(
    "opDoubleMarshaling",
    "opDoubleMarshaling",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_double, False, 0), ((), _Test_DoubleS_t, False, 0)),
    (),
    None,
    ())

MyClass._op_opIdempotent = IcePy.Operation(
    "opIdempotent",
    "opIdempotent",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_opByte1 = IcePy.Operation(
    "opByte1",
    "opByte1",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_byte, False, 0),),
    (),
    ((), IcePy._t_byte, False, 0),
    ())

MyClass._op_opShort1 = IcePy.Operation(
    "opShort1",
    "opShort1",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_short, False, 0),),
    (),
    ((), IcePy._t_short, False, 0),
    ())

MyClass._op_opInt1 = IcePy.Operation(
    "opInt1",
    "opInt1",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    ((), IcePy._t_int, False, 0),
    ())

MyClass._op_opLong1 = IcePy.Operation(
    "opLong1",
    "opLong1",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0),),
    (),
    ((), IcePy._t_long, False, 0),
    ())

MyClass._op_opFloat1 = IcePy.Operation(
    "opFloat1",
    "opFloat1",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_float, False, 0),),
    (),
    ((), IcePy._t_float, False, 0),
    ())

MyClass._op_opDouble1 = IcePy.Operation(
    "opDouble1",
    "opDouble1",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_double, False, 0),),
    (),
    ((), IcePy._t_double, False, 0),
    ())

MyClass._op_opString1 = IcePy.Operation(
    "opString1",
    "opString1",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    ((), IcePy._t_string, False, 0),
    ())

MyClass._op_opStringS1 = IcePy.Operation(
    "opStringS1",
    "opStringS1",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringS_t, False, 0),),
    (),
    ((), _Test_StringS_t, False, 0),
    ())

MyClass._op_opByteBoolD1 = IcePy.Operation(
    "opByteBoolD1",
    "opByteBoolD1",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteBoolD_t, False, 0),),
    (),
    ((), _Test_ByteBoolD_t, False, 0),
    ())

MyClass._op_opStringS2 = IcePy.Operation(
    "opStringS2",
    "opStringS2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringS_t, False, 0),),
    (),
    ((), _Test_StringS_t, False, 0),
    ())

MyClass._op_opByteBoolD2 = IcePy.Operation(
    "opByteBoolD2",
    "opByteBoolD2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteBoolD_t, False, 0),),
    (),
    ((), _Test_ByteBoolD_t, False, 0),
    ())

MyClass._op_opStringLiterals = IcePy.Operation(
    "opStringLiterals",
    "opStringLiterals",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_StringS_t, False, 0),
    ())

MyClass._op_opWStringLiterals = IcePy.Operation(
    "opWStringLiterals",
    "opWStringLiterals",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_StringS_t, False, 0),
    ())

MyClass._op_opMStruct1 = IcePy.Operation(
    "opMStruct1",
    "opMStruct1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_Structure_t, False, 0),
    ())

MyClass._op_opMStruct2 = IcePy.Operation(
    "opMStruct2",
    "opMStruct2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Structure_t, False, 0),),
    (((), _Test_Structure_t, False, 0),),
    ((), _Test_Structure_t, False, 0),
    ())

MyClass._op_opMSeq1 = IcePy.Operation(
    "opMSeq1",
    "opMSeq1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_StringS_t, False, 0),
    ())

MyClass._op_opMSeq2 = IcePy.Operation(
    "opMSeq2",
    "opMSeq2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringS_t, False, 0),),
    (((), _Test_StringS_t, False, 0),),
    ((), _Test_StringS_t, False, 0),
    ())

MyClass._op_opMDict1 = IcePy.Operation(
    "opMDict1",
    "opMDict1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_StringStringD_t, False, 0),
    ())

MyClass._op_opMDict2 = IcePy.Operation(
    "opMDict2",
    "opMDict2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringStringD_t, False, 0),),
    (((), _Test_StringStringD_t, False, 0),),
    ((), _Test_StringStringD_t, False, 0),
    ())

__all__ = ["MyClass", "MyClassPrx", "_Test_MyClassPrx_t"]
