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

from Test.ByteEnum import _Test_ByteEnum_t

from Test.ByteEnumSeq import _Test_ByteEnumSeq_t

from Test.IntEnum import _Test_IntEnum_t

from Test.IntEnumSeq import _Test_IntEnumSeq_t

from Test.ShortEnum import _Test_ShortEnum_t

from Test.ShortEnumSeq import _Test_ShortEnumSeq_t

from Test.SimpleEnum import _Test_SimpleEnum_t

from Test.SimpleEnumSeq import _Test_SimpleEnumSeq_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.ByteEnum import ByteEnum
    from Test.IntEnum import IntEnum
    from Test.ShortEnum import ShortEnum
    from Test.SimpleEnum import SimpleEnum
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def opByte(self, b1: ByteEnum, context: dict[str, str] | None = None) -> tuple[ByteEnum, ByteEnum]:
        return TestIntf._op_opByte.invoke(self, ((b1, ), context))

    def opByteAsync(self, b1: ByteEnum, context: dict[str, str] | None = None) -> Awaitable[tuple[ByteEnum, ByteEnum]]:
        return TestIntf._op_opByte.invokeAsync(self, ((b1, ), context))

    def opShort(self, s1: ShortEnum, context: dict[str, str] | None = None) -> tuple[ShortEnum, ShortEnum]:
        return TestIntf._op_opShort.invoke(self, ((s1, ), context))

    def opShortAsync(self, s1: ShortEnum, context: dict[str, str] | None = None) -> Awaitable[tuple[ShortEnum, ShortEnum]]:
        return TestIntf._op_opShort.invokeAsync(self, ((s1, ), context))

    def opInt(self, i1: IntEnum, context: dict[str, str] | None = None) -> tuple[IntEnum, IntEnum]:
        return TestIntf._op_opInt.invoke(self, ((i1, ), context))

    def opIntAsync(self, i1: IntEnum, context: dict[str, str] | None = None) -> Awaitable[tuple[IntEnum, IntEnum]]:
        return TestIntf._op_opInt.invokeAsync(self, ((i1, ), context))

    def opSimple(self, s1: SimpleEnum, context: dict[str, str] | None = None) -> tuple[SimpleEnum, SimpleEnum]:
        return TestIntf._op_opSimple.invoke(self, ((s1, ), context))

    def opSimpleAsync(self, s1: SimpleEnum, context: dict[str, str] | None = None) -> Awaitable[tuple[SimpleEnum, SimpleEnum]]:
        return TestIntf._op_opSimple.invokeAsync(self, ((s1, ), context))

    def opByteSeq(self, b1: Sequence[ByteEnum], context: dict[str, str] | None = None) -> tuple[list[ByteEnum], list[ByteEnum]]:
        return TestIntf._op_opByteSeq.invoke(self, ((b1, ), context))

    def opByteSeqAsync(self, b1: Sequence[ByteEnum], context: dict[str, str] | None = None) -> Awaitable[tuple[list[ByteEnum], list[ByteEnum]]]:
        return TestIntf._op_opByteSeq.invokeAsync(self, ((b1, ), context))

    def opShortSeq(self, s1: Sequence[ShortEnum], context: dict[str, str] | None = None) -> tuple[list[ShortEnum], list[ShortEnum]]:
        return TestIntf._op_opShortSeq.invoke(self, ((s1, ), context))

    def opShortSeqAsync(self, s1: Sequence[ShortEnum], context: dict[str, str] | None = None) -> Awaitable[tuple[list[ShortEnum], list[ShortEnum]]]:
        return TestIntf._op_opShortSeq.invokeAsync(self, ((s1, ), context))

    def opIntSeq(self, i1: Sequence[IntEnum], context: dict[str, str] | None = None) -> tuple[list[IntEnum], list[IntEnum]]:
        return TestIntf._op_opIntSeq.invoke(self, ((i1, ), context))

    def opIntSeqAsync(self, i1: Sequence[IntEnum], context: dict[str, str] | None = None) -> Awaitable[tuple[list[IntEnum], list[IntEnum]]]:
        return TestIntf._op_opIntSeq.invokeAsync(self, ((i1, ), context))

    def opSimpleSeq(self, s1: Sequence[SimpleEnum], context: dict[str, str] | None = None) -> tuple[list[SimpleEnum], list[SimpleEnum]]:
        return TestIntf._op_opSimpleSeq.invoke(self, ((s1, ), context))

    def opSimpleSeqAsync(self, s1: Sequence[SimpleEnum], context: dict[str, str] | None = None) -> Awaitable[tuple[list[SimpleEnum], list[SimpleEnum]]]:
        return TestIntf._op_opSimpleSeq.invokeAsync(self, ((s1, ), context))

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
    _op_opByte: IcePy.Operation
    _op_opShort: IcePy.Operation
    _op_opInt: IcePy.Operation
    _op_opSimple: IcePy.Operation
    _op_opByteSeq: IcePy.Operation
    _op_opShortSeq: IcePy.Operation
    _op_opIntSeq: IcePy.Operation
    _op_opSimpleSeq: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def opByte(self, b1: ByteEnum, current: Current) -> tuple[ByteEnum, ByteEnum] | Awaitable[tuple[ByteEnum, ByteEnum]]:
        pass

    @abstractmethod
    def opShort(self, s1: ShortEnum, current: Current) -> tuple[ShortEnum, ShortEnum] | Awaitable[tuple[ShortEnum, ShortEnum]]:
        pass

    @abstractmethod
    def opInt(self, i1: IntEnum, current: Current) -> tuple[IntEnum, IntEnum] | Awaitable[tuple[IntEnum, IntEnum]]:
        pass

    @abstractmethod
    def opSimple(self, s1: SimpleEnum, current: Current) -> tuple[SimpleEnum, SimpleEnum] | Awaitable[tuple[SimpleEnum, SimpleEnum]]:
        pass

    @abstractmethod
    def opByteSeq(self, b1: list[ByteEnum], current: Current) -> tuple[Sequence[ByteEnum], Sequence[ByteEnum]] | Awaitable[tuple[Sequence[ByteEnum], Sequence[ByteEnum]]]:
        pass

    @abstractmethod
    def opShortSeq(self, s1: list[ShortEnum], current: Current) -> tuple[Sequence[ShortEnum], Sequence[ShortEnum]] | Awaitable[tuple[Sequence[ShortEnum], Sequence[ShortEnum]]]:
        pass

    @abstractmethod
    def opIntSeq(self, i1: list[IntEnum], current: Current) -> tuple[Sequence[IntEnum], Sequence[IntEnum]] | Awaitable[tuple[Sequence[IntEnum], Sequence[IntEnum]]]:
        pass

    @abstractmethod
    def opSimpleSeq(self, s1: list[SimpleEnum], current: Current) -> tuple[Sequence[SimpleEnum], Sequence[SimpleEnum]] | Awaitable[tuple[Sequence[SimpleEnum], Sequence[SimpleEnum]]]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_opByte = IcePy.Operation(
    "opByte",
    "opByte",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteEnum_t, False, 0),),
    (((), _Test_ByteEnum_t, False, 0),),
    ((), _Test_ByteEnum_t, False, 0),
    ())

TestIntf._op_opShort = IcePy.Operation(
    "opShort",
    "opShort",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortEnum_t, False, 0),),
    (((), _Test_ShortEnum_t, False, 0),),
    ((), _Test_ShortEnum_t, False, 0),
    ())

TestIntf._op_opInt = IcePy.Operation(
    "opInt",
    "opInt",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntEnum_t, False, 0),),
    (((), _Test_IntEnum_t, False, 0),),
    ((), _Test_IntEnum_t, False, 0),
    ())

TestIntf._op_opSimple = IcePy.Operation(
    "opSimple",
    "opSimple",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SimpleEnum_t, False, 0),),
    (((), _Test_SimpleEnum_t, False, 0),),
    ((), _Test_SimpleEnum_t, False, 0),
    ())

TestIntf._op_opByteSeq = IcePy.Operation(
    "opByteSeq",
    "opByteSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ByteEnumSeq_t, False, 0),),
    (((), _Test_ByteEnumSeq_t, False, 0),),
    ((), _Test_ByteEnumSeq_t, False, 0),
    ())

TestIntf._op_opShortSeq = IcePy.Operation(
    "opShortSeq",
    "opShortSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ShortEnumSeq_t, False, 0),),
    (((), _Test_ShortEnumSeq_t, False, 0),),
    ((), _Test_ShortEnumSeq_t, False, 0),
    ())

TestIntf._op_opIntSeq = IcePy.Operation(
    "opIntSeq",
    "opIntSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_IntEnumSeq_t, False, 0),),
    (((), _Test_IntEnumSeq_t, False, 0),),
    ((), _Test_IntEnumSeq_t, False, 0),
    ())

TestIntf._op_opSimpleSeq = IcePy.Operation(
    "opSimpleSeq",
    "opSimpleSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SimpleEnumSeq_t, False, 0),),
    (((), _Test_SimpleEnumSeq_t, False, 0),),
    ((), _Test_SimpleEnumSeq_t, False, 0),
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
