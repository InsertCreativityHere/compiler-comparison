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

from Test.Retry_forward import _Test_RetryPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class RetryPrx(ObjectPrx):

    def op(self, kill: bool, context: dict[str, str] | None = None) -> None:
        return Retry._op_op.invoke(self, ((kill, ), context))

    def opAsync(self, kill: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Retry._op_op.invokeAsync(self, ((kill, ), context))

    def opIdempotent(self, c: int, context: dict[str, str] | None = None) -> int:
        return Retry._op_opIdempotent.invoke(self, ((c, ), context))

    def opIdempotentAsync(self, c: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return Retry._op_opIdempotent.invokeAsync(self, ((c, ), context))

    def opNotIdempotent(self, context: dict[str, str] | None = None) -> None:
        return Retry._op_opNotIdempotent.invoke(self, ((), context))

    def opNotIdempotentAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Retry._op_opNotIdempotent.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Retry._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Retry._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> RetryPrx | None:
        return checkedCast(RetryPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[RetryPrx | None ]:
        return checkedCastAsync(RetryPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> RetryPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> RetryPrx | None:
        return uncheckedCast(RetryPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Retry"

IcePy.defineProxy("::Test::Retry", RetryPrx)

class Retry(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Retry", )
    _op_op: IcePy.Operation
    _op_opIdempotent: IcePy.Operation
    _op_opNotIdempotent: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Retry"

    @abstractmethod
    def op(self, kill: bool, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opIdempotent(self, c: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def opNotIdempotent(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Retry._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

Retry._op_opIdempotent = IcePy.Operation(
    "opIdempotent",
    "opIdempotent",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    ((), IcePy._t_int, False, 0),
    ())

Retry._op_opNotIdempotent = IcePy.Operation(
    "opNotIdempotent",
    "opNotIdempotent",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Retry._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Retry", "RetryPrx", "_Test_RetryPrx_t"]
