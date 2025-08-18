# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Test.MyInterface_forward import _Test_MyInterfacePrx_t

from abc import ABC

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MyInterfacePrx(ObjectPrx):

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

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyInterface"

__all__ = ["MyInterface", "MyInterfacePrx", "_Test_MyInterfacePrx_t"]
