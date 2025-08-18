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

from Test.AArray import _Test_AArray_t

from Test.AList import _Test_AList_t

from Test.ASeq import _Test_ASeq_t

from Test.BoolSeq import _Test_BoolSeq_t

from Test.ByteBuffer import _Test_ByteBuffer_t

from Test.ByteSeq import _Test_ByteSeq_t

from Test.DSeq import _Test_DSeq_t

from Test.DoubleBuffer import _Test_DoubleBuffer_t

from Test.DoubleSeq import _Test_DoubleSeq_t

from Test.ESeq import _Test_ESeq_t

from Test.FloatBuffer import _Test_FloatBuffer_t

from Test.FloatSeq import _Test_FloatSeq_t

from Test.IntBuffer import _Test_IntBuffer_t

from Test.IntSeq import _Test_IntSeq_t

from Test.LongBuffer import _Test_LongBuffer_t

from Test.LongSeq import _Test_LongSeq_t

from Test.SSeq import _Test_SSeq_t

from Test.ShortBuffer import _Test_ShortBuffer_t

from Test.ShortSeq import _Test_ShortSeq_t

from Test.StringSeq import _Test_StringSeq_t

from Test.StringSeqSeq import _Test_StringSeqSeq_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.A import A
    from Test.E import E
    from Test.S import S
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def opASeq(self, inSeq: Sequence[A], context: dict[str, str] | None = None) -> tuple[list[A], list[A]]:
        return TestIntf._op_opASeq.invoke(self, ((inSeq, ), context))

    def opASeqAsync(self, inSeq: Sequence[A], context: dict[str, str] | None = None) -> Awaitable[tuple[list[A], list[A]]]:
        return TestIntf._op_opASeq.invokeAsync(self, ((inSeq, ), context))

    def opAArray(self, inSeq: Sequence[A], context: dict[str, str] | None = None) -> tuple[list[A], list[A]]:
        return TestIntf._op_opAArray.invoke(self, ((inSeq, ), context))

    def opAArrayAsync(self, inSeq: Sequence[A], context: dict[str, str] | None = None) -> Awaitable[tuple[list[A], list[A]]]:
        return TestIntf._op_opAArray.invokeAsync(self, ((inSeq, ), context))

    def opAList(self, inSeq: Sequence[A], context: dict[str, str] | None = None) -> tuple[list[A], list[A]]:
        return TestIntf._op_opAList.invoke(self, ((inSeq, ), context))

    def opAListAsync(self, inSeq: Sequence[A], context: dict[str, str] | None = None) -> Awaitable[tuple[list[A], list[A]]]:
        return TestIntf._op_opAList.invokeAsync(self, ((inSeq, ), context))

    def opBoolSeq(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return TestIntf._op_opBoolSeq.invoke(self, ((inSeq, ), context))

    def opBoolSeqAsync(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return TestIntf._op_opBoolSeq.invokeAsync(self, ((inSeq, ), context))

    def opByteSeq(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return TestIntf._op_opByteSeq.invoke(self, ((inSeq, ), context))

    def opByteSeqAsync(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return TestIntf._op_opByteSeq.invokeAsync(self, ((inSeq, ), context))

    def opShortSeq(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opShortSeq.invoke(self, ((inSeq, ), context))

    def opShortSeqAsync(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opShortSeq.invokeAsync(self, ((inSeq, ), context))

    def opIntSeq(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opIntSeq.invoke(self, ((inSeq, ), context))

    def opIntSeqAsync(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opIntSeq.invokeAsync(self, ((inSeq, ), context))

    def opLongSeq(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opLongSeq.invoke(self, ((inSeq, ), context))

    def opLongSeqAsync(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opLongSeq.invokeAsync(self, ((inSeq, ), context))

    def opFloatSeq(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return TestIntf._op_opFloatSeq.invoke(self, ((inSeq, ), context))

    def opFloatSeqAsync(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return TestIntf._op_opFloatSeq.invokeAsync(self, ((inSeq, ), context))

    def opDoubleSeq(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return TestIntf._op_opDoubleSeq.invoke(self, ((inSeq, ), context))

    def opDoubleSeqAsync(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return TestIntf._op_opDoubleSeq.invokeAsync(self, ((inSeq, ), context))

    def opStringSeq(self, inSeq: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return TestIntf._op_opStringSeq.invoke(self, ((inSeq, ), context))

    def opStringSeqAsync(self, inSeq: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return TestIntf._op_opStringSeq.invokeAsync(self, ((inSeq, ), context))

    def opESeq(self, inSeq: Sequence[E], context: dict[str, str] | None = None) -> tuple[list[E], list[E]]:
        return TestIntf._op_opESeq.invoke(self, ((inSeq, ), context))

    def opESeqAsync(self, inSeq: Sequence[E], context: dict[str, str] | None = None) -> Awaitable[tuple[list[E], list[E]]]:
        return TestIntf._op_opESeq.invokeAsync(self, ((inSeq, ), context))

    def opSSeq(self, inSeq: Sequence[S], context: dict[str, str] | None = None) -> tuple[list[S], list[S]]:
        return TestIntf._op_opSSeq.invoke(self, ((inSeq, ), context))

    def opSSeqAsync(self, inSeq: Sequence[S], context: dict[str, str] | None = None) -> Awaitable[tuple[list[S], list[S]]]:
        return TestIntf._op_opSSeq.invokeAsync(self, ((inSeq, ), context))

    def opDSeq(self, inSeq: Sequence[Mapping[int, str]], context: dict[str, str] | None = None) -> tuple[list[dict[int, str]], list[dict[int, str]]]:
        return TestIntf._op_opDSeq.invoke(self, ((inSeq, ), context))

    def opDSeqAsync(self, inSeq: Sequence[Mapping[int, str]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[int, str]], list[dict[int, str]]]]:
        return TestIntf._op_opDSeq.invokeAsync(self, ((inSeq, ), context))

    def opStringSeqSeq(self, inSeq: Sequence[Sequence[str]], context: dict[str, str] | None = None) -> tuple[list[list[str]], list[list[str]]]:
        return TestIntf._op_opStringSeqSeq.invoke(self, ((inSeq, ), context))

    def opStringSeqSeqAsync(self, inSeq: Sequence[Sequence[str]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[str]], list[list[str]]]]:
        return TestIntf._op_opStringSeqSeq.invokeAsync(self, ((inSeq, ), context))

    def opByteBufferSeq(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return TestIntf._op_opByteBufferSeq.invoke(self, ((inSeq, ), context))

    def opByteBufferSeqAsync(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return TestIntf._op_opByteBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opShortBufferSeq(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opShortBufferSeq.invoke(self, ((inSeq, ), context))

    def opShortBufferSeqAsync(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opShortBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opIntBufferSeq(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opIntBufferSeq.invoke(self, ((inSeq, ), context))

    def opIntBufferSeqAsync(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opIntBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opLongBufferSeq(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opLongBufferSeq.invoke(self, ((inSeq, ), context))

    def opLongBufferSeqAsync(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opLongBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opFloatBufferSeq(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return TestIntf._op_opFloatBufferSeq.invoke(self, ((inSeq, ), context))

    def opFloatBufferSeqAsync(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return TestIntf._op_opFloatBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opDoubleBufferSeq(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return TestIntf._op_opDoubleBufferSeq.invoke(self, ((inSeq, ), context))

    def opDoubleBufferSeqAsync(self, inSeq: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return TestIntf._op_opDoubleBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptASeq(self, inSeq: Sequence[A] | None = None, context: dict[str, str] | None = None) -> tuple[list[A] | None, list[A] | None]:
        return TestIntf._op_opOptASeq.invoke(self, ((inSeq, ), context))

    def opOptASeqAsync(self, inSeq: Sequence[A] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[A] | None, list[A] | None]]:
        return TestIntf._op_opOptASeq.invokeAsync(self, ((inSeq, ), context))

    def opOptAArray(self, inSeq: Sequence[A] | None = None, context: dict[str, str] | None = None) -> tuple[list[A] | None, list[A] | None]:
        return TestIntf._op_opOptAArray.invoke(self, ((inSeq, ), context))

    def opOptAArrayAsync(self, inSeq: Sequence[A] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[A] | None, list[A] | None]]:
        return TestIntf._op_opOptAArray.invokeAsync(self, ((inSeq, ), context))

    def opOptAList(self, inSeq: Sequence[A] | None = None, context: dict[str, str] | None = None) -> tuple[list[A] | None, list[A] | None]:
        return TestIntf._op_opOptAList.invoke(self, ((inSeq, ), context))

    def opOptAListAsync(self, inSeq: Sequence[A] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[A] | None, list[A] | None]]:
        return TestIntf._op_opOptAList.invokeAsync(self, ((inSeq, ), context))

    def opOptBoolSeq(self, inSeq: Sequence[bool] | None = None, context: dict[str, str] | None = None) -> tuple[list[bool] | None, list[bool] | None]:
        return TestIntf._op_opOptBoolSeq.invoke(self, ((inSeq, ), context))

    def opOptBoolSeqAsync(self, inSeq: Sequence[bool] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool] | None, list[bool] | None]]:
        return TestIntf._op_opOptBoolSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptByteSeq(self, inSeq: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> tuple[bytes | None, bytes | None]:
        return TestIntf._op_opOptByteSeq.invoke(self, ((inSeq, ), context))

    def opOptByteSeqAsync(self, inSeq: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes | None, bytes | None]]:
        return TestIntf._op_opOptByteSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptShortSeq(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return TestIntf._op_opOptShortSeq.invoke(self, ((inSeq, ), context))

    def opOptShortSeqAsync(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return TestIntf._op_opOptShortSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptIntSeq(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return TestIntf._op_opOptIntSeq.invoke(self, ((inSeq, ), context))

    def opOptIntSeqAsync(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return TestIntf._op_opOptIntSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptLongSeq(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return TestIntf._op_opOptLongSeq.invoke(self, ((inSeq, ), context))

    def opOptLongSeqAsync(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return TestIntf._op_opOptLongSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptFloatSeq(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> tuple[list[float] | None, list[float] | None]:
        return TestIntf._op_opOptFloatSeq.invoke(self, ((inSeq, ), context))

    def opOptFloatSeqAsync(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[float] | None, list[float] | None]]:
        return TestIntf._op_opOptFloatSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptDoubleSeq(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> tuple[list[float] | None, list[float] | None]:
        return TestIntf._op_opOptDoubleSeq.invoke(self, ((inSeq, ), context))

    def opOptDoubleSeqAsync(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[float] | None, list[float] | None]]:
        return TestIntf._op_opOptDoubleSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptStringSeq(self, inSeq: Sequence[str] | None = None, context: dict[str, str] | None = None) -> tuple[list[str] | None, list[str] | None]:
        return TestIntf._op_opOptStringSeq.invoke(self, ((inSeq, ), context))

    def opOptStringSeqAsync(self, inSeq: Sequence[str] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[str] | None, list[str] | None]]:
        return TestIntf._op_opOptStringSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptESeq(self, inSeq: Sequence[E] | None = None, context: dict[str, str] | None = None) -> tuple[list[E] | None, list[E] | None]:
        return TestIntf._op_opOptESeq.invoke(self, ((inSeq, ), context))

    def opOptESeqAsync(self, inSeq: Sequence[E] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[E] | None, list[E] | None]]:
        return TestIntf._op_opOptESeq.invokeAsync(self, ((inSeq, ), context))

    def opOptSSeq(self, inSeq: Sequence[S] | None = None, context: dict[str, str] | None = None) -> tuple[list[S] | None, list[S] | None]:
        return TestIntf._op_opOptSSeq.invoke(self, ((inSeq, ), context))

    def opOptSSeqAsync(self, inSeq: Sequence[S] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[S] | None, list[S] | None]]:
        return TestIntf._op_opOptSSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptDSeq(self, inSeq: Sequence[Mapping[int, str]] | None = None, context: dict[str, str] | None = None) -> tuple[list[dict[int, str]] | None, list[dict[int, str]] | None]:
        return TestIntf._op_opOptDSeq.invoke(self, ((inSeq, ), context))

    def opOptDSeqAsync(self, inSeq: Sequence[Mapping[int, str]] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[int, str]] | None, list[dict[int, str]] | None]]:
        return TestIntf._op_opOptDSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptStringSeqSeq(self, inSeq: Sequence[Sequence[str]] | None = None, context: dict[str, str] | None = None) -> tuple[list[list[str]] | None, list[list[str]] | None]:
        return TestIntf._op_opOptStringSeqSeq.invoke(self, ((inSeq, ), context))

    def opOptStringSeqSeqAsync(self, inSeq: Sequence[Sequence[str]] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[str]] | None, list[list[str]] | None]]:
        return TestIntf._op_opOptStringSeqSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptByteBufferSeq(self, inSeq: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> tuple[bytes | None, bytes | None]:
        return TestIntf._op_opOptByteBufferSeq.invoke(self, ((inSeq, ), context))

    def opOptByteBufferSeqAsync(self, inSeq: Sequence[int] | bytes | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes | None, bytes | None]]:
        return TestIntf._op_opOptByteBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptShortBufferSeq(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return TestIntf._op_opOptShortBufferSeq.invoke(self, ((inSeq, ), context))

    def opOptShortBufferSeqAsync(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return TestIntf._op_opOptShortBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptIntBufferSeq(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return TestIntf._op_opOptIntBufferSeq.invoke(self, ((inSeq, ), context))

    def opOptIntBufferSeqAsync(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return TestIntf._op_opOptIntBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptLongBufferSeq(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> tuple[list[int] | None, list[int] | None]:
        return TestIntf._op_opOptLongBufferSeq.invoke(self, ((inSeq, ), context))

    def opOptLongBufferSeqAsync(self, inSeq: Sequence[int] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[int] | None, list[int] | None]]:
        return TestIntf._op_opOptLongBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptFloatBufferSeq(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> tuple[list[float] | None, list[float] | None]:
        return TestIntf._op_opOptFloatBufferSeq.invoke(self, ((inSeq, ), context))

    def opOptFloatBufferSeqAsync(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[float] | None, list[float] | None]]:
        return TestIntf._op_opOptFloatBufferSeq.invokeAsync(self, ((inSeq, ), context))

    def opOptDoubleBufferSeq(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> tuple[list[float] | None, list[float] | None]:
        return TestIntf._op_opOptDoubleBufferSeq.invoke(self, ((inSeq, ), context))

    def opOptDoubleBufferSeqAsync(self, inSeq: Sequence[float] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[list[float] | None, list[float] | None]]:
        return TestIntf._op_opOptDoubleBufferSeq.invokeAsync(self, ((inSeq, ), context))

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
    _op_opASeq: IcePy.Operation
    _op_opAArray: IcePy.Operation
    _op_opAList: IcePy.Operation
    _op_opBoolSeq: IcePy.Operation
    _op_opByteSeq: IcePy.Operation
    _op_opShortSeq: IcePy.Operation
    _op_opIntSeq: IcePy.Operation
    _op_opLongSeq: IcePy.Operation
    _op_opFloatSeq: IcePy.Operation
    _op_opDoubleSeq: IcePy.Operation
    _op_opStringSeq: IcePy.Operation
    _op_opESeq: IcePy.Operation
    _op_opSSeq: IcePy.Operation
    _op_opDSeq: IcePy.Operation
    _op_opStringSeqSeq: IcePy.Operation
    _op_opByteBufferSeq: IcePy.Operation
    _op_opShortBufferSeq: IcePy.Operation
    _op_opIntBufferSeq: IcePy.Operation
    _op_opLongBufferSeq: IcePy.Operation
    _op_opFloatBufferSeq: IcePy.Operation
    _op_opDoubleBufferSeq: IcePy.Operation
    _op_opOptASeq: IcePy.Operation
    _op_opOptAArray: IcePy.Operation
    _op_opOptAList: IcePy.Operation
    _op_opOptBoolSeq: IcePy.Operation
    _op_opOptByteSeq: IcePy.Operation
    _op_opOptShortSeq: IcePy.Operation
    _op_opOptIntSeq: IcePy.Operation
    _op_opOptLongSeq: IcePy.Operation
    _op_opOptFloatSeq: IcePy.Operation
    _op_opOptDoubleSeq: IcePy.Operation
    _op_opOptStringSeq: IcePy.Operation
    _op_opOptESeq: IcePy.Operation
    _op_opOptSSeq: IcePy.Operation
    _op_opOptDSeq: IcePy.Operation
    _op_opOptStringSeqSeq: IcePy.Operation
    _op_opOptByteBufferSeq: IcePy.Operation
    _op_opOptShortBufferSeq: IcePy.Operation
    _op_opOptIntBufferSeq: IcePy.Operation
    _op_opOptLongBufferSeq: IcePy.Operation
    _op_opOptFloatBufferSeq: IcePy.Operation
    _op_opOptDoubleBufferSeq: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def opASeq(self, inSeq: list[A], current: Current) -> tuple[Sequence[A], Sequence[A]] | Awaitable[tuple[Sequence[A], Sequence[A]]]:
        pass

    @abstractmethod
    def opAArray(self, inSeq: list[A], current: Current) -> tuple[Sequence[A], Sequence[A]] | Awaitable[tuple[Sequence[A], Sequence[A]]]:
        pass

    @abstractmethod
    def opAList(self, inSeq: list[A], current: Current) -> tuple[Sequence[A], Sequence[A]] | Awaitable[tuple[Sequence[A], Sequence[A]]]:
        pass

    @abstractmethod
    def opBoolSeq(self, inSeq: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opByteSeq(self, inSeq: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opShortSeq(self, inSeq: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opIntSeq(self, inSeq: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opLongSeq(self, inSeq: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opFloatSeq(self, inSeq: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opDoubleSeq(self, inSeq: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opStringSeq(self, inSeq: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opESeq(self, inSeq: list[E], current: Current) -> tuple[Sequence[E], Sequence[E]] | Awaitable[tuple[Sequence[E], Sequence[E]]]:
        pass

    @abstractmethod
    def opSSeq(self, inSeq: list[S], current: Current) -> tuple[Sequence[S], Sequence[S]] | Awaitable[tuple[Sequence[S], Sequence[S]]]:
        pass

    @abstractmethod
    def opDSeq(self, inSeq: list[dict[int, str]], current: Current) -> tuple[Sequence[Mapping[int, str]], Sequence[Mapping[int, str]]] | Awaitable[tuple[Sequence[Mapping[int, str]], Sequence[Mapping[int, str]]]]:
        pass

    @abstractmethod
    def opStringSeqSeq(self, inSeq: list[list[str]], current: Current) -> tuple[Sequence[Sequence[str]], Sequence[Sequence[str]]] | Awaitable[tuple[Sequence[Sequence[str]], Sequence[Sequence[str]]]]:
        pass

    @abstractmethod
    def opByteBufferSeq(self, inSeq: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opShortBufferSeq(self, inSeq: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opIntBufferSeq(self, inSeq: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opLongBufferSeq(self, inSeq: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opFloatBufferSeq(self, inSeq: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opDoubleBufferSeq(self, inSeq: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opOptASeq(self, inSeq: list[A] | None, current: Current) -> tuple[Sequence[A] | None, Sequence[A] | None] | Awaitable[tuple[Sequence[A] | None, Sequence[A] | None]]:
        pass

    @abstractmethod
    def opOptAArray(self, inSeq: list[A] | None, current: Current) -> tuple[Sequence[A] | None, Sequence[A] | None] | Awaitable[tuple[Sequence[A] | None, Sequence[A] | None]]:
        pass

    @abstractmethod
    def opOptAList(self, inSeq: list[A] | None, current: Current) -> tuple[Sequence[A] | None, Sequence[A] | None] | Awaitable[tuple[Sequence[A] | None, Sequence[A] | None]]:
        pass

    @abstractmethod
    def opOptBoolSeq(self, inSeq: list[bool] | None, current: Current) -> tuple[Sequence[bool] | None, Sequence[bool] | None] | Awaitable[tuple[Sequence[bool] | None, Sequence[bool] | None]]:
        pass

    @abstractmethod
    def opOptByteSeq(self, inSeq: bytes | None, current: Current) -> tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None] | Awaitable[tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None]]:
        pass

    @abstractmethod
    def opOptShortSeq(self, inSeq: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opOptIntSeq(self, inSeq: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opOptLongSeq(self, inSeq: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opOptFloatSeq(self, inSeq: list[float] | None, current: Current) -> tuple[Sequence[float] | None, Sequence[float] | None] | Awaitable[tuple[Sequence[float] | None, Sequence[float] | None]]:
        pass

    @abstractmethod
    def opOptDoubleSeq(self, inSeq: list[float] | None, current: Current) -> tuple[Sequence[float] | None, Sequence[float] | None] | Awaitable[tuple[Sequence[float] | None, Sequence[float] | None]]:
        pass

    @abstractmethod
    def opOptStringSeq(self, inSeq: list[str] | None, current: Current) -> tuple[Sequence[str] | None, Sequence[str] | None] | Awaitable[tuple[Sequence[str] | None, Sequence[str] | None]]:
        pass

    @abstractmethod
    def opOptESeq(self, inSeq: list[E] | None, current: Current) -> tuple[Sequence[E] | None, Sequence[E] | None] | Awaitable[tuple[Sequence[E] | None, Sequence[E] | None]]:
        pass

    @abstractmethod
    def opOptSSeq(self, inSeq: list[S] | None, current: Current) -> tuple[Sequence[S] | None, Sequence[S] | None] | Awaitable[tuple[Sequence[S] | None, Sequence[S] | None]]:
        pass

    @abstractmethod
    def opOptDSeq(self, inSeq: list[dict[int, str]] | None, current: Current) -> tuple[Sequence[Mapping[int, str]] | None, Sequence[Mapping[int, str]] | None] | Awaitable[tuple[Sequence[Mapping[int, str]] | None, Sequence[Mapping[int, str]] | None]]:
        pass

    @abstractmethod
    def opOptStringSeqSeq(self, inSeq: list[list[str]] | None, current: Current) -> tuple[Sequence[Sequence[str]] | None, Sequence[Sequence[str]] | None] | Awaitable[tuple[Sequence[Sequence[str]] | None, Sequence[Sequence[str]] | None]]:
        pass

    @abstractmethod
    def opOptByteBufferSeq(self, inSeq: bytes | None, current: Current) -> tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None] | Awaitable[tuple[Sequence[int] | bytes | None, Sequence[int] | bytes | None]]:
        pass

    @abstractmethod
    def opOptShortBufferSeq(self, inSeq: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opOptIntBufferSeq(self, inSeq: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opOptLongBufferSeq(self, inSeq: list[int] | None, current: Current) -> tuple[Sequence[int] | None, Sequence[int] | None] | Awaitable[tuple[Sequence[int] | None, Sequence[int] | None]]:
        pass

    @abstractmethod
    def opOptFloatBufferSeq(self, inSeq: list[float] | None, current: Current) -> tuple[Sequence[float] | None, Sequence[float] | None] | Awaitable[tuple[Sequence[float] | None, Sequence[float] | None]]:
        pass

    @abstractmethod
    def opOptDoubleBufferSeq(self, inSeq: list[float] | None, current: Current) -> tuple[Sequence[float] | None, Sequence[float] | None] | Awaitable[tuple[Sequence[float] | None, Sequence[float] | None]]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_opASeq = IcePy.Operation(
    "opASeq",
    "opASeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ASeq_t, False, 0),),
    (((), _Test_ASeq_t, False, 0),),
    ((), _Test_ASeq_t, False, 0),
    ())

TestIntf._op_opAArray = IcePy.Operation(
    "opAArray",
    "opAArray",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AArray_t, False, 0),),
    (((), _Test_AArray_t, False, 0),),
    ((), _Test_AArray_t, False, 0),
    ())

TestIntf._op_opAList = IcePy.Operation(
    "opAList",
    "opAList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AList_t, False, 0),),
    (((), _Test_AList_t, False, 0),),
    ((), _Test_AList_t, False, 0),
    ())

TestIntf._op_opBoolSeq = IcePy.Operation(
    "opBoolSeq",
    "opBoolSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolSeq_t, False, 0),),
    (((), _Test_BoolSeq_t, False, 0),),
    ((), _Test_BoolSeq_t, False, 0),
    ())

TestIntf._op_opByteSeq = IcePy.Operation(
    "opByteSeq",
    "opByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, False, 0),),
    (((), _Test_ByteSeq_t, False, 0),),
    ((), _Test_ByteSeq_t, False, 0),
    ())

TestIntf._op_opShortSeq = IcePy.Operation(
    "opShortSeq",
    "opShortSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortSeq_t, False, 0),),
    (((), _Test_ShortSeq_t, False, 0),),
    ((), _Test_ShortSeq_t, False, 0),
    ())

TestIntf._op_opIntSeq = IcePy.Operation(
    "opIntSeq",
    "opIntSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntSeq_t, False, 0),),
    (((), _Test_IntSeq_t, False, 0),),
    ((), _Test_IntSeq_t, False, 0),
    ())

TestIntf._op_opLongSeq = IcePy.Operation(
    "opLongSeq",
    "opLongSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongSeq_t, False, 0),),
    (((), _Test_LongSeq_t, False, 0),),
    ((), _Test_LongSeq_t, False, 0),
    ())

TestIntf._op_opFloatSeq = IcePy.Operation(
    "opFloatSeq",
    "opFloatSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FloatSeq_t, False, 0),),
    (((), _Test_FloatSeq_t, False, 0),),
    ((), _Test_FloatSeq_t, False, 0),
    ())

TestIntf._op_opDoubleSeq = IcePy.Operation(
    "opDoubleSeq",
    "opDoubleSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DoubleSeq_t, False, 0),),
    (((), _Test_DoubleSeq_t, False, 0),),
    ((), _Test_DoubleSeq_t, False, 0),
    ())

TestIntf._op_opStringSeq = IcePy.Operation(
    "opStringSeq",
    "opStringSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeq_t, False, 0),),
    (((), _Test_StringSeq_t, False, 0),),
    ((), _Test_StringSeq_t, False, 0),
    ())

TestIntf._op_opESeq = IcePy.Operation(
    "opESeq",
    "opESeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ESeq_t, False, 0),),
    (((), _Test_ESeq_t, False, 0),),
    ((), _Test_ESeq_t, False, 0),
    ())

TestIntf._op_opSSeq = IcePy.Operation(
    "opSSeq",
    "opSSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SSeq_t, False, 0),),
    (((), _Test_SSeq_t, False, 0),),
    ((), _Test_SSeq_t, False, 0),
    ())

TestIntf._op_opDSeq = IcePy.Operation(
    "opDSeq",
    "opDSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DSeq_t, False, 0),),
    (((), _Test_DSeq_t, False, 0),),
    ((), _Test_DSeq_t, False, 0),
    ())

TestIntf._op_opStringSeqSeq = IcePy.Operation(
    "opStringSeqSeq",
    "opStringSeqSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeqSeq_t, False, 0),),
    (((), _Test_StringSeqSeq_t, False, 0),),
    ((), _Test_StringSeqSeq_t, False, 0),
    ())

TestIntf._op_opByteBufferSeq = IcePy.Operation(
    "opByteBufferSeq",
    "opByteBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteBuffer_t, False, 0),),
    (((), _Test_ByteBuffer_t, False, 0),),
    ((), _Test_ByteBuffer_t, False, 0),
    ())

TestIntf._op_opShortBufferSeq = IcePy.Operation(
    "opShortBufferSeq",
    "opShortBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortBuffer_t, False, 0),),
    (((), _Test_ShortBuffer_t, False, 0),),
    ((), _Test_ShortBuffer_t, False, 0),
    ())

TestIntf._op_opIntBufferSeq = IcePy.Operation(
    "opIntBufferSeq",
    "opIntBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntBuffer_t, False, 0),),
    (((), _Test_IntBuffer_t, False, 0),),
    ((), _Test_IntBuffer_t, False, 0),
    ())

TestIntf._op_opLongBufferSeq = IcePy.Operation(
    "opLongBufferSeq",
    "opLongBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongBuffer_t, False, 0),),
    (((), _Test_LongBuffer_t, False, 0),),
    ((), _Test_LongBuffer_t, False, 0),
    ())

TestIntf._op_opFloatBufferSeq = IcePy.Operation(
    "opFloatBufferSeq",
    "opFloatBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FloatBuffer_t, False, 0),),
    (((), _Test_FloatBuffer_t, False, 0),),
    ((), _Test_FloatBuffer_t, False, 0),
    ())

TestIntf._op_opDoubleBufferSeq = IcePy.Operation(
    "opDoubleBufferSeq",
    "opDoubleBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DoubleBuffer_t, False, 0),),
    (((), _Test_DoubleBuffer_t, False, 0),),
    ((), _Test_DoubleBuffer_t, False, 0),
    ())

TestIntf._op_opOptASeq = IcePy.Operation(
    "opOptASeq",
    "opOptASeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ASeq_t, True, 2),),
    (((), _Test_ASeq_t, True, 3),),
    ((), _Test_ASeq_t, True, 1),
    ())

TestIntf._op_opOptAArray = IcePy.Operation(
    "opOptAArray",
    "opOptAArray",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AArray_t, True, 2),),
    (((), _Test_AArray_t, True, 3),),
    ((), _Test_AArray_t, True, 1),
    ())

TestIntf._op_opOptAList = IcePy.Operation(
    "opOptAList",
    "opOptAList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AList_t, True, 2),),
    (((), _Test_AList_t, True, 3),),
    ((), _Test_AList_t, True, 1),
    ())

TestIntf._op_opOptBoolSeq = IcePy.Operation(
    "opOptBoolSeq",
    "opOptBoolSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolSeq_t, True, 2),),
    (((), _Test_BoolSeq_t, True, 3),),
    ((), _Test_BoolSeq_t, True, 1),
    ())

TestIntf._op_opOptByteSeq = IcePy.Operation(
    "opOptByteSeq",
    "opOptByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, True, 2),),
    (((), _Test_ByteSeq_t, True, 3),),
    ((), _Test_ByteSeq_t, True, 1),
    ())

TestIntf._op_opOptShortSeq = IcePy.Operation(
    "opOptShortSeq",
    "opOptShortSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortSeq_t, True, 2),),
    (((), _Test_ShortSeq_t, True, 3),),
    ((), _Test_ShortSeq_t, True, 1),
    ())

TestIntf._op_opOptIntSeq = IcePy.Operation(
    "opOptIntSeq",
    "opOptIntSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntSeq_t, True, 2),),
    (((), _Test_IntSeq_t, True, 3),),
    ((), _Test_IntSeq_t, True, 1),
    ())

TestIntf._op_opOptLongSeq = IcePy.Operation(
    "opOptLongSeq",
    "opOptLongSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongSeq_t, True, 2),),
    (((), _Test_LongSeq_t, True, 3),),
    ((), _Test_LongSeq_t, True, 1),
    ())

TestIntf._op_opOptFloatSeq = IcePy.Operation(
    "opOptFloatSeq",
    "opOptFloatSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FloatSeq_t, True, 2),),
    (((), _Test_FloatSeq_t, True, 3),),
    ((), _Test_FloatSeq_t, True, 1),
    ())

TestIntf._op_opOptDoubleSeq = IcePy.Operation(
    "opOptDoubleSeq",
    "opOptDoubleSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DoubleSeq_t, True, 2),),
    (((), _Test_DoubleSeq_t, True, 3),),
    ((), _Test_DoubleSeq_t, True, 1),
    ())

TestIntf._op_opOptStringSeq = IcePy.Operation(
    "opOptStringSeq",
    "opOptStringSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeq_t, True, 2),),
    (((), _Test_StringSeq_t, True, 3),),
    ((), _Test_StringSeq_t, True, 1),
    ())

TestIntf._op_opOptESeq = IcePy.Operation(
    "opOptESeq",
    "opOptESeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ESeq_t, True, 2),),
    (((), _Test_ESeq_t, True, 3),),
    ((), _Test_ESeq_t, True, 1),
    ())

TestIntf._op_opOptSSeq = IcePy.Operation(
    "opOptSSeq",
    "opOptSSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SSeq_t, True, 2),),
    (((), _Test_SSeq_t, True, 3),),
    ((), _Test_SSeq_t, True, 1),
    ())

TestIntf._op_opOptDSeq = IcePy.Operation(
    "opOptDSeq",
    "opOptDSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DSeq_t, True, 2),),
    (((), _Test_DSeq_t, True, 3),),
    ((), _Test_DSeq_t, True, 1),
    ())

TestIntf._op_opOptStringSeqSeq = IcePy.Operation(
    "opOptStringSeqSeq",
    "opOptStringSeqSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringSeqSeq_t, True, 2),),
    (((), _Test_StringSeqSeq_t, True, 3),),
    ((), _Test_StringSeqSeq_t, True, 1),
    ())

TestIntf._op_opOptByteBufferSeq = IcePy.Operation(
    "opOptByteBufferSeq",
    "opOptByteBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteBuffer_t, True, 2),),
    (((), _Test_ByteBuffer_t, True, 3),),
    ((), _Test_ByteBuffer_t, True, 1),
    ())

TestIntf._op_opOptShortBufferSeq = IcePy.Operation(
    "opOptShortBufferSeq",
    "opOptShortBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortBuffer_t, True, 2),),
    (((), _Test_ShortBuffer_t, True, 3),),
    ((), _Test_ShortBuffer_t, True, 1),
    ())

TestIntf._op_opOptIntBufferSeq = IcePy.Operation(
    "opOptIntBufferSeq",
    "opOptIntBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntBuffer_t, True, 2),),
    (((), _Test_IntBuffer_t, True, 3),),
    ((), _Test_IntBuffer_t, True, 1),
    ())

TestIntf._op_opOptLongBufferSeq = IcePy.Operation(
    "opOptLongBufferSeq",
    "opOptLongBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LongBuffer_t, True, 2),),
    (((), _Test_LongBuffer_t, True, 3),),
    ((), _Test_LongBuffer_t, True, 1),
    ())

TestIntf._op_opOptFloatBufferSeq = IcePy.Operation(
    "opOptFloatBufferSeq",
    "opOptFloatBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FloatBuffer_t, True, 2),),
    (((), _Test_FloatBuffer_t, True, 3),),
    ((), _Test_FloatBuffer_t, True, 1),
    ())

TestIntf._op_opOptDoubleBufferSeq = IcePy.Operation(
    "opOptDoubleBufferSeq",
    "opOptDoubleBufferSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DoubleBuffer_t, True, 2),),
    (((), _Test_DoubleBuffer_t, True, 3),),
    ((), _Test_DoubleBuffer_t, True, 1),
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
