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

from Test.Priority_forward import _Test_PriorityPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class PriorityPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Priority._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Priority._op_shutdown.invokeAsync(self, ((), context))

    def getPriority(self, context: dict[str, str] | None = None) -> int:
        return Priority._op_getPriority.invoke(self, ((), context))

    def getPriorityAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return Priority._op_getPriority.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> PriorityPrx | None:
        return checkedCast(PriorityPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[PriorityPrx | None ]:
        return checkedCastAsync(PriorityPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> PriorityPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> PriorityPrx | None:
        return uncheckedCast(PriorityPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Priority"

IcePy.defineProxy("::Test::Priority", PriorityPrx)

class Priority(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Priority", )
    _op_shutdown: IcePy.Operation
    _op_getPriority: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Priority"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getPriority(self, current: Current) -> int | Awaitable[int]:
        pass

Priority._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Priority._op_getPriority = IcePy.Operation(
    "getPriority",
    "getPriority",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

__all__ = ["Priority", "PriorityPrx", "_Test_PriorityPrx_t"]
