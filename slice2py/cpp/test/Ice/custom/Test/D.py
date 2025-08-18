# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Test.D_forward import _Test_DPrx_t

from abc import ABC

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class DPrx(ObjectPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> DPrx | None:
        return checkedCast(DPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[DPrx | None ]:
        return checkedCastAsync(DPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> DPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> DPrx | None:
        return uncheckedCast(DPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D"

IcePy.defineProxy("::Test::D", DPrx)

class D(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::D", )

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D"

__all__ = ["D", "DPrx", "_Test_DPrx_t"]
