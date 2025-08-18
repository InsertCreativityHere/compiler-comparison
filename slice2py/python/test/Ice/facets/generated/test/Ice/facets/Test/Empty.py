# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from abc import ABC

from generated.test.Ice.facets.Test.Empty_forward import _generated_test_Ice_facets_Test_EmptyPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class EmptyPrx(ObjectPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> EmptyPrx | None:
        return checkedCast(EmptyPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[EmptyPrx | None ]:
        return checkedCastAsync(EmptyPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> EmptyPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> EmptyPrx | None:
        return uncheckedCast(EmptyPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Empty"

IcePy.defineProxy("::Test::Empty", EmptyPrx)

class Empty(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Empty", )

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Empty"

__all__ = ["Empty", "EmptyPrx", "_generated_test_Ice_facets_Test_EmptyPrx_t"]
