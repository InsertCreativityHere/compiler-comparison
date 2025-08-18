# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Glacier2.Session import Session as _m_Glacier2_Session_Session
from Glacier2.Session import SessionPrx as _m_Glacier2_Session_SessionPrx

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.Session_forward import _Test_SessionPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class SessionPrx(_m_Glacier2_Session_SessionPrx):

    def destroyFromClient(self, context: dict[str, str] | None = None) -> None:
        return Session._op_destroyFromClient.invoke(self, ((), context))

    def destroyFromClientAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Session._op_destroyFromClient.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Session._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Session._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> SessionPrx | None:
        return checkedCast(SessionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[SessionPrx | None ]:
        return checkedCastAsync(SessionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> SessionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> SessionPrx | None:
        return uncheckedCast(SessionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Session"

IcePy.defineProxy("::Test::Session", SessionPrx)

class Session(_m_Glacier2_Session_Session, ABC):

    _ice_ids: Sequence[str] = ("::Glacier2::Session", "::Ice::Object", "::Test::Session", )
    _op_destroyFromClient: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Session"

    @abstractmethod
    def destroyFromClient(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Session._op_destroyFromClient = IcePy.Operation(
    "destroyFromClient",
    "destroyFromClient",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Session._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Session", "SessionPrx", "_Test_SessionPrx_t"]
