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

from Test.BaseEx import _Test_BaseEx_t

from Test.Base_forward import _Test_Base_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.Base import Base
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def opDerived(self, context: dict[str, str] | None = None) -> Base | None:
        return TestIntf._op_opDerived.invoke(self, ((), context))

    def opDerivedAsync(self, context: dict[str, str] | None = None) -> Awaitable[Base | None]:
        return TestIntf._op_opDerived.invokeAsync(self, ((), context))

    def throwDerived(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwDerived.invoke(self, ((), context))

    def throwDerivedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwDerived.invokeAsync(self, ((), context))

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
    _op_opDerived: IcePy.Operation
    _op_throwDerived: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def opDerived(self, current: Current) -> Base | None | Awaitable[Base | None]:
        pass

    @abstractmethod
    def throwDerived(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_opDerived = IcePy.Operation(
    "opDerived",
    "opDerived",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_Base_t, False, 0),
    ())

TestIntf._op_throwDerived = IcePy.Operation(
    "throwDerived",
    "throwDerived",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_BaseEx_t,))

__all__ = ["TestIntf", "TestIntfPrx", "_Test_TestIntfPrx_t"]
