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

from Test.Hello_forward import _Test_HelloPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class HelloPrx(ObjectPrx):

    def sayHello(self, context: dict[str, str] | None = None) -> None:
        return Hello._op_sayHello.invoke(self, ((), context))

    def sayHelloAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Hello._op_sayHello.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> HelloPrx | None:
        return checkedCast(HelloPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[HelloPrx | None ]:
        return checkedCastAsync(HelloPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> HelloPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> HelloPrx | None:
        return uncheckedCast(HelloPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Hello"

IcePy.defineProxy("::Test::Hello", HelloPrx)

class Hello(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Hello", )
    _op_sayHello: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Hello"

    @abstractmethod
    def sayHello(self, current: Current) -> None | Awaitable[None]:
        pass

Hello._op_sayHello = IcePy.Operation(
    "sayHello",
    "sayHello",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Hello", "HelloPrx", "_Test_HelloPrx_t"]
