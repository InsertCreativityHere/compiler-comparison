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

from System.Test_forward import _System_TestPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return Test._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Test._op_op.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestPrx | None:
        return checkedCast(TestPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestPrx | None ]:
        return checkedCastAsync(TestPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestPrx | None:
        return uncheckedCast(TestPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::System::Test"

IcePy.defineProxy("::System::Test", TestPrx)

class Test(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::System::Test", )
    _op_op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::System::Test"

    @abstractmethod
    def op(self, current: Current) -> None | Awaitable[None]:
        pass

Test._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Test", "TestPrx", "_System_TestPrx_t"]
