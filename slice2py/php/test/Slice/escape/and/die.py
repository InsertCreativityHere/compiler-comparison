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

from and.die_forward import _and_diePrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class diePrx(ObjectPrx):

    def do(self, context: dict[str, str] | None = None) -> None:
        return die._op_do.invoke(self, ((), context))

    def doAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return die._op_do.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> diePrx | None:
        return checkedCast(diePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[diePrx | None ]:
        return checkedCastAsync(diePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> diePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> diePrx | None:
        return uncheckedCast(diePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::and::die"

IcePy.defineProxy("::and::die", diePrx)

class die(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::and::die", )
    _op_do: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::and::die"

    @abstractmethod
    def do(self, current: Current) -> None | Awaitable[None]:
        pass

die._op_do = IcePy.Operation(
    "do",
    "do",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["die", "diePrx", "_and_diePrx_t"]
