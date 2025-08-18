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

from Test.MyException import _Test_MyException_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MyClassPrx(ObjectPrx):

    def opOneway(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_opOneway.invoke(self, ((), context))

    def opOnewayAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_opOneway.invokeAsync(self, ((), context))

    def opString(self, s1: str, context: dict[str, str] | None = None) -> tuple[str, str]:
        return MyClass._op_opString.invoke(self, ((s1, ), context))

    def opStringAsync(self, s1: str, context: dict[str, str] | None = None) -> Awaitable[tuple[str, str]]:
        return MyClass._op_opString.invokeAsync(self, ((s1, ), context))

    def opException(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_opException.invoke(self, ((), context))

    def opExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_opException.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_shutdown.invokeAsync(self, ((), context))

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
    _op_opOneway: IcePy.Operation
    _op_opString: IcePy.Operation
    _op_opException: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

    @abstractmethod
    def opOneway(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opString(self, s1: str, current: Current) -> tuple[str, str] | Awaitable[tuple[str, str]]:
        pass

    @abstractmethod
    def opException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

MyClass._op_opOneway = IcePy.Operation(
    "opOneway",
    "opOneway",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_opString = IcePy.Operation(
    "opString",
    "opString",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (((), IcePy._t_string, False, 0),),
    ((), IcePy._t_string, False, 0),
    ())

MyClass._op_opException = IcePy.Operation(
    "opException",
    "opException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_MyException_t,))

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

__all__ = ["MyClass", "MyClassPrx", "_Test_MyClassPrx_t"]
