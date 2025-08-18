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

from generated.test.Slice.escape.Test.IntSeq import _generated_test_Slice_escape_Test_IntSeq_t

from generated.test.Slice.escape.Test.Sequence_forward import _generated_test_Slice_escape_Test_SequencePrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence as _m_collections_abc_Sequence


class SequencePrx(ObjectPrx):

    def sendIntSeq(self, seq: _m_collections_abc_Sequence[int], context: dict[str, str] | None = None) -> None:
        return Sequence._op_sendIntSeq.invoke(self, ((seq, ), context))

    def sendIntSeqAsync(self, seq: _m_collections_abc_Sequence[int], context: dict[str, str] | None = None) -> Awaitable[None]:
        return Sequence._op_sendIntSeq.invokeAsync(self, ((seq, ), context))

    def abstractmethod(self, context: dict[str, str] | None = None) -> None:
        return Sequence._op_abstractmethod.invoke(self, ((), context))

    def abstractmethodAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Sequence._op_abstractmethod.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> SequencePrx | None:
        return checkedCast(SequencePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[SequencePrx | None ]:
        return checkedCastAsync(SequencePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> SequencePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> SequencePrx | None:
        return uncheckedCast(SequencePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Sequence"

IcePy.defineProxy("::Test::Sequence", SequencePrx)

class Sequence(Object, ABC):

    _ice_ids: _m_collections_abc_Sequence[str] = ("::Ice::Object", "::Test::Sequence", )
    _op_sendIntSeq: IcePy.Operation
    _op_abstractmethod: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Sequence"

    @abstractmethod
    def sendIntSeq(self, seq: list[int], current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def abstractmethod(self, current: Current) -> None | Awaitable[None]:
        pass

Sequence._op_sendIntSeq = IcePy.Operation(
    "sendIntSeq",
    "sendIntSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Slice_escape_Test_IntSeq_t, False, 0),),
    (),
    None,
    ())

Sequence._op_abstractmethod = IcePy.Operation(
    "abstractmethod",
    "abstractmethod",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Sequence", "SequencePrx", "_generated_test_Slice_escape_Test_SequencePrx_t"]
