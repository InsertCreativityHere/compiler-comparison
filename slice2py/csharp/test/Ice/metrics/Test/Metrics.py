# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from Test.ByteSeq import _Test_ByteSeq_t

from Test.Metrics_forward import _Test_MetricsPrx_t

from Test.UserEx import _Test_UserEx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MetricsPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return Metrics._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_op.invokeAsync(self, ((), context))

    def fail(self, context: dict[str, str] | None = None) -> None:
        return Metrics._op_fail.invoke(self, ((), context))

    def failAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_fail.invokeAsync(self, ((), context))

    def opWithUserException(self, context: dict[str, str] | None = None) -> None:
        return Metrics._op_opWithUserException.invoke(self, ((), context))

    def opWithUserExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_opWithUserException.invokeAsync(self, ((), context))

    def opWithRequestFailedException(self, context: dict[str, str] | None = None) -> None:
        return Metrics._op_opWithRequestFailedException.invoke(self, ((), context))

    def opWithRequestFailedExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_opWithRequestFailedException.invokeAsync(self, ((), context))

    def opWithLocalException(self, context: dict[str, str] | None = None) -> None:
        return Metrics._op_opWithLocalException.invoke(self, ((), context))

    def opWithLocalExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_opWithLocalException.invokeAsync(self, ((), context))

    def opWithUnknownException(self, context: dict[str, str] | None = None) -> None:
        return Metrics._op_opWithUnknownException.invoke(self, ((), context))

    def opWithUnknownExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_opWithUnknownException.invokeAsync(self, ((), context))

    def opByteS(self, bs: Sequence[int] | bytes, context: dict[str, str] | None = None) -> None:
        return Metrics._op_opByteS.invoke(self, ((bs, ), context))

    def opByteSAsync(self, bs: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_opByteS.invokeAsync(self, ((bs, ), context))

    def getAdmin(self, context: dict[str, str] | None = None) -> ObjectPrx | None:
        return Metrics._op_getAdmin.invoke(self, ((), context))

    def getAdminAsync(self, context: dict[str, str] | None = None) -> Awaitable[ObjectPrx | None]:
        return Metrics._op_getAdmin.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Metrics._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Metrics._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MetricsPrx | None:
        return checkedCast(MetricsPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MetricsPrx | None ]:
        return checkedCastAsync(MetricsPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MetricsPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MetricsPrx | None:
        return uncheckedCast(MetricsPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Metrics"

IcePy.defineProxy("::Test::Metrics", MetricsPrx)

class Metrics(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Metrics", )
    _op_op: IcePy.Operation
    _op_fail: IcePy.Operation
    _op_opWithUserException: IcePy.Operation
    _op_opWithRequestFailedException: IcePy.Operation
    _op_opWithLocalException: IcePy.Operation
    _op_opWithUnknownException: IcePy.Operation
    _op_opByteS: IcePy.Operation
    _op_getAdmin: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Metrics"

    @abstractmethod
    def op(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def fail(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opWithUserException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opWithRequestFailedException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opWithLocalException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opWithUnknownException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opByteS(self, bs: bytes, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getAdmin(self, current: Current) -> ObjectPrx | None | Awaitable[ObjectPrx | None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Metrics._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Metrics._op_fail = IcePy.Operation(
    "fail",
    "fail",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

Metrics._op_opWithUserException = IcePy.Operation(
    "opWithUserException",
    "opWithUserException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_UserEx_t,))

Metrics._op_opWithRequestFailedException = IcePy.Operation(
    "opWithRequestFailedException",
    "opWithRequestFailedException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Metrics._op_opWithLocalException = IcePy.Operation(
    "opWithLocalException",
    "opWithLocalException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Metrics._op_opWithUnknownException = IcePy.Operation(
    "opWithUnknownException",
    "opWithUnknownException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Metrics._op_opByteS = IcePy.Operation(
    "opByteS",
    "opByteS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, False, 0),),
    (),
    None,
    ())

Metrics._op_getAdmin = IcePy.Operation(
    "getAdmin",
    "getAdmin",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_ObjectPrx_t, False, 0),
    ())

Metrics._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Metrics", "MetricsPrx", "_Test_MetricsPrx_t"]
