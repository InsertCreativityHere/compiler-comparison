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

from import.break_forward import _import_breakPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class breakPrx(ObjectPrx):

    def case(self, class: int, context: dict[str, str] | None = None) -> int:
        return break._op_case.invoke(self, ((class, ), context))

    def caseAsync(self, class: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return break._op_case.invokeAsync(self, ((class, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> breakPrx | None:
        return checkedCast(breakPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[breakPrx | None ]:
        return checkedCastAsync(breakPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> breakPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> breakPrx | None:
        return uncheckedCast(breakPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::import::break"

IcePy.defineProxy("::import::break", breakPrx)

class break(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::import::break", )
    _op_case: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::import::break"

    @abstractmethod
    def case(self, class: int, current: Current) -> int | Awaitable[int]:
        pass

break._op_case = IcePy.Operation(
    "case",
    "case",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (((), IcePy._t_int, False, 0),),
    None,
    ())

__all__ = ["break", "breakPrx", "_import_breakPrx_t"]
