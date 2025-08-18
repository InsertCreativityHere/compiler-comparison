# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Identity import _Ice_Identity_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.ByteSeq import _Test_ByteSeq_t

from Test.PingReply_forward import _Test_PingReplyPrx_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from Test.PingReply import PingReplyPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def ping(self, reply: PingReplyPrx | None, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_ping.invoke(self, ((reply, ), context))

    def pingAsync(self, reply: PingReplyPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_ping.invokeAsync(self, ((reply, ), context))

    def sendByteSeq(self, seq: Sequence[int] | bytes, reply: PingReplyPrx | None, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_sendByteSeq.invoke(self, ((seq, reply), context))

    def sendByteSeqAsync(self, seq: Sequence[int] | bytes, reply: PingReplyPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_sendByteSeq.invokeAsync(self, ((seq, reply), context))

    def pingBiDir(self, reply: Identity, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_pingBiDir.invoke(self, ((reply, ), context))

    def pingBiDirAsync(self, reply: Identity, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_pingBiDir.invokeAsync(self, ((reply, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestIntfPrx | None:
        return checkedCast(TestIntfPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestIntfPrx | None ]:
        return checkedCastAsync(TestIntfPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestIntfPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestIntfPrx | None:
        return uncheckedCast(TestIntfPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

IcePy.defineProxy("::Test::TestIntf", TestIntfPrx)

class TestIntf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestIntf", )
    _op_ping: IcePy.Operation
    _op_sendByteSeq: IcePy.Operation
    _op_pingBiDir: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def ping(self, reply: PingReplyPrx | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def sendByteSeq(self, seq: bytes, reply: PingReplyPrx | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def pingBiDir(self, reply: Identity, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_ping = IcePy.Operation(
    "ping",
    "ping",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_PingReplyPrx_t, False, 0),),
    (),
    None,
    ())

TestIntf._op_sendByteSeq = IcePy.Operation(
    "sendByteSeq",
    "sendByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, False, 0), ((), _Test_PingReplyPrx_t, False, 0)),
    (),
    None,
    ())

TestIntf._op_pingBiDir = IcePy.Operation(
    "pingBiDir",
    "pingBiDir",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_Identity_t, False, 0),),
    (),
    None,
    ())

TestIntf._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_Test_TestIntfPrx_t"]
