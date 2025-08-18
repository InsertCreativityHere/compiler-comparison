# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from abstract.case import case
from abstract.case import casePrx

from abstract.decimal import decimal
from abstract.decimal import decimalPrx

from abstract.explicit_forward import _abstract_explicitPrx_t

from abstract.foreach import _abstract_foreach_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class explicitPrx(decimalPrx, casePrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> explicitPrx | None:
        return checkedCast(explicitPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[explicitPrx | None ]:
        return checkedCastAsync(explicitPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> explicitPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> explicitPrx | None:
        return uncheckedCast(explicitPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::explicit"

IcePy.defineProxy("::abstract::explicit", explicitPrx)

class explicit(decimal, case, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::abstract::case", "::abstract::decimal", "::abstract::explicit", )

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::explicit"

__all__ = ["explicit", "explicitPrx", "_abstract_explicitPrx_t"]
