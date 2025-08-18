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

from Inner.MyClass_forward import _Inner_MyClass_t

from Inner.MyInterface_forward import _Inner_MyInterfacePrx_t

from Test.Inner.MyStruct import _Test_Inner_MyStruct_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Inner.MyClass import MyClass
    from Test.Inner.MyStruct import MyStruct
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MyInterfacePrx(ObjectPrx):

    def opMyStruct(self, s1: MyStruct, context: dict[str, str] | None = None) -> tuple[MyStruct, MyStruct]:
        return MyInterface._op_opMyStruct.invoke(self, ((s1, ), context))

    def opMyStructAsync(self, s1: MyStruct, context: dict[str, str] | None = None) -> Awaitable[tuple[MyStruct, MyStruct]]:
        return MyInterface._op_opMyStruct.invokeAsync(self, ((s1, ), context))

    def opMyClass(self, c1: MyClass | None, context: dict[str, str] | None = None) -> tuple[MyClass | None, MyClass | None]:
        return MyInterface._op_opMyClass.invoke(self, ((c1, ), context))

    def opMyClassAsync(self, c1: MyClass | None, context: dict[str, str] | None = None) -> Awaitable[tuple[MyClass | None, MyClass | None]]:
        return MyInterface._op_opMyClass.invokeAsync(self, ((c1, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyInterfacePrx | None:
        return checkedCast(MyInterfacePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyInterfacePrx | None ]:
        return checkedCastAsync(MyInterfacePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyInterfacePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyInterfacePrx | None:
        return uncheckedCast(MyInterfacePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Inner::MyInterface"

IcePy.defineProxy("::Inner::MyInterface", MyInterfacePrx)

class MyInterface(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Inner::MyInterface", )
    _op_opMyStruct: IcePy.Operation
    _op_opMyClass: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Inner::MyInterface"

    @abstractmethod
    def opMyStruct(self, s1: MyStruct, current: Current) -> tuple[MyStruct, MyStruct] | Awaitable[tuple[MyStruct, MyStruct]]:
        pass

    @abstractmethod
    def opMyClass(self, c1: MyClass | None, current: Current) -> tuple[MyClass | None, MyClass | None] | Awaitable[tuple[MyClass | None, MyClass | None]]:
        pass

MyInterface._op_opMyStruct = IcePy.Operation(
    "opMyStruct",
    "opMyStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Inner_MyStruct_t, False, 0),),
    (((), _Test_Inner_MyStruct_t, False, 0),),
    ((), _Test_Inner_MyStruct_t, False, 0),
    ())

MyInterface._op_opMyClass = IcePy.Operation(
    "opMyClass",
    "opMyClass",
    OperationMode.Normal,
    None,
    (),
    (((), _Inner_MyClass_t, False, 0),),
    (((), _Inner_MyClass_t, False, 0),),
    ((), _Inner_MyClass_t, False, 0),
    ())

__all__ = ["MyInterface", "MyInterfacePrx", "_Inner_MyInterfacePrx_t"]
