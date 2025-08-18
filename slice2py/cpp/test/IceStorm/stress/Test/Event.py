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

from Test.Event_forward import _Test_EventPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class EventPrx(ObjectPrx):

    def pub(self, counter: int, context: dict[str, str] | None = None) -> None:
        return Event._op_pub.invoke(self, ((counter, ), context))

    def pubAsync(self, counter: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Event._op_pub.invokeAsync(self, ((counter, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> EventPrx | None:
        return checkedCast(EventPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[EventPrx | None ]:
        return checkedCastAsync(EventPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> EventPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> EventPrx | None:
        return uncheckedCast(EventPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Event"

IcePy.defineProxy("::Test::Event", EventPrx)

class Event(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Event", )
    _op_pub: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Event"

    @abstractmethod
    def pub(self, counter: int, current: Current) -> None | Awaitable[None]:
        pass

Event._op_pub = IcePy.Operation(
    "pub",
    "pub",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

__all__ = ["Event", "EventPrx", "_Test_EventPrx_t"]
