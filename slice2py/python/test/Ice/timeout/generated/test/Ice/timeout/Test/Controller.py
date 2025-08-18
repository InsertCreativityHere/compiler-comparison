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

from generated.test.Ice.timeout.Test.Controller_forward import _generated_test_Ice_timeout_Test_ControllerPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ControllerPrx(ObjectPrx):

    def holdAdapter(self, to: int, context: dict[str, str] | None = None) -> None:
        return Controller._op_holdAdapter.invoke(self, ((to, ), context))

    def holdAdapterAsync(self, to: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_holdAdapter.invokeAsync(self, ((to, ), context))

    def resumeAdapter(self, context: dict[str, str] | None = None) -> None:
        return Controller._op_resumeAdapter.invoke(self, ((), context))

    def resumeAdapterAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_resumeAdapter.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Controller._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Controller._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ControllerPrx | None:
        return checkedCast(ControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ControllerPrx | None ]:
        return checkedCastAsync(ControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ControllerPrx | None:
        return uncheckedCast(ControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Controller"

IcePy.defineProxy("::Test::Controller", ControllerPrx)

class Controller(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Controller", )
    _op_holdAdapter: IcePy.Operation
    _op_resumeAdapter: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Controller"

    @abstractmethod
    def holdAdapter(self, to: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def resumeAdapter(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Controller._op_holdAdapter = IcePy.Operation(
    "holdAdapter",
    "holdAdapter",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

Controller._op_resumeAdapter = IcePy.Operation(
    "resumeAdapter",
    "resumeAdapter",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Controller._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Controller", "ControllerPrx", "_generated_test_Ice_timeout_Test_ControllerPrx_t"]
