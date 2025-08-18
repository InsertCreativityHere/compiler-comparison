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

from Ice.Value_forward import _Ice_Value_t

from Test.A_forward import _Test_A_t

from Test.BoolSeq import _Test_BoolSeq_t

from Test.ByteSeq import _Test_ByteSeq_t

from Test.DoubleSeq import _Test_DoubleSeq_t

from Test.FixedStruct import _Test_FixedStruct_t

from Test.FixedStructList import _Test_FixedStructList_t

from Test.FixedStructSeq import _Test_FixedStructSeq_t

from Test.FloatSeq import _Test_FloatSeq_t

from Test.G_forward import _Test_G_t

from Test.Initial_forward import _Test_InitialPrx_t

from Test.IntIntDict import _Test_IntIntDict_t

from Test.IntSeq import _Test_IntSeq_t

from Test.LongSeq import _Test_LongSeq_t

from Test.MyEnum import _Test_MyEnum_t

from Test.MyInterface_forward import _Test_MyInterfacePrx_t

from Test.OneOptional_forward import _Test_OneOptional_t

from Test.OptionalException import _Test_OptionalException_t

from Test.ShortSeq import _Test_ShortSeq_t

from Test.SmallStruct import _Test_SmallStruct_t

from Test.SmallStructList import _Test_SmallStructList_t

from Test.SmallStructSeq import _Test_SmallStructSeq_t

from Test.StringIntDict import _Test_StringIntDict_t

from Test.StringSeq import _Test_StringSeq_t

from Test.VarStruct import _Test_VarStruct_t

from Test.VarStructSeq import _Test_VarStructSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Value import Value
    from Test.A import A
    from Test.FixedStruct import FixedStruct
    from Test.G import G
    from Test.MyEnum import MyEnum
    from Test.MyInterface import MyInterfacePrx
    from Test.OneOptional import OneOptional
    from Test.SmallStruct import SmallStruct
    from Test.VarStruct import VarStruct
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class InitialPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_shutdown.invokeAsync(self, ((), context))

    def pingPong(self, o: Value | None, context: dict[str, str] | None = None) -> Value | None:
        return Initial._op_pingPong.invoke(self, ((o, ), context))

    def pingPongAsync(self, o: Value | None, context: dict[str, str] | None = None) -> Awaitable[Value | None]:
        return Initial._op_pingPong.invokeAsync(self, ((o, ), context))

    def opOptionalException(self, a: int | None = None, b: str | None = None, context: dict[str, str] | None = None) -> None:
        return Initial._op_opOptionalException.invoke(self, ((a, b), context))

    def opOptionalExceptionAsync(self, a: int | None = None, b: str | None = None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_opOptionalException.invokeAsync(self, ((a, b), context))

    def opDerivedException(self, a: int | None = None, b: str | None = None, context: dict[str, str] | None = None) -> None:
        return Initial._op_opDerivedException.invoke(self, ((a, b), context))

    def opDerivedExceptionAsync(self, a: int | None = None, b: str | None = None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_opDerivedException.invokeAsync(self, ((a, b), context))

    def opRequiredException(self, a: int | None = None, b: str | None = None, context: dict[str, str] | None = None) -> None:
        return Initial._op_opRequiredException.invoke(self, ((a, b), context))

    def opRequiredExceptionAsync(self, a: int | None = None, b: str | None = None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_opRequiredException.invokeAsync(self, ((a, b), context))

    def opByte(self, p1: int | None = None, context: dict[str, str] | None = None) -> tuple[int | None, int | None]:
        return Initial._op_opByte.invoke(self, ((p1, ), context))

    def opByteAsync(self, p1: int | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[int | None, int | None]]:
        return Initial._op_opByte.invokeAsync(self, ((p1, ), context))

    def opBool(self, p1: bool | None = None, context: dict[str, str] | None = None) -> tuple[bool | None, bool | None]:
        return Initial._op_opBool.invoke(self, ((p1, ), context))

    def opBoolAsync(self, p1: bool | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[bool | None, bool | None]]:
        return Initial._op_opBool.invokeAsync(self, ((p1, ), context))

    def opShort(self, p1: int | None = None, context: dict[str, str] | None = None) -> tuple[int | None, int | None]:
        return Initial._op_opShort.invoke(self, ((p1, ), context))

    def opShortAsync(self, p1: int | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[int | None, int | None]]:
        return Initial._op_opShort.invokeAsync(self, ((p1, ), context))

    def opInt(self, p1: int | None = None, context: dict[str, str] | None = None) -> tuple[int | None, int | None]:
        return Initial._op_opInt.invoke(self, ((p1, ), context))

    def opIntAsync(self, p1: int | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[int | None, int | None]]:
        return Initial._op_opInt.invokeAsync(self, ((p1, ), context))

    def opLong(self, p1: int | None = None, context: dict[str, str] | None = None) -> tuple[int | None, int | None]:
        return Initial._op_opLong.invoke(self, ((p1, ), context))

    def opLongAsync(self, p1: int | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[int | None, int | None]]:
        return Initial._op_opLong.invokeAsync(self, ((p1, ), context))

    def opFloat(self, p1: float | None = None, context: dict[str, str] | None = None) -> tuple[float | None, float | None]:
        return Initial._op_opFloat.invoke(self, ((p1, ), context))

    def opFloatAsync(self, p1: float | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[float | None, float | None]]:
        return Initial._op_opFloat.invokeAsync(self, ((p1, ), context))

    def opDouble(self, p1: float | None = None, context: dict[str, str] | None = None) -> tuple[float | None, float | None]:
        return Initial._op_opDouble.invoke(self, ((p1, ), context))

    def opDoubleAsync(self, p1: float | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[float | None, float | None]]:
        return Initial._op_opDouble.invokeAsync(self, ((p1, ), context))

    def opString(self, p1: str | None = None, context: dict[str, str] | None = None) -> tuple[str | None, str | None]:
        return Initial._op_opString.invoke(self, ((p1, ), context))

    def opStringAsync(self, p1: str | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[str | None, str | None]]:
        return Initial._op_opString.invokeAsync(self, ((p1, ), context))

    def opMyEnum(self, p1: MyEnum | None = None, context: dict[str, str] | None = None) -> tuple[MyEnum | None, MyEnum | None]:
        return Initial._op_opMyEnum.invoke(self, ((p1, ), context))

    def opMyEnumAsync(self, p1: MyEnum | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[MyEnum | None, MyEnum | None]]:
        return Initial._op_opMyEnum.invokeAsync(self, ((p1, ), context))

    def opSmallStruct(self, p1: SmallStruct | None = None, context: dict[str, str] | None = None) -> tuple[SmallStruct | None, SmallStruct | None]:
        return Initial._op_opSmallStruct.invoke(self, ((p1, ), context))

    def opSmallStructAsync(self, p1: SmallStruct | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[SmallStruct | None, SmallStruct | None]]:
        return Initial._op_opSmallStruct.invokeAsync(self, ((p1, ), context))

    def opFixedStruct(self, p1: FixedStruct | None = None, context: dict[str, str] | None = None) -> tuple[FixedStruct | None, FixedStruct | None]:
        return Initial._op_opFixedStruct.invoke(self, ((p1, ), context))

    def opFixedStructAsync(self, p1: FixedStruct | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[FixedStruct | None, FixedStruct | None]]:
        return Initial._op_opFixedStruct.invokeAsync(self, ((p1, ), context))

    def opVarStruct(self, p1: VarStruct | None = None, context: dict[str, str] | None = None) -> tuple[VarStruct | None, VarStruct | None]:
        return Initial._op_opVarStruct.invoke(self, ((p1, ), context))

    def opVarStructAsync(self, p1: VarStruct | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[VarStruct | None, VarStruct | None]]:
        return Initial._op_opVarStruct.invokeAsync(self, ((p1, ), context))

    def opMyInterfaceProxy(self, p1: MyInterfacePrx | None = None, context: dict[str, str] | None = None) -> tuple[MyInterfacePrx | None, MyInterfacePrx | None]:
        return Initial._op_opMyInterfaceProxy.invoke(self, ((p1, ), context))

    def opMyInterfaceProxyAsync(self, p1: MyInterfacePrx | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[MyInterfacePrx | None, MyInterfacePrx | None]]:
        return Initial._op_opMyInterfaceProxy.invokeAsync(self, ((p1, ), context))

    def opOneOptional(self, p1: OneOptional | None, context: dict[str, str] | None = None) -> tuple[OneOptional | None, OneOptional | None]:
        return Initial._op_opOneOptional.invoke(self, ((p1, ), context))

    def opOneOptionalAsync(self, p1: OneOptional | None, context: dict[str, str] | None = None) -> Awaitable[tuple[OneOptional | None, OneOptional | None]]:
        return Initial._op_opOneOptional.invokeAsync(self, ((p1, ), context))

    def opByteSeq(self, p1: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> tuple[bytes | None, bytes | None]:
        return Initial._op_opByteSeq.invoke(self, ((p1, ), context))

    def opByteSeqAsync(self, p1: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes | None, bytes | None]]:
        return Initial._op_opByteSeq.invokeAsync(self, ((p1, ), context))

    def opBoolSeq(self, p1: Sequence[bool] | None = None, context: dict[str, str] | None = None) -> tuple[list[bool] | None, list[bool] | None]:
        return Initial._op_opBoolSeq.invoke(self, ((p1, ), context))

    def opBoolSeqAsync(self, p1: Sequence[bool] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool] | None, list[bool] | None]]:
        return Initial._op_opBoolSeq.invokeAsync(self, ((p1, ), context))

    def opShortSeq(self, p1: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return Initial._op_opShortSeq.invoke(self, ((p1, ), context))

    def opShortSeqAsync(self, p1: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return Initial._op_opShortSeq.invokeAsync(self, ((p1, ), context))

    def opIntSeq(self, p1: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return Initial._op_opIntSeq.invoke(self, ((p1, ), context))

    def opIntSeqAsync(self, p1: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return Initial._op_opIntSeq.invokeAsync(self, ((p1, ), context))

    def opLongSeq(self, p1: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return Initial._op_opLongSeq.invoke(self, ((p1, ), context))

    def opLongSeqAsync(self, p1: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return Initial._op_opLongSeq.invokeAsync(self, ((p1, ), context))

    def opFloatSeq(self, p1: Sequence[float] | None = None, context: dict[str, str] | None = None) -> tuple[list[float] | None, list[float] | None]:
        return Initial._op_opFloatSeq.invoke(self, ((p1, ), context))

    def opFloatSeqAsync(self, p1: Sequence[float] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[float] | None, list[float] | None]]:
        return Initial._op_opFloatSeq.invokeAsync(self, ((p1, ), context))

    def opDoubleSeq(self, p1: Sequence[float] | None = None, context: dict[str, str] | None = None) -> tuple[list[float] | None, list[float] | None]:
        return Initial._op_opDoubleSeq.invoke(self, ((p1, ), context))

    def opDoubleSeqAsync(self, p1: Sequence[float] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[float] | None, list[float] | None]]:
        return Initial._op_opDoubleSeq.invokeAsync(self, ((p1, ), context))

    def opStringSeq(self, p1: Sequence[str] | None = None, context: dict[str, str] | None = None) -> tuple[list[str] | None, list[str] | None]:
        return Initial._op_opStringSeq.invoke(self, ((p1, ), context))

    def opStringSeqAsync(self, p1: Sequence[str] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[str] | None, list[str] | None]]:
        return Initial._op_opStringSeq.invokeAsync(self, ((p1, ), context))

    def opSmallStructSeq(self, p1: Sequence[SmallStruct] | None = None, context: dict[str, str] | None = None) -> tuple[list[SmallStruct] | None, list[SmallStruct] | None]:
        return Initial._op_opSmallStructSeq.invoke(self, ((p1, ), context))

    def opSmallStructSeqAsync(self, p1: Sequence[SmallStruct] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[SmallStruct] | None, list[SmallStruct] | None]]:
        return Initial._op_opSmallStructSeq.invokeAsync(self, ((p1, ), context))

    def opSmallStructList(self, p1: Sequence[SmallStruct] | None = None, context: dict[str, str] | None = None) -> tuple[list[SmallStruct] | None, list[SmallStruct] | None]:
        return Initial._op_opSmallStructList.invoke(self, ((p1, ), context))

    def opSmallStructListAsync(self, p1: Sequence[SmallStruct] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[SmallStruct] | None, list[SmallStruct] | None]]:
        return Initial._op_opSmallStructList.invokeAsync(self, ((p1, ), context))

    def opFixedStructSeq(self, p1: Sequence[FixedStruct] | None = None, context: dict[str, str] | None = None) -> tuple[list[FixedStruct] | None, list[FixedStruct] | None]:
        return Initial._op_opFixedStructSeq.invoke(self, ((p1, ), context))

    def opFixedStructSeqAsync(self, p1: Sequence[FixedStruct] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[FixedStruct] | None, list[FixedStruct] | None]]:
        return Initial._op_opFixedStructSeq.invokeAsync(self, ((p1, ), context))

    def opFixedStructList(self, p1: Sequence[FixedStruct] | None = None, context: dict[str, str] | None = None) -> tuple[list[FixedStruct] | None, list[FixedStruct] | None]:
        return Initial._op_opFixedStructList.invoke(self, ((p1, ), context))

    def opFixedStructListAsync(self, p1: Sequence[FixedStruct] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[FixedStruct] | None, list[FixedStruct] | None]]:
        return Initial._op_opFixedStructList.invokeAsync(self, ((p1, ), context))

    def opVarStructSeq(self, p1: Sequence[VarStruct] | None = None, context: dict[str, str] | None = None) -> tuple[list[VarStruct] | None, list[VarStruct] | None]:
        return Initial._op_opVarStructSeq.invoke(self, ((p1, ), context))

    def opVarStructSeqAsync(self, p1: Sequence[VarStruct] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[VarStruct] | None, list[VarStruct] | None]]:
        return Initial._op_opVarStructSeq.invokeAsync(self, ((p1, ), context))

    def opIntIntDict(self, p1: Mapping[int, int] | None = None, context: dict[str, str] | None = None) -> tuple[dict[int, int] | None, dict[int, int] | None]:
        return Initial._op_opIntIntDict.invoke(self, ((p1, ), context))

    def opIntIntDictAsync(self, p1: Mapping[int, int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, int] | None, dict[int, int] | None]]:
        return Initial._op_opIntIntDict.invokeAsync(self, ((p1, ), context))

    def opStringIntDict(self, p1: Mapping[str, int] | None = None, context: dict[str, str] | None = None) -> tuple[dict[str, int] | None, dict[str, int] | None]:
        return Initial._op_opStringIntDict.invoke(self, ((p1, ), context))

    def opStringIntDictAsync(self, p1: Mapping[str, int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, int] | None, dict[str, int] | None]]:
        return Initial._op_opStringIntDict.invokeAsync(self, ((p1, ), context))

    def opClassAndUnknownOptional(self, p: A | None, context: dict[str, str] | None = None) -> None:
        return Initial._op_opClassAndUnknownOptional.invoke(self, ((p, ), context))

    def opClassAndUnknownOptionalAsync(self, p: A | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_opClassAndUnknownOptional.invokeAsync(self, ((p, ), context))

    def opG(self, g: G | None, context: dict[str, str] | None = None) -> G | None:
        return Initial._op_opG.invoke(self, ((g, ), context))

    def opGAsync(self, g: G | None, context: dict[str, str] | None = None) -> Awaitable[G | None]:
        return Initial._op_opG.invokeAsync(self, ((g, ), context))

    def opVoid(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_opVoid.invoke(self, ((), context))

    def opVoidAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_opVoid.invokeAsync(self, ((), context))

    def opMStruct1(self, context: dict[str, str] | None = None) -> SmallStruct | None:
        return Initial._op_opMStruct1.invoke(self, ((), context))

    def opMStruct1Async(self, context: dict[str, str] | None = None) -> Awaitable[SmallStruct | None]:
        return Initial._op_opMStruct1.invokeAsync(self, ((), context))

    def opMStruct2(self, p1: SmallStruct | None = None, context: dict[str, str] | None = None) -> tuple[SmallStruct | None, SmallStruct | None]:
        return Initial._op_opMStruct2.invoke(self, ((p1, ), context))

    def opMStruct2Async(self, p1: SmallStruct | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[SmallStruct | None, SmallStruct | None]]:
        return Initial._op_opMStruct2.invokeAsync(self, ((p1, ), context))

    def opMSeq1(self, context: dict[str, str] | None = None) -> list[str] | None:
        return Initial._op_opMSeq1.invoke(self, ((), context))

    def opMSeq1Async(self, context: dict[str, str] | None = None) -> Awaitable[list[str] | None]:
        return Initial._op_opMSeq1.invokeAsync(self, ((), context))

    def opMSeq2(self, p1: Sequence[str] | None = None, context: dict[str, str] | None = None) -> tuple[list[str] | None, list[str] | None]:
        return Initial._op_opMSeq2.invoke(self, ((p1, ), context))

    def opMSeq2Async(self, p1: Sequence[str] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[str] | None, list[str] | None]]:
        return Initial._op_opMSeq2.invokeAsync(self, ((p1, ), context))

    def opMDict1(self, context: dict[str, str] | None = None) -> dict[str, int] | None:
        return Initial._op_opMDict1.invoke(self, ((), context))

    def opMDict1Async(self, context: dict[str, str] | None = None) -> Awaitable[dict[str, int] | None]:
        return Initial._op_opMDict1.invokeAsync(self, ((), context))

    def opMDict2(self, p1: Mapping[str, int] | None = None, context: dict[str, str] | None = None) -> tuple[dict[str, int] | None, dict[str, int] | None]:
        return Initial._op_opMDict2.invoke(self, ((p1, ), context))

    def opMDict2Async(self, p1: Mapping[str, int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, int] | None, dict[str, int] | None]]:
        return Initial._op_opMDict2.invokeAsync(self, ((p1, ), context))

    def supportsJavaSerializable(self, context: dict[str, str] | None = None) -> bool:
        return Initial._op_supportsJavaSerializable.invoke(self, ((), context))

    def supportsJavaSerializableAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return Initial._op_supportsJavaSerializable.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> InitialPrx | None:
        return checkedCast(InitialPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[InitialPrx | None ]:
        return checkedCastAsync(InitialPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> InitialPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> InitialPrx | None:
        return uncheckedCast(InitialPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

IcePy.defineProxy("::Test::Initial", InitialPrx)

class Initial(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Initial", )
    _op_shutdown: IcePy.Operation
    _op_pingPong: IcePy.Operation
    _op_opOptionalException: IcePy.Operation
    _op_opDerivedException: IcePy.Operation
    _op_opRequiredException: IcePy.Operation
    _op_opByte: IcePy.Operation
    _op_opBool: IcePy.Operation
    _op_opShort: IcePy.Operation
    _op_opInt: IcePy.Operation
    _op_opLong: IcePy.Operation
    _op_opFloat: IcePy.Operation
    _op_opDouble: IcePy.Operation
    _op_opString: IcePy.Operation
    _op_opMyEnum: IcePy.Operation
    _op_opSmallStruct: IcePy.Operation
    _op_opFixedStruct: IcePy.Operation
    _op_opVarStruct: IcePy.Operation
    _op_opMyInterfaceProxy: IcePy.Operation
    _op_opOneOptional: IcePy.Operation
    _op_opByteSeq: IcePy.Operation
    _op_opBoolSeq: IcePy.Operation
    _op_opShortSeq: IcePy.Operation
    _op_opIntSeq: IcePy.Operation
    _op_opLongSeq: IcePy.Operation
    _op_opFloatSeq: IcePy.Operation
    _op_opDoubleSeq: IcePy.Operation
    _op_opStringSeq: IcePy.Operation
    _op_opSmallStructSeq: IcePy.Operation
    _op_opSmallStructList: IcePy.Operation
    _op_opFixedStructSeq: IcePy.Operation
    _op_opFixedStructList: IcePy.Operation
    _op_opVarStructSeq: IcePy.Operation
    _op_opIntIntDict: IcePy.Operation
    _op_opStringIntDict: IcePy.Operation
    _op_opClassAndUnknownOptional: IcePy.Operation
    _op_opG: IcePy.Operation
    _op_opVoid: IcePy.Operation
    _op_opMStruct1: IcePy.Operation
    _op_opMStruct2: IcePy.Operation
    _op_opMSeq1: IcePy.Operation
    _op_opMSeq2: IcePy.Operation
    _op_opMDict1: IcePy.Operation
    _op_opMDict2: IcePy.Operation
    _op_supportsJavaSerializable: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def pingPong(self, o: Value | None, current: Current) -> Value | None | Awaitable[Value | None]:
        pass

    @abstractmethod
    def opOptionalException(self, a: int | None, b: str | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opDerivedException(self, a: int | None, b: str | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opRequiredException(self, a: int | None, b: str | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opByte(self, p1: int | None, current: Current) -> tuple[int | None, int | None] | Awaitable[tuple[int | None, int | None]]:
        pass

    @abstractmethod
    def opBool(self, p1: bool | None, current: Current) -> tuple[bool | None, bool | None] | Awaitable[tuple[bool | None, bool | None]]:
        pass

    @abstractmethod
    def opShort(self, p1: int | None, current: Current) -> tuple[int | None, int | None] | Awaitable[tuple[int | None, int | None]]:
        pass

    @abstractmethod
    def opInt(self, p1: int | None, current: Current) -> tuple[int | None, int | None] | Awaitable[tuple[int | None, int | None]]:
        pass

    @abstractmethod
    def opLong(self, p1: int | None, current: Current) -> tuple[int | None, int | None] | Awaitable[tuple[int | None, int | None]]:
        pass

    @abstractmethod
    def opFloat(self, p1: float | None, current: Current) -> tuple[float | None, float | None] | Awaitable[tuple[float | None, float | None]]:
        pass

    @abstractmethod
    def opDouble(self, p1: float | None, current: Current) -> tuple[float | None, float | None] | Awaitable[tuple[float | None, float | None]]:
        pass

    @abstractmethod
    def opString(self, p1: str | None, current: Current) -> tuple[str | None, str | None] | Awaitable[tuple[str | None, str | None]]:
        pass

    @abstractmethod
    def opMyEnum(self, p1: MyEnum | None, current: Current) -> tuple[MyEnum | None, MyEnum | None] | Awaitable[tuple[MyEnum | None, MyEnum | None]]:
        pass

    @abstractmethod
    def opSmallStruct(self, p1: SmallStruct | None, current: Current) -> tuple[SmallStruct | None, SmallStruct | None] | Awaitable[tuple[SmallStruct | None, SmallStruct | None]]:
        pass

    @abstractmethod
    def opFixedStruct(self, p1: FixedStruct | None, current: Current) -> tuple[FixedStruct | None, FixedStruct | None] | Awaitable[tuple[FixedStruct | None, FixedStruct | None]]:
        pass

    @abstractmethod
    def opVarStruct(self, p1: VarStruct | None, current: Current) -> tuple[VarStruct | None, VarStruct | None] | Awaitable[tuple[VarStruct | None, VarStruct | None]]:
        pass

    @abstractmethod
    def opMyInterfaceProxy(self, p1: MyInterfacePrx | None, current: Current) -> tuple[MyInterfacePrx | None, MyInterfacePrx | None] | Awaitable[tuple[MyInterfacePrx | None, MyInterfacePrx | None]]:
        pass

    @abstractmethod
    def opOneOptional(self, p1: OneOptional | None, current: Current) -> tuple[OneOptional | None, OneOptional | None] | Awaitable[tuple[OneOptional | None, OneOptional | None]]:
        pass

    @abstractmethod
    def opByteSeq(self, p1: bytes | None, current: Current) -> tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None] | Awaitable[tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None]]:
        pass

    @abstractmethod
    def opBoolSeq(self, p1: list[bool] | None, current: Current) -> tuple[Sequence[bool] | None, Sequence[bool] | None] | Awaitable[tuple[Sequence[bool] | None, Sequence[bool] | None]]:
        pass

    @abstractmethod
    def opShortSeq(self, p1: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opIntSeq(self, p1: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opLongSeq(self, p1: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opFloatSeq(self, p1: list[float] | None, current: Current) -> tuple[Sequence[float] | None, Sequence[float] | None] | Awaitable[tuple[Sequence[float] | None, Sequence[float] | None]]:
        pass

    @abstractmethod
    def opDoubleSeq(self, p1: list[float] | None, current: Current) -> tuple[Sequence[float] | None, Sequence[float] | None] | Awaitable[tuple[Sequence[float] | None, Sequence[float] | None]]:
        pass

    @abstractmethod
    def opStringSeq(self, p1: list[str] | None, current: Current) -> tuple[Sequence[str] | None, Sequence[str] | None] | Awaitable[tuple[Sequence[str] | None, Sequence[str] | None]]:
        pass

    @abstractmethod
    def opSmallStructSeq(self, p1: list[SmallStruct] | None, current: Current) -> tuple[Sequence[SmallStruct] | None, Sequence[SmallStruct] | None] | Awaitable[tuple[Sequence[SmallStruct] | None, Sequence[SmallStruct] | None]]:
        pass

    @abstractmethod
    def opSmallStructList(self, p1: list[SmallStruct] | None, current: Current) -> tuple[Sequence[SmallStruct] | None, Sequence[SmallStruct] | None] | Awaitable[tuple[Sequence[SmallStruct] | None, Sequence[SmallStruct] | None]]:
        pass

    @abstractmethod
    def opFixedStructSeq(self, p1: list[FixedStruct] | None, current: Current) -> tuple[Sequence[FixedStruct] | None, Sequence[FixedStruct] | None] | Awaitable[tuple[Sequence[FixedStruct] | None, Sequence[FixedStruct] | None]]:
        pass

    @abstractmethod
    def opFixedStructList(self, p1: list[FixedStruct] | None, current: Current) -> tuple[Sequence[FixedStruct] | None, Sequence[FixedStruct] | None] | Awaitable[tuple[Sequence[FixedStruct] | None, Sequence[FixedStruct] | None]]:
        pass

    @abstractmethod
    def opVarStructSeq(self, p1: list[VarStruct] | None, current: Current) -> tuple[Sequence[VarStruct] | None, Sequence[VarStruct] | None] | Awaitable[tuple[Sequence[VarStruct] | None, Sequence[VarStruct] | None]]:
        pass

    @abstractmethod
    def opIntIntDict(self, p1: dict[int, int] | None, current: Current) -> tuple[Mapping[int, int] | None, Mapping[int, int] | None] | Awaitable[tuple[Mapping[int, int] | None, Mapping[int, int] | None]]:
        pass

    @abstractmethod
    def opStringIntDict(self, p1: dict[str, int] | None, current: Current) -> tuple[Mapping[str, int] | None, Mapping[str, int] | None] | Awaitable[tuple[Mapping[str, int] | None, Mapping[str, int] | None]]:
        pass

    @abstractmethod
    def opClassAndUnknownOptional(self, p: A | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opG(self, g: G | None, current: Current) -> G | None | Awaitable[G | None]:
        pass

    @abstractmethod
    def opVoid(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opMStruct1(self, current: Current) -> SmallStruct | None | Awaitable[SmallStruct | None]:
        pass

    @abstractmethod
    def opMStruct2(self, p1: SmallStruct | None, current: Current) -> tuple[SmallStruct | None, SmallStruct | None] | Awaitable[tuple[SmallStruct | None, SmallStruct | None]]:
        pass

    @abstractmethod
    def opMSeq1(self, current: Current) -> Sequence[str] | None | Awaitable[Sequence[str] | None]:
        pass

    @abstractmethod
    def opMSeq2(self, p1: list[str] | None, current: Current) -> tuple[Sequence[str] | None, Sequence[str] | None] | Awaitable[tuple[Sequence[str] | None, Sequence[str] | None]]:
        pass

    @abstractmethod
    def opMDict1(self, current: Current) -> Mapping[str, int] | None | Awaitable[Mapping[str, int] | None]:
        pass

    @abstractmethod
    def opMDict2(self, p1: dict[str, int] | None, current: Current) -> tuple[Mapping[str, int] | None, Mapping[str, int] | None] | Awaitable[tuple[Mapping[str, int] | None, Mapping[str, int] | None]]:
        pass

    @abstractmethod
    def supportsJavaSerializable(self, current: Current) -> bool | Awaitable[bool]:
        pass

Initial._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Initial._op_pingPong = IcePy.Operation(
    "pingPong",
    "pingPong",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_Value_t, False, 0),),
    (),
    ((), _Ice_Value_t, False, 0),
    ())

Initial._op_opOptionalException = IcePy.Operation(
    "opOptionalException",
    "opOptionalException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, True, 1), ((), IcePy._t_string, True, 2)),
    (),
    None,
    (_Test_OptionalException_t,))

Initial._op_opDerivedException = IcePy.Operation(
    "opDerivedException",
    "opDerivedException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, True, 1), ((), IcePy._t_string, True, 2)),
    (),
    None,
    (_Test_OptionalException_t,))

Initial._op_opRequiredException = IcePy.Operation(
    "opRequiredException",
    "opRequiredException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, True, 1), ((), IcePy._t_string, True, 2)),
    (),
    None,
    (_Test_OptionalException_t,))

Initial._op_opByte = IcePy.Operation(
    "opByte",
    "opByte",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_byte, True, 2),),
    (((), IcePy._t_byte, True, 3),),
    ((), IcePy._t_byte, True, 1),
    ())

Initial._op_opBool = IcePy.Operation(
    "opBool",
    "opBool",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, True, 2),),
    (((), IcePy._t_bool, True, 3),),
    ((), IcePy._t_bool, True, 1),
    ())

Initial._op_opShort = IcePy.Operation(
    "opShort",
    "opShort",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_short, True, 2),),
    (((), IcePy._t_short, True, 3),),
    ((), IcePy._t_short, True, 1),
    ())

Initial._op_opInt = IcePy.Operation(
    "opInt",
    "opInt",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, True, 2),),
    (((), IcePy._t_int, True, 3),),
    ((), IcePy._t_int, True, 1),
    ())

Initial._op_opLong = IcePy.Operation(
    "opLong",
    "opLong",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, True, 1),),
    (((), IcePy._t_long, True, 2),),
    ((), IcePy._t_long, True, 3),
    ())

Initial._op_opFloat = IcePy.Operation(
    "opFloat",
    "opFloat",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_float, True, 2),),
    (((), IcePy._t_float, True, 3),),
    ((), IcePy._t_float, True, 1),
    ())

Initial._op_opDouble = IcePy.Operation(
    "opDouble",
    "opDouble",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_double, True, 2),),
    (((), IcePy._t_double, True, 3),),
    ((), IcePy._t_double, True, 1),
    ())

Initial._op_opString = IcePy.Operation(
    "opString",
    "opString",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, True, 2),),
    (((), IcePy._t_string, True, 3),),
    ((), IcePy._t_string, True, 1),
    ())

Initial._op_opMyEnum = IcePy.Operation(
    "opMyEnum",
    "opMyEnum",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyEnum_t, True, 2),),
    (((), _Test_MyEnum_t, True, 3),),
    ((), _Test_MyEnum_t, True, 1),
    ())

Initial._op_opSmallStruct = IcePy.Operation(
    "opSmallStruct",
    "opSmallStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SmallStruct_t, True, 2),),
    (((), _Test_SmallStruct_t, True, 3),),
    ((), _Test_SmallStruct_t, True, 1),
    ())

Initial._op_opFixedStruct = IcePy.Operation(
    "opFixedStruct",
    "opFixedStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FixedStruct_t, True, 2),),
    (((), _Test_FixedStruct_t, True, 3),),
    ((), _Test_FixedStruct_t, True, 1),
    ())

Initial._op_opVarStruct = IcePy.Operation(
    "opVarStruct",
    "opVarStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_VarStruct_t, True, 2),),
    (((), _Test_VarStruct_t, True, 3),),
    ((), _Test_VarStruct_t, True, 1),
    ())

Initial._op_opMyInterfaceProxy = IcePy.Operation(
    "opMyInterfaceProxy",
    "opMyInterfaceProxy",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyInterfacePrx_t, True, 2),),
    (((), _Test_MyInterfacePrx_t, True, 3),),
    ((), _Test_MyInterfacePrx_t, True, 1),
    ())

Initial._op_opOneOptional = IcePy.Operation(
    "opOneOptional",
    "opOneOptional",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_OneOptional_t, False, 0),),
    (((), _Test_OneOptional_t, False, 0),),
    ((), _Test_OneOptional_t, False, 0),
    ())

Initial._op_opByteSeq = IcePy.Operation(
    "opByteSeq",
    "opByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, True, 2),),
    (((), _Test_ByteSeq_t, True, 3),),
    ((), _Test_ByteSeq_t, True, 1),
    ())

Initial._op_opBoolSeq = IcePy.Operation(
    "opBoolSeq",
    "opBoolSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolSeq_t, True, 2),),
    (((), _Test_BoolSeq_t, True, 3),),
    ((), _Test_BoolSeq_t, True, 1),
    ())

Initial._op_opShortSeq = IcePy.Operation(
    "opShortSeq",
    "opShortSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortSeq_t, True, 2),),
    (((), _Test_ShortSeq_t, True, 3),),
    ((), _Test_ShortSeq_t, True, 1),
    ())

Initial._op_opIntSeq = IcePy.Operation(
    "opIntSeq",
    "opIntSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntSeq_t, True, 2),),
    (((), _Test_IntSeq_t, True, 3),),
    ((), _Test_IntSeq_t, True, 1),
    ())

Initial._op_opLongSeq = IcePy.Operation(
    "opLongSeq",
    "opLongSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongSeq_t, True, 2),),
    (((), _Test_LongSeq_t, True, 3),),
    ((), _Test_LongSeq_t, True, 1),
    ())

Initial._op_opFloatSeq = IcePy.Operation(
    "opFloatSeq",
    "opFloatSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FloatSeq_t, True, 2),),
    (((), _Test_FloatSeq_t, True, 3),),
    ((), _Test_FloatSeq_t, True, 1),
    ())

Initial._op_opDoubleSeq = IcePy.Operation(
    "opDoubleSeq",
    "opDoubleSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DoubleSeq_t, True, 2),),
    (((), _Test_DoubleSeq_t, True, 3),),
    ((), _Test_DoubleSeq_t, True, 1),
    ())

Initial._op_opStringSeq = IcePy.Operation(
    "opStringSeq",
    "opStringSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeq_t, True, 2),),
    (((), _Test_StringSeq_t, True, 3),),
    ((), _Test_StringSeq_t, True, 1),
    ())

Initial._op_opSmallStructSeq = IcePy.Operation(
    "opSmallStructSeq",
    "opSmallStructSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SmallStructSeq_t, True, 2),),
    (((), _Test_SmallStructSeq_t, True, 3),),
    ((), _Test_SmallStructSeq_t, True, 1),
    ())

Initial._op_opSmallStructList = IcePy.Operation(
    "opSmallStructList",
    "opSmallStructList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SmallStructList_t, True, 2),),
    (((), _Test_SmallStructList_t, True, 3),),
    ((), _Test_SmallStructList_t, True, 1),
    ())

Initial._op_opFixedStructSeq = IcePy.Operation(
    "opFixedStructSeq",
    "opFixedStructSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FixedStructSeq_t, True, 2),),
    (((), _Test_FixedStructSeq_t, True, 3),),
    ((), _Test_FixedStructSeq_t, True, 1),
    ())

Initial._op_opFixedStructList = IcePy.Operation(
    "opFixedStructList",
    "opFixedStructList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FixedStructList_t, True, 2),),
    (((), _Test_FixedStructList_t, True, 3),),
    ((), _Test_FixedStructList_t, True, 1),
    ())

Initial._op_opVarStructSeq = IcePy.Operation(
    "opVarStructSeq",
    "opVarStructSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_VarStructSeq_t, True, 2),),
    (((), _Test_VarStructSeq_t, True, 3),),
    ((), _Test_VarStructSeq_t, True, 1),
    ())

Initial._op_opIntIntDict = IcePy.Operation(
    "opIntIntDict",
    "opIntIntDict",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntIntDict_t, True, 2),),
    (((), _Test_IntIntDict_t, True, 3),),
    ((), _Test_IntIntDict_t, True, 1),
    ())

Initial._op_opStringIntDict = IcePy.Operation(
    "opStringIntDict",
    "opStringIntDict",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringIntDict_t, True, 2),),
    (((), _Test_StringIntDict_t, True, 3),),
    ((), _Test_StringIntDict_t, True, 1),
    ())

Initial._op_opClassAndUnknownOptional = IcePy.Operation(
    "opClassAndUnknownOptional",
    "opClassAndUnknownOptional",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_A_t, False, 0),),
    (),
    None,
    ())

Initial._op_opG = IcePy.Operation(
    "opG",
    "opG",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_G_t, False, 0),),
    (),
    ((), _Test_G_t, False, 0),
    ())

Initial._op_opVoid = IcePy.Operation(
    "opVoid",
    "opVoid",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Initial._op_opMStruct1 = IcePy.Operation(
    "opMStruct1",
    "opMStruct1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_SmallStruct_t, True, 1),
    ())

Initial._op_opMStruct2 = IcePy.Operation(
    "opMStruct2",
    "opMStruct2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SmallStruct_t, True, 2),),
    (((), _Test_SmallStruct_t, True, 3),),
    ((), _Test_SmallStruct_t, True, 1),
    ())

Initial._op_opMSeq1 = IcePy.Operation(
    "opMSeq1",
    "opMSeq1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_StringSeq_t, True, 1),
    ())

Initial._op_opMSeq2 = IcePy.Operation(
    "opMSeq2",
    "opMSeq2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeq_t, True, 2),),
    (((), _Test_StringSeq_t, True, 3),),
    ((), _Test_StringSeq_t, True, 1),
    ())

Initial._op_opMDict1 = IcePy.Operation(
    "opMDict1",
    "opMDict1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_StringIntDict_t, True, 1),
    ())

Initial._op_opMDict2 = IcePy.Operation(
    "opMDict2",
    "opMDict2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringIntDict_t, True, 2),),
    (((), _Test_StringIntDict_t, True, 3),),
    ((), _Test_StringIntDict_t, True, 1),
    ())

Initial._op_supportsJavaSerializable = IcePy.Operation(
    "supportsJavaSerializable",
    "supportsJavaSerializable",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

__all__ = ["Initial", "InitialPrx", "_Test_InitialPrx_t"]
