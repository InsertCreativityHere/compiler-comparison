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

from Test.MyClassMap import _Test_MyClassMap_t

from Test.MyClassSeq import _Test_MyClassSeq_t

from Test.MyClass_forward import _Test_MyClass_t

from Test.MyEnum import _Test_MyEnum_t

from Test.MyInterface_forward import _Test_MyInterfacePrx_t

from Test.MyOtherClass_forward import _Test_MyOtherClass_t

from Test.MyOtherStruct import _Test_MyOtherStruct_t

from Test.MyStruct import _Test_MyStruct_t

from Test.MyStructMap import _Test_MyStructMap_t

from Test.MyStructSeq import _Test_MyStructSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.MyClass import MyClass
    from Test.MyEnum import MyEnum
    from Test.MyOtherClass import MyOtherClass
    from Test.MyOtherStruct import MyOtherStruct
    from Test.MyStruct import MyStruct
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class MyInterfacePrx(ObjectPrx):

    def opMyStruct(self, s1: MyStruct, context: dict[str, str] | None = None) -> tuple[MyStruct, MyStruct]:
        return MyInterface._op_opMyStruct.invoke(self, ((s1, ), context))

    def opMyStructAsync(self, s1: MyStruct, context: dict[str, str] | None = None) -> Awaitable[tuple[MyStruct, MyStruct]]:
        return MyInterface._op_opMyStruct.invokeAsync(self, ((s1, ), context))

    def opMyStructSeq(self, s1: Sequence[MyStruct], context: dict[str, str] | None = None) -> tuple[list[MyStruct], list[MyStruct]]:
        return MyInterface._op_opMyStructSeq.invoke(self, ((s1, ), context))

    def opMyStructSeqAsync(self, s1: Sequence[MyStruct], context: dict[str, str] | None = None) -> Awaitable[tuple[list[MyStruct], list[MyStruct]]]:
        return MyInterface._op_opMyStructSeq.invokeAsync(self, ((s1, ), context))

    def opMyStructMap(self, s1: Mapping[str, MyStruct], context: dict[str, str] | None = None) -> tuple[dict[str, MyStruct], dict[str, MyStruct]]:
        return MyInterface._op_opMyStructMap.invoke(self, ((s1, ), context))

    def opMyStructMapAsync(self, s1: Mapping[str, MyStruct], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, MyStruct], dict[str, MyStruct]]]:
        return MyInterface._op_opMyStructMap.invokeAsync(self, ((s1, ), context))

    def opMyClass(self, c1: MyClass | None, context: dict[str, str] | None = None) -> tuple[MyClass | None, MyClass | None]:
        return MyInterface._op_opMyClass.invoke(self, ((c1, ), context))

    def opMyClassAsync(self, c1: MyClass | None, context: dict[str, str] | None = None) -> Awaitable[tuple[MyClass | None, MyClass | None]]:
        return MyInterface._op_opMyClass.invokeAsync(self, ((c1, ), context))

    def opMyClassSeq(self, c1: Sequence[MyClass | None], context: dict[str, str] | None = None) -> tuple[list[MyClass | None], list[MyClass | None]]:
        return MyInterface._op_opMyClassSeq.invoke(self, ((c1, ), context))

    def opMyClassSeqAsync(self, c1: Sequence[MyClass | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[MyClass | None], list[MyClass | None]]]:
        return MyInterface._op_opMyClassSeq.invokeAsync(self, ((c1, ), context))

    def opMyClassMap(self, c1: Mapping[str, MyClass | None], context: dict[str, str] | None = None) -> tuple[dict[str, MyClass | None], dict[str, MyClass | None]]:
        return MyInterface._op_opMyClassMap.invoke(self, ((c1, ), context))

    def opMyClassMapAsync(self, c1: Mapping[str, MyClass | None], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, MyClass | None], dict[str, MyClass | None]]]:
        return MyInterface._op_opMyClassMap.invokeAsync(self, ((c1, ), context))

    def opMyEnum(self, e1: MyEnum, context: dict[str, str] | None = None) -> MyEnum:
        return MyInterface._op_opMyEnum.invoke(self, ((e1, ), context))

    def opMyEnumAsync(self, e1: MyEnum, context: dict[str, str] | None = None) -> Awaitable[MyEnum]:
        return MyInterface._op_opMyEnum.invokeAsync(self, ((e1, ), context))

    def opMyOtherStruct(self, s1: MyOtherStruct, context: dict[str, str] | None = None) -> MyOtherStruct:
        return MyInterface._op_opMyOtherStruct.invoke(self, ((s1, ), context))

    def opMyOtherStructAsync(self, s1: MyOtherStruct, context: dict[str, str] | None = None) -> Awaitable[MyOtherStruct]:
        return MyInterface._op_opMyOtherStruct.invokeAsync(self, ((s1, ), context))

    def opMyOtherClass(self, c1: MyOtherClass | None, context: dict[str, str] | None = None) -> MyOtherClass | None:
        return MyInterface._op_opMyOtherClass.invoke(self, ((c1, ), context))

    def opMyOtherClassAsync(self, c1: MyOtherClass | None, context: dict[str, str] | None = None) -> Awaitable[MyOtherClass | None]:
        return MyInterface._op_opMyOtherClass.invokeAsync(self, ((c1, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return MyInterface._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyInterface._op_shutdown.invokeAsync(self, ((), context))

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
        return "::Test::MyInterface"

IcePy.defineProxy("::Test::MyInterface", MyInterfacePrx)

class MyInterface(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyInterface", )
    _op_opMyStruct: IcePy.Operation
    _op_opMyStructSeq: IcePy.Operation
    _op_opMyStructMap: IcePy.Operation
    _op_opMyClass: IcePy.Operation
    _op_opMyClassSeq: IcePy.Operation
    _op_opMyClassMap: IcePy.Operation
    _op_opMyEnum: IcePy.Operation
    _op_opMyOtherStruct: IcePy.Operation
    _op_opMyOtherClass: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyInterface"

    @abstractmethod
    def opMyStruct(self, s1: MyStruct, current: Current) -> tuple[MyStruct, MyStruct] | Awaitable[tuple[MyStruct, MyStruct]]:
        pass

    @abstractmethod
    def opMyStructSeq(self, s1: list[MyStruct], current: Current) -> tuple[Sequence[MyStruct], Sequence[MyStruct]] | Awaitable[tuple[Sequence[MyStruct], Sequence[MyStruct]]]:
        pass

    @abstractmethod
    def opMyStructMap(self, s1: dict[str, MyStruct], current: Current) -> tuple[Mapping[str, MyStruct], Mapping[str, MyStruct]] | Awaitable[tuple[Mapping[str, MyStruct], Mapping[str, MyStruct]]]:
        pass

    @abstractmethod
    def opMyClass(self, c1: MyClass | None, current: Current) -> tuple[MyClass | None, MyClass | None] | Awaitable[tuple[MyClass | None, MyClass | None]]:
        pass

    @abstractmethod
    def opMyClassSeq(self, c1: list[MyClass | None], current: Current) -> tuple[Sequence[MyClass | None], Sequence[MyClass | None]] | Awaitable[tuple[Sequence[MyClass | None], Sequence[MyClass | None]]]:
        pass

    @abstractmethod
    def opMyClassMap(self, c1: dict[str, MyClass | None], current: Current) -> tuple[Mapping[str, MyClass | None], Mapping[str, MyClass | None]] | Awaitable[tuple[Mapping[str, MyClass | None], Mapping[str, MyClass | None]]]:
        pass

    @abstractmethod
    def opMyEnum(self, e1: MyEnum, current: Current) -> MyEnum | Awaitable[MyEnum]:
        pass

    @abstractmethod
    def opMyOtherStruct(self, s1: MyOtherStruct, current: Current) -> MyOtherStruct | Awaitable[MyOtherStruct]:
        pass

    @abstractmethod
    def opMyOtherClass(self, c1: MyOtherClass | None, current: Current) -> MyOtherClass | None | Awaitable[MyOtherClass | None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

MyInterface._op_opMyStruct = IcePy.Operation(
    "opMyStruct",
    "opMyStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyStruct_t, False, 0),),
    (((), _Test_MyStruct_t, False, 0),),
    ((), _Test_MyStruct_t, False, 0),
    ())

MyInterface._op_opMyStructSeq = IcePy.Operation(
    "opMyStructSeq",
    "opMyStructSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyStructSeq_t, False, 0),),
    (((), _Test_MyStructSeq_t, False, 0),),
    ((), _Test_MyStructSeq_t, False, 0),
    ())

MyInterface._op_opMyStructMap = IcePy.Operation(
    "opMyStructMap",
    "opMyStructMap",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyStructMap_t, False, 0),),
    (((), _Test_MyStructMap_t, False, 0),),
    ((), _Test_MyStructMap_t, False, 0),
    ())

MyInterface._op_opMyClass = IcePy.Operation(
    "opMyClass",
    "opMyClass",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyClass_t, False, 0),),
    (((), _Test_MyClass_t, False, 0),),
    ((), _Test_MyClass_t, False, 0),
    ())

MyInterface._op_opMyClassSeq = IcePy.Operation(
    "opMyClassSeq",
    "opMyClassSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyClassSeq_t, False, 0),),
    (((), _Test_MyClassSeq_t, False, 0),),
    ((), _Test_MyClassSeq_t, False, 0),
    ())

MyInterface._op_opMyClassMap = IcePy.Operation(
    "opMyClassMap",
    "opMyClassMap",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyClassMap_t, False, 0),),
    (((), _Test_MyClassMap_t, False, 0),),
    ((), _Test_MyClassMap_t, False, 0),
    ())

MyInterface._op_opMyEnum = IcePy.Operation(
    "opMyEnum",
    "opMyEnum",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyEnum_t, False, 0),),
    (),
    ((), _Test_MyEnum_t, False, 0),
    ())

MyInterface._op_opMyOtherStruct = IcePy.Operation(
    "opMyOtherStruct",
    "opMyOtherStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyOtherStruct_t, False, 0),),
    (),
    ((), _Test_MyOtherStruct_t, False, 0),
    ())

MyInterface._op_opMyOtherClass = IcePy.Operation(
    "opMyOtherClass",
    "opMyOtherClass",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MyOtherClass_t, False, 0),),
    (),
    ((), _Test_MyOtherClass_t, False, 0),
    ())

MyInterface._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["MyInterface", "MyInterfacePrx", "_Test_MyInterfacePrx_t"]
