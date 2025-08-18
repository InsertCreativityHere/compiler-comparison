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

from abstract.default_forward import _abstract_defaultPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class defaultPrx(ObjectPrx):

    def do(self, context: dict[str, str] | None = None) -> None:
        return default._op_do.invoke(self, ((), context))

    def doAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return default._op_do.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> defaultPrx | None:
        return checkedCast(defaultPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[defaultPrx | None ]:
        return checkedCastAsync(defaultPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> defaultPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> defaultPrx | None:
        return uncheckedCast(defaultPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::default"

IcePy.defineProxy("::abstract::default", defaultPrx)

class default(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::abstract::default", )
    _op_do: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::default"

    @abstractmethod
    def do(self, current: Current) -> None | Awaitable[None]:
        pass

default._op_do = IcePy.Operation(
    "do",
    "do",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["default", "defaultPrx", "_abstract_defaultPrx_t"]
