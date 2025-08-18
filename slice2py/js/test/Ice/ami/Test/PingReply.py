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

from Test.PingReply_forward import _Test_PingReplyPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class PingReplyPrx(ObjectPrx):

    def reply(self, context: dict[str, str] | None = None) -> None:
        return PingReply._op_reply.invoke(self, ((), context))

    def replyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return PingReply._op_reply.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> PingReplyPrx | None:
        return checkedCast(PingReplyPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[PingReplyPrx | None ]:
        return checkedCastAsync(PingReplyPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> PingReplyPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> PingReplyPrx | None:
        return uncheckedCast(PingReplyPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PingReply"

IcePy.defineProxy("::Test::PingReply", PingReplyPrx)

class PingReply(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::PingReply", )
    _op_reply: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PingReply"

    @abstractmethod
    def reply(self, current: Current) -> None | Awaitable[None]:
        pass

PingReply._op_reply = IcePy.Operation(
    "reply",
    "reply",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["PingReply", "PingReplyPrx", "_Test_PingReplyPrx_t"]
