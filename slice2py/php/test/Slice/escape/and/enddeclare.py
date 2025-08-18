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

from and.array import _and_array_t

from and.die import die
from and.die import diePrx

from and.echo_forward import _and_echo_t

from and.enddeclare_forward import _and_enddeclarePrx_t

from and.endfor import _and_endfor_t

from and.endforeach import _and_endforeach_t

from and.endif import _and_endif_t

from and.endwhile import _and_endwhile_t

from and.function import function
from and.function import functionPrx

from and.function_forward import _and_functionPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from and.array import array
    from and.echo import echo
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class enddeclarePrx(diePrx, functionPrx):

    def foreach(self, global: echo | None, include: functionPrx | None = None, context: dict[str, str] | None = None) -> tuple[array, list[array], dict[str, array] | None]:
        return enddeclare._op_foreach.invoke(self, ((global, include), context))

    def foreachAsync(self, global: echo | None, include: functionPrx | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[array, list[array], dict[str, array] | None]]:
        return enddeclare._op_foreach.invokeAsync(self, ((global, include), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> enddeclarePrx | None:
        return checkedCast(enddeclarePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[enddeclarePrx | None ]:
        return checkedCastAsync(enddeclarePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> enddeclarePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> enddeclarePrx | None:
        return uncheckedCast(enddeclarePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::and::enddeclare"

IcePy.defineProxy("::and::enddeclare", enddeclarePrx)

class enddeclare(die, function, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::and::die", "::and::enddeclare", "::and::function", )
    _op_foreach: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::and::enddeclare"

    @abstractmethod
    def foreach(self, global: echo | None, include: functionPrx | None, current: Current) -> tuple[array, Sequence[array], Mapping[str, array] | None] | Awaitable[tuple[array, Sequence[array], Mapping[str, array] | None]]:
        pass

enddeclare._op_foreach = IcePy.Operation(
    "foreach",
    "foreach",
    OperationMode.Normal,
    None,
    (),
    (((), _and_echo_t, False, 0), ((), _and_functionPrx_t, True, 1)),
    (((), _and_endfor_t, False, 0), ((), _and_endforeach_t, True, 2)),
    ((), _and_array_t, False, 0),
    (_and_endif_t, _and_endwhile_t))

__all__ = ["enddeclare", "enddeclarePrx", "_and_enddeclarePrx_t"]
