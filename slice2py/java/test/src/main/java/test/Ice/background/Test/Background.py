# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.Background_forward import _Test_BackgroundPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class BackgroundPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return Background._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Background._op_op.invokeAsync(self, ((), context))

    def opWithPayload(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> None:
        return Background._op_opWithPayload.invoke(self, ((seq, ), context))

    def opWithPayloadAsync(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Background._op_opWithPayload.invokeAsync(self, ((seq, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Background._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Background._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> BackgroundPrx | None:
        return checkedCast(BackgroundPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[BackgroundPrx | None ]:
        return checkedCastAsync(BackgroundPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> BackgroundPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> BackgroundPrx | None:
        return uncheckedCast(BackgroundPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Background"

IcePy.defineProxy("::Test::Background", BackgroundPrx)

class Background(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Background", )
    _op_op: IcePy.Operation
    _op_opWithPayload: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Background"

    @abstractmethod
    def op(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opWithPayload(self, seq: bytes, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Background._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Background._op_opWithPayload = IcePy.Operation(
    "opWithPayload",
    "opWithPayload",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ByteSeq_t, False, 0),),
    (),
    None,
    ())

Background._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Background", "BackgroundPrx", "_Test_BackgroundPrx_t"]
