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

from Test.Outer.Inner.TestIntf_forward import _Test_Outer_Inner_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def op(self, i: int, context: dict[str, str] | None = None) -> tuple[int, int]:
        return TestIntf._op_op.invoke(self, ((i, ), context))

    def opAsync(self, i: int, context: dict[str, str] | None = None) -> Awaitable[tuple[int, int]]:
        return TestIntf._op_op.invokeAsync(self, ((i, ), context))

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
        return "::Test::Outer::Inner::TestIntf"

IcePy.defineProxy("::Test::Outer::Inner::TestIntf", TestIntfPrx)

class TestIntf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Outer::Inner::TestIntf", )
    _op_op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Outer::Inner::TestIntf"

    @abstractmethod
    def op(self, i: int, current: Current) -> tuple[int, int] | Awaitable[tuple[int, int]]:
        pass

TestIntf._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (((), IcePy._t_int, False, 0),),
    ((), IcePy._t_int, False, 0),
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_Test_Outer_Inner_TestIntfPrx_t"]
