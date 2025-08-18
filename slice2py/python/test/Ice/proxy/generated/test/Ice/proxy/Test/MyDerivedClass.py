# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Context import _Ice_Context_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.proxy.Test.MyClass import MyClass
from generated.test.Ice.proxy.Test.MyClass import MyClassPrx

from generated.test.Ice.proxy.Test.MyDerivedClass_forward import _generated_test_Ice_proxy_Test_MyDerivedClassPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class MyDerivedClassPrx(MyClassPrx):

    def echo(self, obj: ObjectPrx | None, context: dict[str, str] | None = None) -> ObjectPrx | None:
        return MyDerivedClass._op_echo.invoke(self, ((obj, ), context))

    def echoAsync(self, obj: ObjectPrx | None, context: dict[str, str] | None = None) -> Awaitable[ObjectPrx | None]:
        return MyDerivedClass._op_echo.invokeAsync(self, ((obj, ), context))

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
        return "::Test::MyDerivedClass"

IcePy.defineProxy("::Test::MyDerivedClass", MyDerivedClassPrx)

class MyDerivedClass(MyClass, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyClass", "::Test::MyDerivedClass", )
    _op_echo: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyDerivedClass"

    @abstractmethod
    def echo(self, obj: ObjectPrx | None, current: Current) -> ObjectPrx | None | Awaitable[ObjectPrx | None]:
        pass

MyDerivedClass._op_echo = IcePy.Operation(
    "echo",
    "echo",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ObjectPrx_t, False, 0),),
    (),
    ((), _Ice_ObjectPrx_t, False, 0),
    ())

__all__ = ["MyDerivedClass", "MyDerivedClassPrx", "_generated_test_Ice_proxy_Test_MyDerivedClassPrx_t"]
