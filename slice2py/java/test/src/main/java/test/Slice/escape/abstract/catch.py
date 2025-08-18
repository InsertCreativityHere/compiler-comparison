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

from abstract.catch_forward import _abstract_catchPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class catchPrx(ObjectPrx):

    def _checkedCast(self, clone: int, context: dict[str, str] | None = None) -> int:
        return catch._op_checkedCast.invoke(self, ((clone, ), context))

    def _checkedCastAsync(self, clone: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return catch._op_checkedCast.invokeAsync(self, ((clone, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> catchPrx | None:
        return checkedCast(catchPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[catchPrx | None ]:
        return checkedCastAsync(catchPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> catchPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> catchPrx | None:
        return uncheckedCast(catchPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::catch"

IcePy.defineProxy("::abstract::catch", catchPrx)

class catch(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::abstract::catch", )
    _op_checkedCast: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::catch"

    @abstractmethod
    def checkedCast(self, clone: int, current: Current) -> int | Awaitable[int]:
        pass

catch._op_checkedCast = IcePy.Operation(
    "checkedCast",
    "checkedCast",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (((), IcePy._t_int, False, 0),),
    None,
    ())

__all__ = ["catch", "catchPrx", "_abstract_catchPrx_t"]
