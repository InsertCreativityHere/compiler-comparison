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

from generated.test.Slice.escape.Test.Awaitable_forward import _generated_test_Slice_escape_Test_AwaitablePrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable as _m_collections_abc_Awaitable
    from collections.abc import Sequence


class AwaitablePrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return Awaitable._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> _m_collections_abc_Awaitable[None]:
        return Awaitable._op_op.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> AwaitablePrx | None:
        return checkedCast(AwaitablePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> _m_collections_abc_Awaitable[AwaitablePrx | None ]:
        return checkedCastAsync(AwaitablePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> AwaitablePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> AwaitablePrx | None:
        return uncheckedCast(AwaitablePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Awaitable"

IcePy.defineProxy("::Test::Awaitable", AwaitablePrx)

class Awaitable(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Awaitable", )
    _op_op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Awaitable"

    @abstractmethod
    def op(self, current: Current) -> None | _m_collections_abc_Awaitable[None]:
        pass

Awaitable._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Awaitable", "AwaitablePrx", "_generated_test_Slice_escape_Test_AwaitablePrx_t"]
