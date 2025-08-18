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

from Test.Single_forward import _Test_SinglePrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class SinglePrx(ObjectPrx):

    def event(self, i: int, context: dict[str, str] | None = None) -> None:
        return Single._op_event.invoke(self, ((i, ), context))

    def eventAsync(self, i: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Single._op_event.invokeAsync(self, ((i, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> SinglePrx | None:
        return checkedCast(SinglePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[SinglePrx | None ]:
        return checkedCastAsync(SinglePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> SinglePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> SinglePrx | None:
        return uncheckedCast(SinglePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Single"

IcePy.defineProxy("::Test::Single", SinglePrx)

class Single(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Single", )
    _op_event: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Single"

    @abstractmethod
    def event(self, i: int, current: Current) -> None | Awaitable[None]:
        pass

Single._op_event = IcePy.Operation(
    "event",
    "event",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

__all__ = ["Single", "SinglePrx", "_Test_SinglePrx_t"]
