# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

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

from Test.MyClass import MyClass
from Test.MyClass import MyClassPrx

from Test.MyClass_forward import _Test_MyClassPrx_t

from Test.MyEnum import _Test_MyEnum_t

from Test.MyEnumMyEnumSD import _Test_MyEnumMyEnumSD_t

from Test.MyEnumStringD import _Test_MyEnumStringD_t

from Test.MyEnumStringDS import _Test_MyEnumStringDS_t

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

from Test.StringStringD import _Test_StringStringD_t

from Test.StringStringDS import _Test_StringStringDS_t

from Test.StringStringSD import _Test_StringStringSD_t

from Test.Structure import _Test_Structure_t

from Test2.MyDerivedClass_forward import _Test2_MyDerivedClassPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from Test.MyEnum import MyEnum
    from Test.Structure import Structure
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


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

__all__ = ["MyDerivedClass", "MyDerivedClassPrx", "_Test2_MyDerivedClassPrx_t"]
