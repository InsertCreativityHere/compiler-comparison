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

from Test.TestFacet_forward import _Test_TestFacetPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestFacetPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return TestFacet._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestFacet._op_op.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestFacetPrx | None:
        return checkedCast(TestFacetPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestFacetPrx | None ]:
        return checkedCastAsync(TestFacetPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestFacetPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestFacetPrx | None:
        return uncheckedCast(TestFacetPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestFacet"

IcePy.defineProxy("::Test::TestFacet", TestFacetPrx)

class TestFacet(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestFacet", )
    _op_op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestFacet"

    @abstractmethod
    def op(self, current: Current) -> None | Awaitable[None]:
        pass

TestFacet._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestFacet", "TestFacetPrx", "_Test_TestFacetPrx_t"]
