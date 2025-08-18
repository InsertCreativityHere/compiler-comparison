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

from import.as import _import_as_t

from import.break import break
from import.break import breakPrx

from import.break_forward import _import_breakPrx_t

from import.continue import _import_continue_t

from import.do_forward import _import_doPrx_t

from import.guard import _import_guard_t

from import.return import _import_return_t

from import.switch_forward import _import_switch_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from import.continue import continue
    from import.do import doPrx
    from import.guard import guard
    from import.switch import switch


class doPrx(breakPrx):

    def public(self, context: dict[str, str] | None = None) -> None:
        return do._op_public.invoke(self, ((), context))

    def publicAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return do._op_public.invokeAsync(self, ((), context))

    def goto(self, if: continue, d: guard, private: switch | None, mutable: doPrx | None, namespace: breakPrx | None, not: switch | None, or: int, context: dict[str, str] | None = None) -> guard:
        return do._op_goto.invoke(self, ((if, d, private, mutable, namespace, not, or), context))

    def gotoAsync(self, if: continue, d: guard, private: switch | None, mutable: doPrx | None, namespace: breakPrx | None, not: switch | None, or: int, context: dict[str, str] | None = None) -> Awaitable[guard]:
        return do._op_goto.invokeAsync(self, ((if, d, private, mutable, namespace, not, or), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> doPrx | None:
        return checkedCast(doPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[doPrx | None ]:
        return checkedCastAsync(doPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> doPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> doPrx | None:
        return uncheckedCast(doPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::import::do"

IcePy.defineProxy("::import::do", doPrx)

class do(break, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::import::break", "::import::do", )
    _op_public: IcePy.Operation
    _op_goto: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::import::do"

    @abstractmethod
    def public(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def goto(self, if: continue, d: guard, private: switch | None, mutable: doPrx | None, namespace: breakPrx | None, not: switch | None, or: int, current: Current) -> guard | Awaitable[guard]:
        pass

do._op_public = IcePy.Operation(
    "public",
    "public",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

do._op_goto = IcePy.Operation(
    "goto",
    "goto",
    OperationMode.Normal,
    None,
    (),
    (((), _import_continue_t, False, 0), ((), _import_guard_t, False, 0), ((), _import_switch_t, False, 0), ((), _import_doPrx_t, False, 0), ((), _import_breakPrx_t, False, 0), ((), _import_switch_t, False, 0), ((), IcePy._t_long, False, 0)),
    (),
    ((), _import_guard_t, False, 0),
    (_import_return_t, _import_as_t))

__all__ = ["do", "doPrx", "_import_doPrx_t"]
