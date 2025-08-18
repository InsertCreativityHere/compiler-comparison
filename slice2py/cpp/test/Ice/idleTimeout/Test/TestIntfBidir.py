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

from Test.TestIntfBidir_forward import _Test_TestIntfBidirPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.DelayedTestIntf import DelayedTestIntfPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfBidirPrx(ObjectPrx):

    def makeSleep(self, aborted: bool, ms: int, target: DelayedTestIntfPrx | None, context: dict[str, str] | None = None) -> None:
        return TestIntfBidir._op_makeSleep.invoke(self, ((aborted, ms, target), context))

    def makeSleepAsync(self, aborted: bool, ms: int, target: DelayedTestIntfPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntfBidir._op_makeSleep.invokeAsync(self, ((aborted, ms, target), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestIntfBidirPrx | None:
        return checkedCast(TestIntfBidirPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestIntfBidirPrx | None ]:
        return checkedCastAsync(TestIntfBidirPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestIntfBidirPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestIntfBidirPrx | None:
        return uncheckedCast(TestIntfBidirPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntfBidir"

IcePy.defineProxy("::Test::TestIntfBidir", TestIntfBidirPrx)

class TestIntfBidir(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestIntfBidir", )
    _op_makeSleep: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntfBidir"

    @abstractmethod
    def makeSleep(self, aborted: bool, ms: int, target: DelayedTestIntfPrx | None, current: Current) -> None | Awaitable[None]:
        pass

TestIntfBidir._op_makeSleep = IcePy.Operation(
    "makeSleep",
    "makeSleep",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0), ((), IcePy._t_int, False, 0), ((), _Test_DelayedTestIntfPrx_t, False, 0)),
    (),
    None,
    ())

__all__ = ["TestIntfBidir", "TestIntfBidirPrx", "_Test_TestIntfBidirPrx_t"]
