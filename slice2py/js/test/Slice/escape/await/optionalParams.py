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

from await.break import _await_break_t

from await.explicit_forward import _await_explicitPrx_t

from await.optionalParams_forward import _await_optionalParamsPrx_t

from await.var import _await_var_t

from await.while import _await_while_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from await.break import break
    from await.explicit import explicitPrx
    from await.var import var
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class optionalParamsPrx(ObjectPrx):

    def in(self, goto: var | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: dict[str, str] | None = None) -> tuple[break | None, str | None, explicitPrx | None]:
        return optionalParams._op_in.invoke(self, ((goto, if, internal), context))

    def inAsync(self, goto: var | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[break | None, str | None, explicitPrx | None]]:
        return optionalParams._op_in.invokeAsync(self, ((goto, if, internal), context))

    def continue(self, goto: var | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: dict[str, str] | None = None) -> tuple[break | None, str | None, explicitPrx | None]:
        return optionalParams._op_continue.invoke(self, ((goto, if, internal), context))

    def continueAsync(self, goto: var | None = None, if: explicitPrx | None = None, internal: Mapping[str, break] | None = None, context: dict[str, str] | None = None) -> Awaitable[tuple[break | None, str | None, explicitPrx | None]]:
        return optionalParams._op_continue.invokeAsync(self, ((goto, if, internal), context))

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
        return "::await::optionalParams"

IcePy.defineProxy("::await::optionalParams", optionalParamsPrx)

class optionalParams(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::await::optionalParams", )
    _op_in: IcePy.Operation
    _op_continue: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::await::optionalParams"

    @abstractmethod
    def in(self, goto: var | None, if: explicitPrx | None, internal: dict[str, break] | None, current: Current) -> tuple[break | None, str | None, explicitPrx | None] | Awaitable[tuple[break | None, str | None, explicitPrx | None]]:
        pass

    @abstractmethod
    def continue(self, goto: var | None, if: explicitPrx | None, internal: dict[str, break] | None, current: Current) -> tuple[break | None, str | None, explicitPrx | None] | Awaitable[tuple[break | None, str | None, explicitPrx | None]]:
        pass

optionalParams._op_in = IcePy.Operation(
    "in",
    "in",
    OperationMode.Normal,
    None,
    (),
    (((), _await_var_t, True, 2), ((), _await_explicitPrx_t, True, 3), ((), _await_while_t, True, 5)),
    (((), IcePy._t_string, True, 7), ((), _await_explicitPrx_t, True, 8)),
    ((), _await_break_t, True, 1),
    ())

optionalParams._op_continue = IcePy.Operation(
    "continue",
    "continue",
    OperationMode.Normal,
    None,
    (),
    (((), _await_var_t, True, 2), ((), _await_explicitPrx_t, True, 3), ((), _await_while_t, True, 5)),
    (((), IcePy._t_string, True, 7), ((), _await_explicitPrx_t, True, 8)),
    ((), _await_break_t, True, 1),
    ())

__all__ = ["optionalParams", "optionalParamsPrx", "_await_optionalParamsPrx_t"]
