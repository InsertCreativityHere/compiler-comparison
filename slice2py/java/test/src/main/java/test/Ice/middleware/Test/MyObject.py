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

from Test.MyObject_forward import _Test_MyObjectPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MyObjectPrx(ObjectPrx):

    def getName(self, context: dict[str, str] | None = None) -> str:
        return MyObject._op_getName.invoke(self, ((), context))

    def getNameAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return MyObject._op_getName.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyObjectPrx | None:
        return checkedCast(MyObjectPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyObjectPrx | None ]:
        return checkedCastAsync(MyObjectPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyObjectPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyObjectPrx | None:
        return uncheckedCast(MyObjectPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyObject"

IcePy.defineProxy("::Test::MyObject", MyObjectPrx)

class MyObject(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyObject", )
    _op_getName: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyObject"

    @abstractmethod
    def getName(self, current: Current) -> str | Awaitable[str]:
        pass

MyObject._op_getName = IcePy.Operation(
    "getName",
    "getName",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["MyObject", "MyObjectPrx", "_Test_MyObjectPrx_t"]
