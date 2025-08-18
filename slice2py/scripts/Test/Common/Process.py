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

from Test.Common.ProcessFailedException import _Test_Common_ProcessFailedException_t

from Test.Common.Process_forward import _Test_Common_ProcessPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ProcessPrx(ObjectPrx):

    def waitReady(self, timeout: int, context: dict[str, str] | None = None) -> None:
        return Process._op_waitReady.invoke(self, ((timeout, ), context))

    def waitReadyAsync(self, timeout: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Process._op_waitReady.invokeAsync(self, ((timeout, ), context))

    def waitSuccess(self, timeout: int, context: dict[str, str] | None = None) -> int:
        return Process._op_waitSuccess.invoke(self, ((timeout, ), context))

    def waitSuccessAsync(self, timeout: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return Process._op_waitSuccess.invokeAsync(self, ((timeout, ), context))

    def terminate(self, context: dict[str, str] | None = None) -> str:
        return Process._op_terminate.invoke(self, ((), context))

    def terminateAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return Process._op_terminate.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ProcessPrx | None:
        return checkedCast(ProcessPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ProcessPrx | None ]:
        return checkedCastAsync(ProcessPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ProcessPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ProcessPrx | None:
        return uncheckedCast(ProcessPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::Process"

IcePy.defineProxy("::Test::Common::Process", ProcessPrx)

class Process(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Common::Process", )
    _op_waitReady: IcePy.Operation
    _op_waitSuccess: IcePy.Operation
    _op_terminate: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::Process"

    @abstractmethod
    def waitReady(self, timeout: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def waitSuccess(self, timeout: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def terminate(self, current: Current) -> str | Awaitable[str]:
        pass

Process._op_waitReady = IcePy.Operation(
    "waitReady",
    "waitReady",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    (_Test_Common_ProcessFailedException_t,))

Process._op_waitSuccess = IcePy.Operation(
    "waitSuccess",
    "waitSuccess",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    ((), IcePy._t_int, False, 0),
    (_Test_Common_ProcessFailedException_t,))

Process._op_terminate = IcePy.Operation(
    "terminate",
    "terminate",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["Process", "ProcessPrx", "_Test_Common_ProcessPrx_t"]
