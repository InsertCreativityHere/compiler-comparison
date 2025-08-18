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

from await.case_forward import _await_casePrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class casePrx(ObjectPrx):

    def catch(self, checked: int, context: dict[str, str] | None = None) -> int:
        return case._op_catch.invoke(self, ((checked, ), context))

    def catchAsync(self, checked: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return case._op_catch.invokeAsync(self, ((checked, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> casePrx | None:
        return checkedCast(casePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[casePrx | None ]:
        return checkedCastAsync(casePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> casePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> casePrx | None:
        return uncheckedCast(casePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::await::case"

IcePy.defineProxy("::await::case", casePrx)

class case(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::await::case", )
    _op_catch: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::await::case"

    @abstractmethod
    def catch(self, checked: int, current: Current) -> int | Awaitable[int]:
        pass

case._op_catch = IcePy.Operation(
    "catch",
    "catch",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (((), IcePy._t_int, False, 0),),
    None,
    ())

__all__ = ["case", "casePrx", "_await_casePrx_t"]
