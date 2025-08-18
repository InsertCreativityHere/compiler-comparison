# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Test.I_forward import _Test_IPrx_t

from abc import ABC

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class IPrx(ObjectPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> IPrx | None:
        return checkedCast(IPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[IPrx | None ]:
        return checkedCastAsync(IPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> IPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> IPrx | None:
        return uncheckedCast(IPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::I"

IcePy.defineProxy("::Test::I", IPrx)

class I(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::I", )

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::I"

__all__ = ["I", "IPrx", "_Test_IPrx_t"]
