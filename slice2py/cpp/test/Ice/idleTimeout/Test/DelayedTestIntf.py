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

from Test.DelayedTestIntf_forward import _Test_DelayedTestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class DelayedTestIntfPrx(ObjectPrx):

    def sleep(self, ms: int, context: dict[str, str] | None = None) -> None:
        return DelayedTestIntf._op_sleep.invoke(self, ((ms, ), context))

    def sleepAsync(self, ms: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return DelayedTestIntf._op_sleep.invokeAsync(self, ((ms, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> DelayedTestIntfPrx | None:
        return checkedCast(DelayedTestIntfPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[DelayedTestIntfPrx | None ]:
        return checkedCastAsync(DelayedTestIntfPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> DelayedTestIntfPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> DelayedTestIntfPrx | None:
        return uncheckedCast(DelayedTestIntfPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::DelayedTestIntf"

IcePy.defineProxy("::Test::DelayedTestIntf", DelayedTestIntfPrx)

class DelayedTestIntf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::DelayedTestIntf", )
    _op_sleep: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::DelayedTestIntf"

    @abstractmethod
    def sleep(self, ms: int, current: Current) -> None | Awaitable[None]:
        pass

DelayedTestIntf._op_sleep = IcePy.Operation(
    "sleep",
    "sleep",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

__all__ = ["DelayedTestIntf", "DelayedTestIntfPrx", "_Test_DelayedTestIntfPrx_t"]
