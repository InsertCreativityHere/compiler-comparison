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

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.timeout.Test.ByteSeq import _generated_test_Ice_timeout_Test_ByteSeq_t

from generated.test.Ice.timeout.Test.Timeout_forward import _generated_test_Ice_timeout_Test_TimeoutPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TimeoutPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return Timeout._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Timeout._op_op.invokeAsync(self, ((), context))

    def sendData(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> None:
        return Timeout._op_sendData.invoke(self, ((seq, ), context))

    def sendDataAsync(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Timeout._op_sendData.invokeAsync(self, ((seq, ), context))

    def sleep(self, to: int, context: dict[str, str] | None = None) -> None:
        return Timeout._op_sleep.invoke(self, ((to, ), context))

    def sleepAsync(self, to: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Timeout._op_sleep.invokeAsync(self, ((to, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TimeoutPrx | None:
        return checkedCast(TimeoutPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TimeoutPrx | None ]:
        return checkedCastAsync(TimeoutPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TimeoutPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TimeoutPrx | None:
        return uncheckedCast(TimeoutPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Timeout"

IcePy.defineProxy("::Test::Timeout", TimeoutPrx)

class Timeout(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Timeout", )
    _op_op: IcePy.Operation
    _op_sendData: IcePy.Operation
    _op_sleep: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Timeout"

    @abstractmethod
    def op(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def sendData(self, seq: bytes, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def sleep(self, to: int, current: Current) -> None | Awaitable[None]:
        pass

Timeout._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Timeout._op_sendData = IcePy.Operation(
    "sendData",
    "sendData",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_timeout_Test_ByteSeq_t, False, 0),),
    (),
    None,
    ())

Timeout._op_sleep = IcePy.Operation(
    "sleep",
    "sleep",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

__all__ = ["Timeout", "TimeoutPrx", "_generated_test_Ice_timeout_Test_TimeoutPrx_t"]
