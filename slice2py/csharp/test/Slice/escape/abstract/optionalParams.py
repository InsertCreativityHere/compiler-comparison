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

from abstract.as import _abstract_as_t

from abstract.break import _abstract_break_t

from abstract.explicit_forward import _abstract_explicitPrx_t

from abstract.optionalParams_forward import _abstract_optionalParamsPrx_t

from abstract.while import _abstract_while_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from abstract.as import as
    from abstract.break import break
    from abstract.explicit import explicitPrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class optionalParamsPrx(ObjectPrx):

    def for(self, goto: as | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: str | None = None, context_: dict[str, str] | None = None) -> break | None:
        return optionalParams._op_for.invoke(self, ((goto, if, internal, context), context_))

    def forAsync(self, goto: as | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: str | None = None, context_: dict[str, str] | None = None) -> Awaitable[break | None]:
        return optionalParams._op_for.invokeAsync(self, ((goto, if, internal, context), context_))

    def continue(self, goto: as | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: str | None = None, context_: dict[str, str] | None = None) -> break | None:
        return optionalParams._op_continue.invoke(self, ((goto, if, internal, context), context_))

    def continueAsync(self, goto: as | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: str | None = None, context_: dict[str, str] | None = None) -> Awaitable[break | None]:
        return optionalParams._op_continue.invokeAsync(self, ((goto, if, internal, context), context_))

    def in(self, context_: dict[str, str] | None = None) -> tuple[break | None, as | None, explicitPrx | None, dict[str, break] | None, str | None]:
        return optionalParams._op_in.invoke(self, ((), context_))

    def inAsync(self, context_: dict[str, str] | None = None) -> Awaitable[tuple[break | None, as | None, explicitPrx | None, dict[str, break] | None, str | None]]:
        return optionalParams._op_in.invokeAsync(self, ((), context_))

    def foreach(self, context_: dict[str, str] | None = None) -> tuple[break | None, as | None, explicitPrx | None, dict[str, break] | None, str | None]:
        return optionalParams._op_foreach.invoke(self, ((), context_))

    def foreachAsync(self, context_: dict[str, str] | None = None) -> Awaitable[tuple[break | None, as | None, explicitPrx | None, dict[str, break] | None, str | None]]:
        return optionalParams._op_foreach.invokeAsync(self, ((), context_))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> optionalParamsPrx | None:
        return checkedCast(optionalParamsPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[optionalParamsPrx | None ]:
        return checkedCastAsync(optionalParamsPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> optionalParamsPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> optionalParamsPrx | None:
        return uncheckedCast(optionalParamsPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::optionalParams"

IcePy.defineProxy("::abstract::optionalParams", optionalParamsPrx)

class optionalParams(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::abstract::optionalParams", )
    _op_for: IcePy.Operation
    _op_continue: IcePy.Operation
    _op_in: IcePy.Operation
    _op_foreach: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::optionalParams"

    @abstractmethod
    def for(self, goto: as | None, if: explicitPrx | None, internal: dict[str, break] | None, context: str | None, current: Current) -> break | None | Awaitable[break | None]:
        pass

    @abstractmethod
    def continue(self, goto: as | None, if: explicitPrx | None, internal: dict[str, break] | None, context: str | None, current: Current) -> break | None | Awaitable[break | None]:
        pass

    @abstractmethod
    def in(self, current: Current) -> tuple[break | None, as | None, explicitPrx | None, Mapping[str, break] | None, str | None] | Awaitable[tuple[break | None, as | None, explicitPrx | None, Mapping[str, break] | None, str | None]]:
        pass

    @abstractmethod
    def foreach(self, current: Current) -> tuple[break | None, as | None, explicitPrx | None, Mapping[str, break] | None, str | None] | Awaitable[tuple[break | None, as | None, explicitPrx | None, Mapping[str, break] | None, str | None]]:
        pass

optionalParams._op_for = IcePy.Operation(
    "for",
    "for",
    OperationMode.Normal,
    None,
    (),
    (((), _abstract_as_t, True, 2), ((), _abstract_explicitPrx_t, True, 3), ((), _abstract_while_t, True, 5), ((), IcePy._t_string, True, 7)),
    (),
    ((), _abstract_break_t, True, 1),
    ())

optionalParams._op_continue = IcePy.Operation(
    "continue",
    "continue",
    OperationMode.Normal,
    None,
    (),
    (((), _abstract_as_t, True, 2), ((), _abstract_explicitPrx_t, True, 3), ((), _abstract_while_t, True, 5), ((), IcePy._t_string, True, 7)),
    (),
    ((), _abstract_break_t, True, 1),
    ())

optionalParams._op_in = IcePy.Operation(
    "in",
    "in",
    OperationMode.Normal,
    None,
    (),
    (),
    (((), _abstract_as_t, True, 2), ((), _abstract_explicitPrx_t, True, 3), ((), _abstract_while_t, True, 5), ((), IcePy._t_string, True, 7)),
    ((), _abstract_break_t, True, 1),
    ())

optionalParams._op_foreach = IcePy.Operation(
    "foreach",
    "foreach",
    OperationMode.Normal,
    None,
    (),
    (),
    (((), _abstract_as_t, True, 2), ((), _abstract_explicitPrx_t, True, 3), ((), _abstract_while_t, True, 5), ((), IcePy._t_string, True, 7)),
    ((), _abstract_break_t, True, 1),
    ())

__all__ = ["optionalParams", "optionalParamsPrx", "_abstract_optionalParamsPrx_t"]
