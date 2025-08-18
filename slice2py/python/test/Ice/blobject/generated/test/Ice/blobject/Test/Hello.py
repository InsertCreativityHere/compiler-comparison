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

from generated.test.Ice.blobject.Test.Hello_forward import _generated_test_Ice_blobject_Test_HelloPrx_t

from generated.test.Ice.blobject.Test.UE import _generated_test_Ice_blobject_Test_UE_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class HelloPrx(ObjectPrx):

    def sayHello(self, delay: int, context: dict[str, str] | None = None) -> None:
        return Hello._op_sayHello.invoke(self, ((delay, ), context))

    def sayHelloAsync(self, delay: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Hello._op_sayHello.invokeAsync(self, ((delay, ), context))

    def add(self, s1: int, s2: int, context: dict[str, str] | None = None) -> int:
        return Hello._op_add.invoke(self, ((s1, s2), context))

    def addAsync(self, s1: int, s2: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return Hello._op_add.invokeAsync(self, ((s1, s2), context))

    def raiseUE(self, context: dict[str, str] | None = None) -> None:
        return Hello._op_raiseUE.invoke(self, ((), context))

    def raiseUEAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Hello._op_raiseUE.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Hello._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Hello._op_shutdown.invokeAsync(self, ((), context))

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
    _op_add: IcePy.Operation
    _op_raiseUE: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Hello"

    @abstractmethod
    def sayHello(self, delay: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def add(self, s1: int, s2: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def raiseUE(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Hello._op_sayHello = IcePy.Operation(
    "sayHello",
    "sayHello",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

Hello._op_add = IcePy.Operation(
    "add",
    "add",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    ((), IcePy._t_int, False, 0),
    ())

Hello._op_raiseUE = IcePy.Operation(
    "raiseUE",
    "raiseUE",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_blobject_Test_UE_t,))

Hello._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Hello", "HelloPrx", "_generated_test_Ice_blobject_Test_HelloPrx_t"]
