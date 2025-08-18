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

from generated.test.Ice.thread.Test.RemoteCommunicator_forward import _generated_test_Ice_thread_Test_RemoteCommunicatorPrx_t

from generated.test.Ice.thread.Test.TestIntf_forward import _generated_test_Ice_thread_Test_TestIntfPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.thread.Test.TestIntf import TestIntfPrx


class RemoteCommunicatorPrx(ObjectPrx):

    def getObject(self, context: dict[str, str] | None = None) -> TestIntfPrx | None:
        return RemoteCommunicator._op_getObject.invoke(self, ((), context))

    def getObjectAsync(self, context: dict[str, str] | None = None) -> Awaitable[TestIntfPrx | None]:
        return RemoteCommunicator._op_getObject.invokeAsync(self, ((), context))

    def getThreadStartCount(self, context: dict[str, str] | None = None) -> int:
        return RemoteCommunicator._op_getThreadStartCount.invoke(self, ((), context))

    def getThreadStartCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return RemoteCommunicator._op_getThreadStartCount.invokeAsync(self, ((), context))

    def getThreadStopCount(self, context: dict[str, str] | None = None) -> int:
        return RemoteCommunicator._op_getThreadStopCount.invoke(self, ((), context))

    def getThreadStopCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return RemoteCommunicator._op_getThreadStopCount.invokeAsync(self, ((), context))

    def destroy(self, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicator._op_destroy.invoke(self, ((), context))

    def destroyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicator._op_destroy.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> RemoteCommunicatorPrx | None:
        return checkedCast(RemoteCommunicatorPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[RemoteCommunicatorPrx | None ]:
        return checkedCastAsync(RemoteCommunicatorPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> RemoteCommunicatorPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> RemoteCommunicatorPrx | None:
        return uncheckedCast(RemoteCommunicatorPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteCommunicator"

IcePy.defineProxy("::Test::RemoteCommunicator", RemoteCommunicatorPrx)

class RemoteCommunicator(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::RemoteCommunicator", )
    _op_getObject: IcePy.Operation
    _op_getThreadStartCount: IcePy.Operation
    _op_getThreadStopCount: IcePy.Operation
    _op_destroy: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteCommunicator"

    @abstractmethod
    def getObject(self, current: Current) -> TestIntfPrx | None | Awaitable[TestIntfPrx | None]:
        pass

    @abstractmethod
    def getThreadStartCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def getThreadStopCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def destroy(self, current: Current) -> None | Awaitable[None]:
        pass

RemoteCommunicator._op_getObject = IcePy.Operation(
    "getObject",
    "getObject",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _generated_test_Ice_thread_Test_TestIntfPrx_t, False, 0),
    ())

RemoteCommunicator._op_getThreadStartCount = IcePy.Operation(
    "getThreadStartCount",
    "getThreadStartCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

RemoteCommunicator._op_getThreadStopCount = IcePy.Operation(
    "getThreadStopCount",
    "getThreadStopCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

RemoteCommunicator._op_destroy = IcePy.Operation(
    "destroy",
    "destroy",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["RemoteCommunicator", "RemoteCommunicatorPrx", "_generated_test_Ice_thread_Test_RemoteCommunicatorPrx_t"]
