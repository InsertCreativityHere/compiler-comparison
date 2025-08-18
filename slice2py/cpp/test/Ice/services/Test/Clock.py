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

from Test.Clock_forward import _Test_ClockPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ClockPrx(ObjectPrx):

    def tick(self, time: str, context: dict[str, str] | None = None) -> None:
        return Clock._op_tick.invoke(self, ((time, ), context))

    def tickAsync(self, time: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Clock._op_tick.invokeAsync(self, ((time, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ClockPrx | None:
        return checkedCast(ClockPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ClockPrx | None ]:
        return checkedCastAsync(ClockPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ClockPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ClockPrx | None:
        return uncheckedCast(ClockPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Clock"

IcePy.defineProxy("::Test::Clock", ClockPrx)

class Clock(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Clock", )
    _op_tick: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Clock"

    @abstractmethod
    def tick(self, time: str, current: Current) -> None | Awaitable[None]:
        pass

Clock._op_tick = IcePy.Operation(
    "tick",
    "tick",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

__all__ = ["Clock", "ClockPrx", "_Test_ClockPrx_t"]
