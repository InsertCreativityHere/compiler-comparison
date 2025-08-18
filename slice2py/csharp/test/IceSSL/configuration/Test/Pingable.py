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

from Test.Pingable_forward import _Test_PingablePrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class PingablePrx(ObjectPrx):

    def ping(self, context: dict[str, str] | None = None) -> None:
        return Pingable._op_ping.invoke(self, ((), context))

    def pingAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Pingable._op_ping.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> PingablePrx | None:
        return checkedCast(PingablePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[PingablePrx | None ]:
        return checkedCastAsync(PingablePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> PingablePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> PingablePrx | None:
        return uncheckedCast(PingablePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Pingable"

IcePy.defineProxy("::Test::Pingable", PingablePrx)

class Pingable(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Pingable", )
    _op_ping: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Pingable"

    @abstractmethod
    def ping(self, current: Current) -> None | Awaitable[None]:
        pass

Pingable._op_ping = IcePy.Operation(
    "ping",
    "ping",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Pingable", "PingablePrx", "_Test_PingablePrx_t"]
