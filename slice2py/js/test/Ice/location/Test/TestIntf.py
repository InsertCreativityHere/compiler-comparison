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

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.Hello import HelloPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_shutdown.invokeAsync(self, ((), context))

    def getHello(self, context: dict[str, str] | None = None) -> HelloPrx | None:
        return TestIntf._op_getHello.invoke(self, ((), context))

    def getHelloAsync(self, context: dict[str, str] | None = None) -> Awaitable[HelloPrx | None]:
        return TestIntf._op_getHello.invokeAsync(self, ((), context))

    def getReplicatedHello(self, context: dict[str, str] | None = None) -> HelloPrx | None:
        return TestIntf._op_getReplicatedHello.invoke(self, ((), context))

    def getReplicatedHelloAsync(self, context: dict[str, str] | None = None) -> Awaitable[HelloPrx | None]:
        return TestIntf._op_getReplicatedHello.invokeAsync(self, ((), context))

    def migrateHello(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_migrateHello.invoke(self, ((), context))

    def migrateHelloAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_migrateHello.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestIntfPrx | None:
        return checkedCast(TestIntfPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestIntfPrx | None ]:
        return checkedCastAsync(TestIntfPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestIntfPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestIntfPrx | None:
        return uncheckedCast(TestIntfPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

IcePy.defineProxy("::Test::TestIntf", TestIntfPrx)

class TestIntf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestIntf", )
    _op_shutdown: IcePy.Operation
    _op_getHello: IcePy.Operation
    _op_getReplicatedHello: IcePy.Operation
    _op_migrateHello: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getHello(self, current: Current) -> HelloPrx | None | Awaitable[HelloPrx | None]:
        pass

    @abstractmethod
    def getReplicatedHello(self, current: Current) -> HelloPrx | None | Awaitable[HelloPrx | None]:
        pass

    @abstractmethod
    def migrateHello(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_getHello = IcePy.Operation(
    "getHello",
    "getHello",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_HelloPrx_t, False, 0),
    ())

TestIntf._op_getReplicatedHello = IcePy.Operation(
    "getReplicatedHello",
    "getReplicatedHello",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_HelloPrx_t, False, 0),
    ())

TestIntf._op_migrateHello = IcePy.Operation(
    "migrateHello",
    "migrateHello",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_Test_TestIntfPrx_t"]
