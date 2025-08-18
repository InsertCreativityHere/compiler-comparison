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

from Test.BoolList import _Test_BoolList_t

from Test.BoolSeq import _Test_BoolSeq_t

from Test.BufferStruct import _Test_BufferStruct_t

from Test.ByteList import _Test_ByteList_t

from Test.ByteSeq import _Test_ByteSeq_t

from Test.CList import _Test_CList_t

from Test.CSeq import _Test_CSeq_t

from Test.DPrxList import _Test_DPrxList_t

from Test.DPrxSeq import _Test_DPrxSeq_t

from Test.DoubleSeq import _Test_DoubleSeq_t

from Test.EList import _Test_EList_t

from Test.ESeq import _Test_ESeq_t

from Test.FixedList import _Test_FixedList_t

from Test.FixedSeq import _Test_FixedSeq_t

from Test.IntStringDict import _Test_IntStringDict_t

from Test.LongLongDict import _Test_LongLongDict_t

from Test.ShortBuffer import _Test_ShortBuffer_t

from Test.ShortSeq import _Test_ShortSeq_t

from Test.StringIntDict import _Test_StringIntDict_t

from Test.StringList import _Test_StringList_t

from Test.StringSeq import _Test_StringSeq_t

from Test.StringStringDictList import _Test_StringStringDictList_t

from Test.StringStringDictSeq import _Test_StringStringDictSeq_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from Test.VariableList import _Test_VariableList_t

from Test.VariableSeq import _Test_VariableSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.BufferStruct import BufferStruct
    from Test.C import C
    from Test.D import DPrx
    from Test.E import E
    from Test.Fixed import Fixed
    from Test.Variable import Variable
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def opShortArray(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opShortArray.invoke(self, ((inSeq, ), context))

    def opShortArrayAsync(self, inSeq: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opShortArray.invokeAsync(self, ((inSeq, ), context))

    def opDoubleArray(self, padding: bool, inSeq: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return TestIntf._op_opDoubleArray.invoke(self, ((padding, inSeq), context))

    def opDoubleArrayAsync(self, padding: bool, inSeq: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return TestIntf._op_opDoubleArray.invokeAsync(self, ((padding, inSeq), context))

    def opBoolArray(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return TestIntf._op_opBoolArray.invoke(self, ((inSeq, ), context))

    def opBoolArrayAsync(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return TestIntf._op_opBoolArray.invokeAsync(self, ((inSeq, ), context))

    def opByteArray(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return TestIntf._op_opByteArray.invoke(self, ((inSeq, ), context))

    def opByteArrayAsync(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return TestIntf._op_opByteArray.invokeAsync(self, ((inSeq, ), context))

    def opVariableArray(self, inSeq: Sequence[Variable], context: dict[str, str] | None = None) -> tuple[list[Variable], list[Variable]]:
        return TestIntf._op_opVariableArray.invoke(self, ((inSeq, ), context))

    def opVariableArrayAsync(self, inSeq: Sequence[Variable], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Variable], list[Variable]]]:
        return TestIntf._op_opVariableArray.invokeAsync(self, ((inSeq, ), context))

    def opBoolSeq(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return TestIntf._op_opBoolSeq.invoke(self, ((inSeq, ), context))

    def opBoolSeqAsync(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return TestIntf._op_opBoolSeq.invokeAsync(self, ((inSeq, ), context))

    def opBoolList(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return TestIntf._op_opBoolList.invoke(self, ((inSeq, ), context))

    def opBoolListAsync(self, inSeq: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return TestIntf._op_opBoolList.invokeAsync(self, ((inSeq, ), context))

    def opByteSeq(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return TestIntf._op_opByteSeq.invoke(self, ((inSeq, ), context))

    def opByteSeqAsync(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return TestIntf._op_opByteSeq.invokeAsync(self, ((inSeq, ), context))

    def opByteList(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return TestIntf._op_opByteList.invoke(self, ((inSeq, ), context))

    def opByteListAsync(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return TestIntf._op_opByteList.invokeAsync(self, ((inSeq, ), context))

    def opMyByteSeq(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return TestIntf._op_opMyByteSeq.invoke(self, ((inSeq, ), context))

    def opMyByteSeqAsync(self, inSeq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return TestIntf._op_opMyByteSeq.invokeAsync(self, ((inSeq, ), context))

    def opStringSeq(self, inSeq: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return TestIntf._op_opStringSeq.invoke(self, ((inSeq, ), context))

    def opStringSeqAsync(self, inSeq: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return TestIntf._op_opStringSeq.invokeAsync(self, ((inSeq, ), context))

    def opStringList(self, inSeq: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return TestIntf._op_opStringList.invoke(self, ((inSeq, ), context))

    def opStringListAsync(self, inSeq: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return TestIntf._op_opStringList.invokeAsync(self, ((inSeq, ), context))

    def opFixedSeq(self, inSeq: Sequence[Fixed], context: dict[str, str] | None = None) -> tuple[list[Fixed], list[Fixed]]:
        return TestIntf._op_opFixedSeq.invoke(self, ((inSeq, ), context))

    def opFixedSeqAsync(self, inSeq: Sequence[Fixed], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Fixed], list[Fixed]]]:
        return TestIntf._op_opFixedSeq.invokeAsync(self, ((inSeq, ), context))

    def opFixedList(self, inSeq: Sequence[Fixed], context: dict[str, str] | None = None) -> tuple[list[Fixed], list[Fixed]]:
        return TestIntf._op_opFixedList.invoke(self, ((inSeq, ), context))

    def opFixedListAsync(self, inSeq: Sequence[Fixed], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Fixed], list[Fixed]]]:
        return TestIntf._op_opFixedList.invokeAsync(self, ((inSeq, ), context))

    def opVariableSeq(self, inSeq: Sequence[Variable], context: dict[str, str] | None = None) -> tuple[list[Variable], list[Variable]]:
        return TestIntf._op_opVariableSeq.invoke(self, ((inSeq, ), context))

    def opVariableSeqAsync(self, inSeq: Sequence[Variable], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Variable], list[Variable]]]:
        return TestIntf._op_opVariableSeq.invokeAsync(self, ((inSeq, ), context))

    def opVariableList(self, inSeq: Sequence[Variable], context: dict[str, str] | None = None) -> tuple[list[Variable], list[Variable]]:
        return TestIntf._op_opVariableList.invoke(self, ((inSeq, ), context))

    def opVariableListAsync(self, inSeq: Sequence[Variable], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Variable], list[Variable]]]:
        return TestIntf._op_opVariableList.invokeAsync(self, ((inSeq, ), context))

    def opStringStringDictSeq(self, inSeq: Sequence[Mapping[str, str]], context: dict[str, str] | None = None) -> tuple[list[dict[str, str]], list[dict[str, str]]]:
        return TestIntf._op_opStringStringDictSeq.invoke(self, ((inSeq, ), context))

    def opStringStringDictSeqAsync(self, inSeq: Sequence[Mapping[str, str]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[str, str]], list[dict[str, str]]]]:
        return TestIntf._op_opStringStringDictSeq.invokeAsync(self, ((inSeq, ), context))

    def opStringStringDictList(self, inSeq: Sequence[Mapping[str, str]], context: dict[str, str] | None = None) -> tuple[list[dict[str, str]], list[dict[str, str]]]:
        return TestIntf._op_opStringStringDictList.invoke(self, ((inSeq, ), context))

    def opStringStringDictListAsync(self, inSeq: Sequence[Mapping[str, str]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[dict[str, str]], list[dict[str, str]]]]:
        return TestIntf._op_opStringStringDictList.invokeAsync(self, ((inSeq, ), context))

    def opESeq(self, inSeq: Sequence[E], context: dict[str, str] | None = None) -> tuple[list[E], list[E]]:
        return TestIntf._op_opESeq.invoke(self, ((inSeq, ), context))

    def opESeqAsync(self, inSeq: Sequence[E], context: dict[str, str] | None = None) -> Awaitable[tuple[list[E], list[E]]]:
        return TestIntf._op_opESeq.invokeAsync(self, ((inSeq, ), context))

    def opEList(self, inSeq: Sequence[E], context: dict[str, str] | None = None) -> tuple[list[E], list[E]]:
        return TestIntf._op_opEList.invoke(self, ((inSeq, ), context))

    def opEListAsync(self, inSeq: Sequence[E], context: dict[str, str] | None = None) -> Awaitable[tuple[list[E], list[E]]]:
        return TestIntf._op_opEList.invokeAsync(self, ((inSeq, ), context))

    def opDPrxSeq(self, inSeq: Sequence[DPrx | None], context: dict[str, str] | None = None) -> tuple[list[DPrx | None], list[DPrx | None]]:
        return TestIntf._op_opDPrxSeq.invoke(self, ((inSeq, ), context))

    def opDPrxSeqAsync(self, inSeq: Sequence[DPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[DPrx | None], list[DPrx | None]]]:
        return TestIntf._op_opDPrxSeq.invokeAsync(self, ((inSeq, ), context))

    def opDPrxList(self, inSeq: Sequence[DPrx | None], context: dict[str, str] | None = None) -> tuple[list[DPrx | None], list[DPrx | None]]:
        return TestIntf._op_opDPrxList.invoke(self, ((inSeq, ), context))

    def opDPrxListAsync(self, inSeq: Sequence[DPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[DPrx | None], list[DPrx | None]]]:
        return TestIntf._op_opDPrxList.invokeAsync(self, ((inSeq, ), context))

    def opCSeq(self, inSeq: Sequence[C | None], context: dict[str, str] | None = None) -> tuple[list[C | None], list[C | None]]:
        return TestIntf._op_opCSeq.invoke(self, ((inSeq, ), context))

    def opCSeqAsync(self, inSeq: Sequence[C | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[C | None], list[C | None]]]:
        return TestIntf._op_opCSeq.invokeAsync(self, ((inSeq, ), context))

    def opCList(self, inSeq: Sequence[C | None], context: dict[str, str] | None = None) -> tuple[list[C | None], list[C | None]]:
        return TestIntf._op_opCList.invoke(self, ((inSeq, ), context))

    def opCListAsync(self, inSeq: Sequence[C | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[C | None], list[C | None]]]:
        return TestIntf._op_opCList.invokeAsync(self, ((inSeq, ), context))

    def opOutArrayByteSeq(self, org: Sequence[int] | bytes, context: dict[str, str] | None = None) -> bytes:
        return TestIntf._op_opOutArrayByteSeq.invoke(self, ((org, ), context))

    def opOutArrayByteSeqAsync(self, org: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[bytes]:
        return TestIntf._op_opOutArrayByteSeq.invokeAsync(self, ((org, ), context))

    def opIntStringDict(self, idict: Mapping[int, str], context: dict[str, str] | None = None) -> tuple[dict[int, str], dict[int, str]]:
        return TestIntf._op_opIntStringDict.invoke(self, ((idict, ), context))

    def opIntStringDictAsync(self, idict: Mapping[int, str], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, str], dict[int, str]]]:
        return TestIntf._op_opIntStringDict.invokeAsync(self, ((idict, ), context))

    def opVarDict(self, idict: Mapping[str, int], context: dict[str, str] | None = None) -> tuple[dict[int, int], dict[str, int]]:
        return TestIntf._op_opVarDict.invoke(self, ((idict, ), context))

    def opVarDictAsync(self, idict: Mapping[str, int], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, int], dict[str, int]]]:
        return TestIntf._op_opVarDict.invokeAsync(self, ((idict, ), context))

    def opShortBuffer(self, inS: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return TestIntf._op_opShortBuffer.invoke(self, ((inS, ), context))

    def opShortBufferAsync(self, inS: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return TestIntf._op_opShortBuffer.invokeAsync(self, ((inS, ), context))

    def opBoolBuffer(self, inS: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return TestIntf._op_opBoolBuffer.invoke(self, ((inS, ), context))

    def opBoolBufferAsync(self, inS: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return TestIntf._op_opBoolBuffer.invokeAsync(self, ((inS, ), context))

    def opBufferStruct(self, s: BufferStruct, context: dict[str, str] | None = None) -> BufferStruct:
        return TestIntf._op_opBufferStruct.invoke(self, ((s, ), context))

    def opBufferStructAsync(self, s: BufferStruct, context: dict[str, str] | None = None) -> Awaitable[BufferStruct]:
        return TestIntf._op_opBufferStruct.invokeAsync(self, ((s, ), context))

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
    _op_opShortArray: IcePy.Operation
    _op_opDoubleArray: IcePy.Operation
    _op_opBoolArray: IcePy.Operation
    _op_opByteArray: IcePy.Operation
    _op_opVariableArray: IcePy.Operation
    _op_opBoolSeq: IcePy.Operation
    _op_opBoolList: IcePy.Operation
    _op_opByteSeq: IcePy.Operation
    _op_opByteList: IcePy.Operation
    _op_opMyByteSeq: IcePy.Operation
    _op_opStringSeq: IcePy.Operation
    _op_opStringList: IcePy.Operation
    _op_opFixedSeq: IcePy.Operation
    _op_opFixedList: IcePy.Operation
    _op_opVariableSeq: IcePy.Operation
    _op_opVariableList: IcePy.Operation
    _op_opStringStringDictSeq: IcePy.Operation
    _op_opStringStringDictList: IcePy.Operation
    _op_opESeq: IcePy.Operation
    _op_opEList: IcePy.Operation
    _op_opDPrxSeq: IcePy.Operation
    _op_opDPrxList: IcePy.Operation
    _op_opCSeq: IcePy.Operation
    _op_opCList: IcePy.Operation
    _op_opOutArrayByteSeq: IcePy.Operation
    _op_opIntStringDict: IcePy.Operation
    _op_opVarDict: IcePy.Operation
    _op_opShortBuffer: IcePy.Operation
    _op_opBoolBuffer: IcePy.Operation
    _op_opBufferStruct: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def opShortArray(self, inSeq: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opDoubleArray(self, padding: bool, inSeq: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opBoolArray(self, inSeq: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opByteArray(self, inSeq: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opVariableArray(self, inSeq: list[Variable], current: Current) -> tuple[Sequence[Variable], Sequence[Variable]] | Awaitable[tuple[Sequence[Variable], Sequence[Variable]]]:
        pass

    @abstractmethod
    def opBoolSeq(self, inSeq: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opBoolList(self, inSeq: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opByteSeq(self, inSeq: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opByteList(self, inSeq: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opMyByteSeq(self, inSeq: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opStringSeq(self, inSeq: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opStringList(self, inSeq: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opFixedSeq(self, inSeq: list[Fixed], current: Current) -> tuple[Sequence[Fixed], Sequence[Fixed]] | Awaitable[tuple[Sequence[Fixed], Sequence[Fixed]]]:
        pass

    @abstractmethod
    def opFixedList(self, inSeq: list[Fixed], current: Current) -> tuple[Sequence[Fixed], Sequence[Fixed]] | Awaitable[tuple[Sequence[Fixed], Sequence[Fixed]]]:
        pass

    @abstractmethod
    def opVariableSeq(self, inSeq: list[Variable], current: Current) -> tuple[Sequence[Variable], Sequence[Variable]] | Awaitable[tuple[Sequence[Variable], Sequence[Variable]]]:
        pass

    @abstractmethod
    def opVariableList(self, inSeq: list[Variable], current: Current) -> tuple[Sequence[Variable], Sequence[Variable]] | Awaitable[tuple[Sequence[Variable], Sequence[Variable]]]:
        pass

    @abstractmethod
    def opStringStringDictSeq(self, inSeq: list[dict[str, str]], current: Current) -> tuple[Sequence[Mapping[str, str]], Sequence[Mapping[str, str]]] | Awaitable[tuple[Sequence[Mapping[str, str]], Sequence[Mapping[str, str]]]]:
        pass

    @abstractmethod
    def opStringStringDictList(self, inSeq: list[dict[str, str]], current: Current) -> tuple[Sequence[Mapping[str, str]], Sequence[Mapping[str, str]]] | Awaitable[tuple[Sequence[Mapping[str, str]], Sequence[Mapping[str, str]]]]:
        pass

    @abstractmethod
    def opESeq(self, inSeq: list[E], current: Current) -> tuple[Sequence[E], Sequence[E]] | Awaitable[tuple[Sequence[E], Sequence[E]]]:
        pass

    @abstractmethod
    def opEList(self, inSeq: list[E], current: Current) -> tuple[Sequence[E], Sequence[E]] | Awaitable[tuple[Sequence[E], Sequence[E]]]:
        pass

    @abstractmethod
    def opDPrxSeq(self, inSeq: list[DPrx | None], current: Current) -> tuple[Sequence[DPrx | None], Sequence[DPrx | None]] | Awaitable[tuple[Sequence[DPrx | None], Sequence[DPrx | None]]]:
        pass

    @abstractmethod
    def opDPrxList(self, inSeq: list[DPrx | None], current: Current) -> tuple[Sequence[DPrx | None], Sequence[DPrx | None]] | Awaitable[tuple[Sequence[DPrx | None], Sequence[DPrx | None]]]:
        pass

    @abstractmethod
    def opCSeq(self, inSeq: list[C | None], current: Current) -> tuple[Sequence[C | None], Sequence[C | None]] | Awaitable[tuple[Sequence[C | None], Sequence[C | None]]]:
        pass

    @abstractmethod
    def opCList(self, inSeq: list[C | None], current: Current) -> tuple[Sequence[C | None], Sequence[C | None]] | Awaitable[tuple[Sequence[C | None], Sequence[C | None]]]:
        pass

    @abstractmethod
    def opOutArrayByteSeq(self, org: bytes, current: Current) -> Sequence[int] | bytes | Awaitable[Sequence[int] | bytes]:
        pass

    @abstractmethod
    def opIntStringDict(self, idict: dict[int, str], current: Current) -> tuple[Mapping[int, str], Mapping[int, str]] | Awaitable[tuple[Mapping[int, str], Mapping[int, str]]]:
        pass

    @abstractmethod
    def opVarDict(self, idict: dict[str, int], current: Current) -> tuple[Mapping[int, int], Mapping[str, int]] | Awaitable[tuple[Mapping[int, int], Mapping[str, int]]]:
        pass

    @abstractmethod
    def opShortBuffer(self, inS: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opBoolBuffer(self, inS: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opBufferStruct(self, s: BufferStruct, current: Current) -> BufferStruct | Awaitable[BufferStruct]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_opShortArray = IcePy.Operation(
    "opShortArray",
    "opShortArray",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortSeq_t, False, 0),),
    (((), _Test_ShortSeq_t, False, 0),),
    ((), _Test_ShortSeq_t, False, 0),
    ())

TestIntf._op_opDoubleArray = IcePy.Operation(
    "opDoubleArray",
    "opDoubleArray",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0), ((), _Test_DoubleSeq_t, False, 0)),
    (((), _Test_DoubleSeq_t, False, 0),),
    ((), _Test_DoubleSeq_t, False, 0),
    ())

TestIntf._op_opBoolArray = IcePy.Operation(
    "opBoolArray",
    "opBoolArray",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolSeq_t, False, 0),),
    (((), _Test_BoolSeq_t, False, 0),),
    ((), _Test_BoolSeq_t, False, 0),
    ())

TestIntf._op_opByteArray = IcePy.Operation(
    "opByteArray",
    "opByteArray",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteList_t, False, 0),),
    (((), _Test_ByteList_t, False, 0),),
    ((), _Test_ByteList_t, False, 0),
    ())

TestIntf._op_opVariableArray = IcePy.Operation(
    "opVariableArray",
    "opVariableArray",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_VariableList_t, False, 0),),
    (((), _Test_VariableList_t, False, 0),),
    ((), _Test_VariableList_t, False, 0),
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

TestIntf._op_opBoolList = IcePy.Operation(
    "opBoolList",
    "opBoolList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolList_t, False, 0),),
    (((), _Test_BoolList_t, False, 0),),
    ((), _Test_BoolList_t, False, 0),
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

TestIntf._op_opByteList = IcePy.Operation(
    "opByteList",
    "opByteList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteList_t, False, 0),),
    (((), _Test_ByteList_t, False, 0),),
    ((), _Test_ByteList_t, False, 0),
    ())

TestIntf._op_opMyByteSeq = IcePy.Operation(
    "opMyByteSeq",
    "opMyByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, False, 0),),
    (((), _Test_ByteSeq_t, False, 0),),
    ((), _Test_ByteSeq_t, False, 0),
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

TestIntf._op_opStringList = IcePy.Operation(
    "opStringList",
    "opStringList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringList_t, False, 0),),
    (((), _Test_StringList_t, False, 0),),
    ((), _Test_StringList_t, False, 0),
    ())

TestIntf._op_opFixedSeq = IcePy.Operation(
    "opFixedSeq",
    "opFixedSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FixedSeq_t, False, 0),),
    (((), _Test_FixedSeq_t, False, 0),),
    ((), _Test_FixedSeq_t, False, 0),
    ())

TestIntf._op_opFixedList = IcePy.Operation(
    "opFixedList",
    "opFixedList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_FixedList_t, False, 0),),
    (((), _Test_FixedList_t, False, 0),),
    ((), _Test_FixedList_t, False, 0),
    ())

TestIntf._op_opVariableSeq = IcePy.Operation(
    "opVariableSeq",
    "opVariableSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_VariableSeq_t, False, 0),),
    (((), _Test_VariableSeq_t, False, 0),),
    ((), _Test_VariableSeq_t, False, 0),
    ())

TestIntf._op_opVariableList = IcePy.Operation(
    "opVariableList",
    "opVariableList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_VariableList_t, False, 0),),
    (((), _Test_VariableList_t, False, 0),),
    ((), _Test_VariableList_t, False, 0),
    ())

TestIntf._op_opStringStringDictSeq = IcePy.Operation(
    "opStringStringDictSeq",
    "opStringStringDictSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringStringDictSeq_t, False, 0),),
    (((), _Test_StringStringDictSeq_t, False, 0),),
    ((), _Test_StringStringDictSeq_t, False, 0),
    ())

TestIntf._op_opStringStringDictList = IcePy.Operation(
    "opStringStringDictList",
    "opStringStringDictList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringStringDictList_t, False, 0),),
    (((), _Test_StringStringDictList_t, False, 0),),
    ((), _Test_StringStringDictList_t, False, 0),
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

TestIntf._op_opEList = IcePy.Operation(
    "opEList",
    "opEList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_EList_t, False, 0),),
    (((), _Test_EList_t, False, 0),),
    ((), _Test_EList_t, False, 0),
    ())

TestIntf._op_opDPrxSeq = IcePy.Operation(
    "opDPrxSeq",
    "opDPrxSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DPrxSeq_t, False, 0),),
    (((), _Test_DPrxSeq_t, False, 0),),
    ((), _Test_DPrxSeq_t, False, 0),
    ())

TestIntf._op_opDPrxList = IcePy.Operation(
    "opDPrxList",
    "opDPrxList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_DPrxList_t, False, 0),),
    (((), _Test_DPrxList_t, False, 0),),
    ((), _Test_DPrxList_t, False, 0),
    ())

TestIntf._op_opCSeq = IcePy.Operation(
    "opCSeq",
    "opCSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_CSeq_t, False, 0),),
    (((), _Test_CSeq_t, False, 0),),
    ((), _Test_CSeq_t, False, 0),
    ())

TestIntf._op_opCList = IcePy.Operation(
    "opCList",
    "opCList",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_CList_t, False, 0),),
    (((), _Test_CList_t, False, 0),),
    ((), _Test_CList_t, False, 0),
    ())

TestIntf._op_opOutArrayByteSeq = IcePy.Operation(
    "opOutArrayByteSeq",
    "opOutArrayByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteSeq_t, False, 0),),
    (((), _Test_ByteSeq_t, False, 0),),
    None,
    ())

TestIntf._op_opIntStringDict = IcePy.Operation(
    "opIntStringDict",
    "opIntStringDict",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntStringDict_t, False, 0),),
    (((), _Test_IntStringDict_t, False, 0),),
    ((), _Test_IntStringDict_t, False, 0),
    ())

TestIntf._op_opVarDict = IcePy.Operation(
    "opVarDict",
    "opVarDict",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_StringIntDict_t, False, 0),),
    (((), _Test_StringIntDict_t, False, 0),),
    ((), _Test_LongLongDict_t, False, 0),
    ())

TestIntf._op_opShortBuffer = IcePy.Operation(
    "opShortBuffer",
    "opShortBuffer",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortBuffer_t, False, 0),),
    (((), _Test_ShortBuffer_t, False, 0),),
    ((), _Test_ShortBuffer_t, False, 0),
    ())

TestIntf._op_opBoolBuffer = IcePy.Operation(
    "opBoolBuffer",
    "opBoolBuffer",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BoolSeq_t, False, 0),),
    (((), _Test_BoolSeq_t, False, 0),),
    ((), _Test_BoolSeq_t, False, 0),
    ())

TestIntf._op_opBufferStruct = IcePy.Operation(
    "opBufferStruct",
    "opBufferStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BufferStruct_t, False, 0),),
    (),
    ((), _Test_BufferStruct_t, False, 0),
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
