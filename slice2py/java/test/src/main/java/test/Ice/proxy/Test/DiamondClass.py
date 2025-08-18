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

from Test.DiamondClass_forward import _Test_DiamondClassPrx_t

from Test.MyDerivedClass import MyDerivedClass
from Test.MyDerivedClass import MyDerivedClassPrx

from Test.MyOtherDerivedClass import MyOtherDerivedClass
from Test.MyOtherDerivedClass import MyOtherDerivedClassPrx

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


class DiamondClassPrx(MyDerivedClassPrx, MyOtherDerivedClassPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> DiamondClassPrx | None:
        return checkedCast(DiamondClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[DiamondClassPrx | None ]:
        return checkedCastAsync(DiamondClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> DiamondClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> DiamondClassPrx | None:
        return uncheckedCast(DiamondClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::DiamondClass"

IcePy.defineProxy("::Test::DiamondClass", DiamondClassPrx)

class DiamondClass(MyDerivedClass, MyOtherDerivedClass, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::DiamondClass", "::Test::MyClass", "::Test::MyDerivedClass", "::Test::MyOtherDerivedClass", )

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::DiamondClass"

__all__ = ["DiamondClass", "DiamondClassPrx", "_Test_DiamondClassPrx_t"]
