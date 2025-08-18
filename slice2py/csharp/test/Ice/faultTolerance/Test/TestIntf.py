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

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_shutdown.invokeAsync(self, ((), context))

    def abort(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_abort.invoke(self, ((), context))

    def abortAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_abort.invokeAsync(self, ((), context))

    def idempotentAbort(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_idempotentAbort.invoke(self, ((), context))

    def idempotentAbortAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_idempotentAbort.invokeAsync(self, ((), context))

    def pid(self, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_pid.invoke(self, ((), context))

    def pidAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_pid.invokeAsync(self, ((), context))

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
    _op_abort: IcePy.Operation
    _op_idempotentAbort: IcePy.Operation
    _op_pid: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def abort(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def idempotentAbort(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def pid(self, current: Current) -> int | Awaitable[int]:
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

TestIntf._op_abort = IcePy.Operation(
    "abort",
    "abort",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_idempotentAbort = IcePy.Operation(
    "idempotentAbort",
    "idempotentAbort",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_pid = IcePy.Operation(
    "pid",
    "pid",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_Test_TestIntfPrx_t"]
