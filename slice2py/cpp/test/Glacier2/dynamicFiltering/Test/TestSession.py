# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Glacier2.Session import Session
from Glacier2.Session import SessionPrx

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.TestSession_forward import _Test_TestSessionPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestSessionPrx(SessionPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestSession._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestSession._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestSessionPrx | None:
        return checkedCast(TestSessionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestSessionPrx | None ]:
        return checkedCastAsync(TestSessionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestSessionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestSessionPrx | None:
        return uncheckedCast(TestSessionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestSession"

IcePy.defineProxy("::Test::TestSession", TestSessionPrx)

class TestSession(Session, ABC):

    _ice_ids: Sequence[str] = ("::Glacier2::Session", "::Ice::Object", "::Test::TestSession", )
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestSession"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestSession._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestSession", "TestSessionPrx", "_Test_TestSessionPrx_t"]
