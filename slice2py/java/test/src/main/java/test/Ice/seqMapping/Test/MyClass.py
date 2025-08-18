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

from Test.MyClass_forward import _Test_MyClassPrx_t

from Test.SerialLarge import _Test_SerialLarge_t

from Test.SerialSmall import _Test_SerialSmall_t

from Test.SerialStruct import _Test_SerialStruct_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MyClassPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_shutdown.invokeAsync(self, ((), context))

    def opSerialSmallJava(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opSerialSmallJava.invoke(self, ((i, ), context))

    def opSerialSmallJavaAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opSerialSmallJava.invokeAsync(self, ((i, ), context))

    def opSerialLargeJava(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opSerialLargeJava.invoke(self, ((i, ), context))

    def opSerialLargeJavaAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opSerialLargeJava.invokeAsync(self, ((i, ), context))

    def opSerialStructJava(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opSerialStructJava.invoke(self, ((i, ), context))

    def opSerialStructJavaAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opSerialStructJava.invokeAsync(self, ((i, ), context))

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
    _op_opSerialSmallJava: IcePy.Operation
    _op_opSerialLargeJava: IcePy.Operation
    _op_opSerialStructJava: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opSerialSmallJava(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opSerialLargeJava(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opSerialStructJava(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
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

MyClass._op_opSerialSmallJava = IcePy.Operation(
    "opSerialSmallJava",
    "opSerialSmallJava",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SerialSmall_t, False, 0),),
    (((), _Test_SerialSmall_t, False, 0),),
    ((), _Test_SerialSmall_t, False, 0),
    ())

MyClass._op_opSerialLargeJava = IcePy.Operation(
    "opSerialLargeJava",
    "opSerialLargeJava",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SerialLarge_t, False, 0),),
    (((), _Test_SerialLarge_t, False, 0),),
    ((), _Test_SerialLarge_t, False, 0),
    ())

MyClass._op_opSerialStructJava = IcePy.Operation(
    "opSerialStructJava",
    "opSerialStructJava",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SerialStruct_t, False, 0),),
    (((), _Test_SerialStruct_t, False, 0),),
    ((), _Test_SerialStruct_t, False, 0),
    ())

__all__ = ["MyClass", "MyClassPrx", "_Test_MyClassPrx_t"]
