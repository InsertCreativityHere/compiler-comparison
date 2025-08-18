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

from generated.test.Ice.scope.Inner.Test.Inner2.MyInterface_forward import _generated_test_Ice_scope_Inner_Test_Inner2_MyInterfacePrx_t

from generated.test.Ice.scope.Test.MyClassMap import _generated_test_Ice_scope_Test_MyClassMap_t

from generated.test.Ice.scope.Test.MyClassSeq import _generated_test_Ice_scope_Test_MyClassSeq_t

from generated.test.Ice.scope.Test.MyClass_forward import _generated_test_Ice_scope_Test_MyClass_t

from generated.test.Ice.scope.Test.MyStruct import _generated_test_Ice_scope_Test_MyStruct_t

from generated.test.Ice.scope.Test.MyStructMap import _generated_test_Ice_scope_Test_MyStructMap_t

from generated.test.Ice.scope.Test.MyStructSeq import _generated_test_Ice_scope_Test_MyStructSeq_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence
    from generated.test.Ice.scope.Test.MyClass import MyClass
    from generated.test.Ice.scope.Test.MyStruct import MyStruct


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
        return "::Inner::Test::Inner2::MyInterface"

IcePy.defineProxy("::Inner::Test::Inner2::MyInterface", MyInterfacePrx)

class MyInterface(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Inner::Test::Inner2::MyInterface", )
    _op_opMyStruct: IcePy.Operation
    _op_opMyStructSeq: IcePy.Operation
    _op_opMyStructMap: IcePy.Operation
    _op_opMyClass: IcePy.Operation
    _op_opMyClassSeq: IcePy.Operation
    _op_opMyClassMap: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Inner::Test::Inner2::MyInterface"

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
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

MyInterface._op_opMyStruct = IcePy.Operation(
    "opMyStruct",
    "opMyStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_scope_Test_MyStruct_t, False, 0),),
    (((), _generated_test_Ice_scope_Test_MyStruct_t, False, 0),),
    ((), _generated_test_Ice_scope_Test_MyStruct_t, False, 0),
    ())

MyInterface._op_opMyStructSeq = IcePy.Operation(
    "opMyStructSeq",
    "opMyStructSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_scope_Test_MyStructSeq_t, False, 0),),
    (((), _generated_test_Ice_scope_Test_MyStructSeq_t, False, 0),),
    ((), _generated_test_Ice_scope_Test_MyStructSeq_t, False, 0),
    ())

MyInterface._op_opMyStructMap = IcePy.Operation(
    "opMyStructMap",
    "opMyStructMap",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_scope_Test_MyStructMap_t, False, 0),),
    (((), _generated_test_Ice_scope_Test_MyStructMap_t, False, 0),),
    ((), _generated_test_Ice_scope_Test_MyStructMap_t, False, 0),
    ())

MyInterface._op_opMyClass = IcePy.Operation(
    "opMyClass",
    "opMyClass",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_scope_Test_MyClass_t, False, 0),),
    (((), _generated_test_Ice_scope_Test_MyClass_t, False, 0),),
    ((), _generated_test_Ice_scope_Test_MyClass_t, False, 0),
    ())

MyInterface._op_opMyClassSeq = IcePy.Operation(
    "opMyClassSeq",
    "opMyClassSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_scope_Test_MyClassSeq_t, False, 0),),
    (((), _generated_test_Ice_scope_Test_MyClassSeq_t, False, 0),),
    ((), _generated_test_Ice_scope_Test_MyClassSeq_t, False, 0),
    ())

MyInterface._op_opMyClassMap = IcePy.Operation(
    "opMyClassMap",
    "opMyClassMap",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_scope_Test_MyClassMap_t, False, 0),),
    (((), _generated_test_Ice_scope_Test_MyClassMap_t, False, 0),),
    ((), _generated_test_Ice_scope_Test_MyClassMap_t, False, 0),
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

__all__ = ["MyInterface", "MyInterfacePrx", "_generated_test_Ice_scope_Inner_Test_Inner2_MyInterfacePrx_t"]
