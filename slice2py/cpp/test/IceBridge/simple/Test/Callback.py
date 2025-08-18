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

from Test.Callback_forward import _Test_CallbackPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class CallbackPrx(ObjectPrx):

    def ping(self, context: dict[str, str] | None = None) -> None:
        return Callback._op_ping.invoke(self, ((), context))

    def pingAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Callback._op_ping.invokeAsync(self, ((), context))

    def getCount(self, context: dict[str, str] | None = None) -> int:
        return Callback._op_getCount.invoke(self, ((), context))

    def getCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return Callback._op_getCount.invokeAsync(self, ((), context))

    def datagram(self, context: dict[str, str] | None = None) -> None:
        return Callback._op_datagram.invoke(self, ((), context))

    def datagramAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Callback._op_datagram.invokeAsync(self, ((), context))

    def getDatagramCount(self, context: dict[str, str] | None = None) -> int:
        return Callback._op_getDatagramCount.invoke(self, ((), context))

    def getDatagramCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return Callback._op_getDatagramCount.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> CallbackPrx | None:
        return checkedCast(CallbackPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[CallbackPrx | None ]:
        return checkedCastAsync(CallbackPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> CallbackPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> CallbackPrx | None:
        return uncheckedCast(CallbackPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Callback"

IcePy.defineProxy("::Test::Callback", CallbackPrx)

class Callback(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Callback", )
    _op_ping: IcePy.Operation
    _op_getCount: IcePy.Operation
    _op_datagram: IcePy.Operation
    _op_getDatagramCount: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Callback"

    @abstractmethod
    def ping(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def datagram(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getDatagramCount(self, current: Current) -> int | Awaitable[int]:
        pass

Callback._op_ping = IcePy.Operation(
    "ping",
    "ping",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Callback._op_getCount = IcePy.Operation(
    "getCount",
    "getCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

Callback._op_datagram = IcePy.Operation(
    "datagram",
    "datagram",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Callback._op_getDatagramCount = IcePy.Operation(
    "getDatagramCount",
    "getDatagramCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

__all__ = ["Callback", "CallbackPrx", "_Test_CallbackPrx_t"]
