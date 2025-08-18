# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Context import _Ice_Context_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.operations.Test.BoolBoolSD import _generated_test_Ice_operations_Test_BoolBoolSD_t

from generated.test.Ice.operations.Test.BoolS import _generated_test_Ice_operations_Test_BoolS_t

from generated.test.Ice.operations.Test.BoolSS import _generated_test_Ice_operations_Test_BoolSS_t

from generated.test.Ice.operations.Test.ByteBoolD import _generated_test_Ice_operations_Test_ByteBoolD_t

from generated.test.Ice.operations.Test.ByteBoolDS import _generated_test_Ice_operations_Test_ByteBoolDS_t

from generated.test.Ice.operations.Test.ByteByteSD import _generated_test_Ice_operations_Test_ByteByteSD_t

from generated.test.Ice.operations.Test.ByteS import _generated_test_Ice_operations_Test_ByteS_t

from generated.test.Ice.operations.Test.ByteSS import _generated_test_Ice_operations_Test_ByteSS_t

from generated.test.Ice.operations.Test.DoubleS import _generated_test_Ice_operations_Test_DoubleS_t

from generated.test.Ice.operations.Test.DoubleSS import _generated_test_Ice_operations_Test_DoubleSS_t

from generated.test.Ice.operations.Test.FloatS import _generated_test_Ice_operations_Test_FloatS_t

from generated.test.Ice.operations.Test.FloatSS import _generated_test_Ice_operations_Test_FloatSS_t

from generated.test.Ice.operations.Test.IntIntSD import _generated_test_Ice_operations_Test_IntIntSD_t

from generated.test.Ice.operations.Test.IntS import _generated_test_Ice_operations_Test_IntS_t

from generated.test.Ice.operations.Test.IntSS import _generated_test_Ice_operations_Test_IntSS_t

from generated.test.Ice.operations.Test.LongFloatD import _generated_test_Ice_operations_Test_LongFloatD_t

from generated.test.Ice.operations.Test.LongFloatDS import _generated_test_Ice_operations_Test_LongFloatDS_t

from generated.test.Ice.operations.Test.LongLongSD import _generated_test_Ice_operations_Test_LongLongSD_t

from generated.test.Ice.operations.Test.LongS import _generated_test_Ice_operations_Test_LongS_t

from generated.test.Ice.operations.Test.LongSS import _generated_test_Ice_operations_Test_LongSS_t

from generated.test.Ice.operations.Test.MyClass import MyClass
from generated.test.Ice.operations.Test.MyClass import MyClassPrx

from generated.test.Ice.operations.Test.MyClass_forward import _generated_test_Ice_operations_Test_MyClassPrx_t

from generated.test.Ice.operations.Test.MyEnum import _generated_test_Ice_operations_Test_MyEnum_t

from generated.test.Ice.operations.Test.MyEnumMyEnumSD import _generated_test_Ice_operations_Test_MyEnumMyEnumSD_t

from generated.test.Ice.operations.Test.MyEnumStringD import _generated_test_Ice_operations_Test_MyEnumStringD_t

from generated.test.Ice.operations.Test.MyEnumStringDS import _generated_test_Ice_operations_Test_MyEnumStringDS_t

from generated.test.Ice.operations.Test.MyStructMyEnumD import _generated_test_Ice_operations_Test_MyStructMyEnumD_t

from generated.test.Ice.operations.Test.MyStructMyEnumDS import _generated_test_Ice_operations_Test_MyStructMyEnumDS_t

from generated.test.Ice.operations.Test.ShortIntD import _generated_test_Ice_operations_Test_ShortIntD_t

from generated.test.Ice.operations.Test.ShortIntDS import _generated_test_Ice_operations_Test_ShortIntDS_t

from generated.test.Ice.operations.Test.ShortS import _generated_test_Ice_operations_Test_ShortS_t

from generated.test.Ice.operations.Test.ShortSS import _generated_test_Ice_operations_Test_ShortSS_t

from generated.test.Ice.operations.Test.ShortShortSD import _generated_test_Ice_operations_Test_ShortShortSD_t

from generated.test.Ice.operations.Test.StringDoubleSD import _generated_test_Ice_operations_Test_StringDoubleSD_t

from generated.test.Ice.operations.Test.StringFloatSD import _generated_test_Ice_operations_Test_StringFloatSD_t

from generated.test.Ice.operations.Test.StringMyEnumD import _generated_test_Ice_operations_Test_StringMyEnumD_t

from generated.test.Ice.operations.Test.StringMyEnumDS import _generated_test_Ice_operations_Test_StringMyEnumDS_t

from generated.test.Ice.operations.Test.StringS import _generated_test_Ice_operations_Test_StringS_t

from generated.test.Ice.operations.Test.StringSS import _generated_test_Ice_operations_Test_StringSS_t

from generated.test.Ice.operations.Test.StringSSS import _generated_test_Ice_operations_Test_StringSSS_t

from generated.test.Ice.operations.Test.StringStringD import _generated_test_Ice_operations_Test_StringStringD_t

from generated.test.Ice.operations.Test.StringStringDS import _generated_test_Ice_operations_Test_StringStringDS_t

from generated.test.Ice.operations.Test.StringStringSD import _generated_test_Ice_operations_Test_StringStringSD_t

from generated.test.Ice.operations.Test.Structure import _generated_test_Ice_operations_Test_Structure_t

from generated.test.Ice.operations.Test2.MyDerivedClass_forward import _generated_test_Ice_operations_Test2_MyDerivedClassPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence
    from generated.test.Ice.operations.Test.MyEnum import MyEnum
    from generated.test.Ice.operations.Test.MyStruct import MyStruct
    from generated.test.Ice.operations.Test.Structure import Structure


class MyDerivedClassPrx(MyClassPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyDerivedClassPrx | None:
        return checkedCast(MyDerivedClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyDerivedClassPrx | None ]:
        return checkedCastAsync(MyDerivedClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyDerivedClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyDerivedClassPrx | None:
        return uncheckedCast(MyDerivedClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test2::MyDerivedClass"

IcePy.defineProxy("::Test2::MyDerivedClass", MyDerivedClassPrx)

class MyDerivedClass(MyClass, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test2::MyDerivedClass", "::Test::MyClass", )

    @staticmethod
    def ice_staticId() -> str:
        return "::Test2::MyDerivedClass"

__all__ = ["MyDerivedClass", "MyDerivedClassPrx", "_generated_test_Ice_operations_Test2_MyDerivedClassPrx_t"]
