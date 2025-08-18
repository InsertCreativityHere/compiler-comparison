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

from Test.Responder_forward import _Test_ResponderPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ResponderPrx(ObjectPrx):

    def start(self, context: dict[str, str] | None = None) -> None:
        return Responder._op_start.invoke(self, ((), context))

    def startAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Responder._op_start.invokeAsync(self, ((), context))

    def stop(self, context: dict[str, str] | None = None) -> None:
        return Responder._op_stop.invoke(self, ((), context))

    def stopAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Responder._op_stop.invokeAsync(self, ((), context))

    def pendingResponseCount(self, context: dict[str, str] | None = None) -> int:
        return Responder._op_pendingResponseCount.invoke(self, ((), context))

    def pendingResponseCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return Responder._op_pendingResponseCount.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ResponderPrx | None:
        return checkedCast(ResponderPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ResponderPrx | None ]:
        return checkedCastAsync(ResponderPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ResponderPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ResponderPrx | None:
        return uncheckedCast(ResponderPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Responder"

IcePy.defineProxy("::Test::Responder", ResponderPrx)

class Responder(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Responder", )
    _op_start: IcePy.Operation
    _op_stop: IcePy.Operation
    _op_pendingResponseCount: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Responder"

    @abstractmethod
    def start(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def stop(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def pendingResponseCount(self, current: Current) -> int | Awaitable[int]:
        pass

Responder._op_start = IcePy.Operation(
    "start",
    "start",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Responder._op_stop = IcePy.Operation(
    "stop",
    "stop",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Responder._op_pendingResponseCount = IcePy.Operation(
    "pendingResponseCount",
    "pendingResponseCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

__all__ = ["Responder", "ResponderPrx", "_Test_ResponderPrx_t"]
