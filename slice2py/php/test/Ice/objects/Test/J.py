# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Test.I import I
from Test.I import IPrx

from Test.J_forward import _Test_JPrx_t

from abc import ABC

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class JPrx(IPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> JPrx | None:
        return checkedCast(JPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[JPrx | None ]:
        return checkedCastAsync(JPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> JPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> JPrx | None:
        return uncheckedCast(JPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::J"

IcePy.defineProxy("::Test::J", JPrx)

class J(I, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::I", "::Test::J", )

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::J"

__all__ = ["J", "JPrx", "_Test_JPrx_t"]
