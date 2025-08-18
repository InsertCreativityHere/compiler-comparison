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

from await.typeof_forward import _await_typeofPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class typeofPrx(ObjectPrx):

    def default(self, context: dict[str, str] | None = None) -> None:
        return typeof._op_default.invoke(self, ((), context))

    def defaultAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return typeof._op_default.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> typeofPrx | None:
        return checkedCast(typeofPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[typeofPrx | None ]:
        return checkedCastAsync(typeofPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> typeofPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> typeofPrx | None:
        return uncheckedCast(typeofPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::await::typeof"

IcePy.defineProxy("::await::typeof", typeofPrx)

class typeof(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::await::typeof", )
    _op_default: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::await::typeof"

    @abstractmethod
    def default(self, current: Current) -> None | Awaitable[None]:
        pass

typeof._op_default = IcePy.Operation(
    "default",
    "default",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["typeof", "typeofPrx", "_await_typeofPrx_t"]
