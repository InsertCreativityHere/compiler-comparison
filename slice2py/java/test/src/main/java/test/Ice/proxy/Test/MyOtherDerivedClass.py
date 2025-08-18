# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Context import _Ice_Context_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.MyClass import MyClass
from Test.MyClass import MyClassPrx

from Test.MyOtherDerivedClass_forward import _Test_MyOtherDerivedClassPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class MyOtherDerivedClassPrx(MyClassPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyOtherDerivedClassPrx | None:
        return checkedCast(MyOtherDerivedClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyOtherDerivedClassPrx | None ]:
        return checkedCastAsync(MyOtherDerivedClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyOtherDerivedClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyOtherDerivedClassPrx | None:
        return uncheckedCast(MyOtherDerivedClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyOtherDerivedClass"

IcePy.defineProxy("::Test::MyOtherDerivedClass", MyOtherDerivedClassPrx)

class MyOtherDerivedClass(MyClass, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyClass", "::Test::MyOtherDerivedClass", )

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyOtherDerivedClass"

__all__ = ["MyOtherDerivedClass", "MyOtherDerivedClassPrx", "_Test_MyOtherDerivedClassPrx_t"]
