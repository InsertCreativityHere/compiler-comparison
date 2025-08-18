# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from BEGIN.END import _BEGIN_END_t

from BEGIN.break import break
from BEGIN.break import breakPrx

from BEGIN.break_forward import _BEGIN_breakPrx_t

from BEGIN.display_forward import _BEGIN_display_t

from BEGIN.elsif_forward import _BEGIN_elsifPrx_t

from BEGIN.nil import _BEGIN_nil_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from BEGIN.END import END
    from BEGIN.display import display
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class elsifPrx(breakPrx):

    def for(self, freeze: display | None, if: breakPrx | None, methods: int, context: dict[str, str] | None = None) -> END:
        return elsif._op_for.invoke(self, ((freeze, if, methods), context))

    def forAsync(self, freeze: display | None, if: breakPrx | None, methods: int, context: dict[str, str] | None = None) -> Awaitable[END]:
        return elsif._op_for.invokeAsync(self, ((freeze, if, methods), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> elsifPrx | None:
        return checkedCast(elsifPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[elsifPrx | None ]:
        return checkedCastAsync(elsifPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> elsifPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> elsifPrx | None:
        return uncheckedCast(elsifPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::BEGIN::elsif"

IcePy.defineProxy("::BEGIN::elsif", elsifPrx)

class elsif(break, ABC):

    _ice_ids: Sequence[str] = ("::BEGIN::break", "::BEGIN::elsif", "::Ice::Object", )
    _op_for: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::BEGIN::elsif"

    @abstractmethod
    def for(self, freeze: display | None, if: breakPrx | None, methods: int, current: Current) -> END | Awaitable[END]:
        pass

elsif._op_for = IcePy.Operation(
    "for",
    "for",
    OperationMode.Normal,
    None,
    (),
    (((), _BEGIN_display_t, False, 0), ((), _BEGIN_breakPrx_t, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    ((), _BEGIN_END_t, False, 0),
    (_BEGIN_nil_t,))

__all__ = ["elsif", "elsifPrx", "_BEGIN_elsifPrx_t"]
