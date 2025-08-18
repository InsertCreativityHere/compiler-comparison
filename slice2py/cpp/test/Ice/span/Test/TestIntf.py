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

from Test.ByteSeq import _Test_ByteSeq_t

from Test.ShortSeq import _Test_ShortSeq_t

from Test.StringSeq import _Test_StringSeq_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def opByteSpan(self, dataIn: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return TestIntf._op_opByteSpan.invoke(self, ((dataIn, ), context))

    def opByteSpanAsync(self, dataIn: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return TestIntf._op_opByteSpan.invokeAsync(self, ((dataIn, ), context))

    def opShortSpan(self, dataIn: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opShortSpan.invoke(self, ((dataIn, ), context))

    def opShortSpanAsync(self, dataIn: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opShortSpan.invokeAsync(self, ((dataIn, ), context))

    def opStringSpan(self, dataIn: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return TestIntf._op_opStringSpan.invoke(self, ((dataIn, ), context))

    def opStringSpanAsync(self, dataIn: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return TestIntf._op_opStringSpan.invokeAsync(self, ((dataIn, ), context))

    def opOptionalByteSpan(self, dataIn: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> tuple[bytes | None, bytes | None]:
        return TestIntf._op_opOptionalByteSpan.invoke(self, ((dataIn, ), context))

    def opOptionalByteSpanAsync(self, dataIn: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes | None, bytes | None]]:
        return TestIntf._op_opOptionalByteSpan.invokeAsync(self, ((dataIn, ), context))

    def opOptionalShortSpan(self, dataIn: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return TestIntf._op_opOptionalShortSpan.invoke(self, ((dataIn, ), context))

    def opOptionalShortSpanAsync(self, dataIn: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return TestIntf._op_opOptionalShortSpan.invokeAsync(self, ((dataIn, ), context))

    def opOptionalStringSpan(self, dataIn: Sequence[str] | None = None, context: dict[str, str] | None = None) -> tuple[list[str] | None, list[str] | None]:
        return TestIntf._op_opOptionalStringSpan.invoke(self, ((dataIn, ), context))

    def opOptionalStringSpanAsync(self, dataIn: Sequence[str] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[str] | None, list[str] | None]]:
        return TestIntf._op_opOptionalStringSpan.invokeAsync(self, ((dataIn, ), context))

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
    _op_opByteSpan: IcePy.Operation
    _op_opShortSpan: IcePy.Operation
    _op_opStringSpan: IcePy.Operation
    _op_opOptionalByteSpan: IcePy.Operation
    _op_opOptionalShortSpan: IcePy.Operation
    _op_opOptionalStringSpan: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def opByteSpan(self, dataIn: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opShortSpan(self, dataIn: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opStringSpan(self, dataIn: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opOptionalByteSpan(self, dataIn: bytes | None, current: Current) -> tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None] | Awaitable[tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None]]:
        pass

    @abstractmethod
    def opOptionalShortSpan(self, dataIn: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opOptionalStringSpan(self, dataIn: list[str] | None, current: Current) -> tuple[Sequence[str] | None, Sequence[str] | None] | Awaitable[tuple[Sequence[str] | None, Sequence[str] | None]]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_opByteSpan = IcePy.Operation(
    "opByteSpan",
    "opByteSpan",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, False, 0),),
    (((), _Test_ByteSeq_t, False, 0),),
    ((), _Test_ByteSeq_t, False, 0),
    ())

TestIntf._op_opShortSpan = IcePy.Operation(
    "opShortSpan",
    "opShortSpan",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortSeq_t, False, 0),),
    (((), _Test_ShortSeq_t, False, 0),),
    ((), _Test_ShortSeq_t, False, 0),
    ())

TestIntf._op_opStringSpan = IcePy.Operation(
    "opStringSpan",
    "opStringSpan",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeq_t, False, 0),),
    (((), _Test_StringSeq_t, False, 0),),
    ((), _Test_StringSeq_t, False, 0),
    ())

TestIntf._op_opOptionalByteSpan = IcePy.Operation(
    "opOptionalByteSpan",
    "opOptionalByteSpan",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, True, 1),),
    (((), _Test_ByteSeq_t, True, 11),),
    ((), _Test_ByteSeq_t, True, 10),
    ())

TestIntf._op_opOptionalShortSpan = IcePy.Operation(
    "opOptionalShortSpan",
    "opOptionalShortSpan",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortSeq_t, True, 1),),
    (((), _Test_ShortSeq_t, True, 11),),
    ((), _Test_ShortSeq_t, True, 10),
    ())

TestIntf._op_opOptionalStringSpan = IcePy.Operation(
    "opOptionalStringSpan",
    "opOptionalStringSpan",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeq_t, True, 1),),
    (((), _Test_StringSeq_t, True, 11),),
    ((), _Test_StringSeq_t, True, 10),
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
