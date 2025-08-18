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

from await.break import _await_break_t

from await.case import case
from await.case import casePrx

from await.delete_forward import _await_delete_t

from await.explicit_forward import _await_explicitPrx_t

from await.fixed import _await_fixed_t

from await.foreach import _await_foreach_t

from await.typeof import typeof
from await.typeof import typeofPrx

from await.typeof_forward import _await_typeofPrx_t

from await.var import _await_var_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from await.break import break
    from await.delete import delete
    from await.var import var
    from collections.abc import Awaitable
    from collections.abc import Sequence


class explicitPrx(typeofPrx, casePrx):

    def in(self, internal: break, new: typeofPrx | None, null: delete | None, override: int, context: dict[str, str] | None = None) -> var:
        return explicit._op_in.invoke(self, ((internal, new, null, override), context))

    def inAsync(self, internal: break, new: typeofPrx | None, null: delete | None, override: int, context: dict[str, str] | None = None) -> Awaitable[var]:
        return explicit._op_in.invokeAsync(self, ((internal, new, null, override), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> explicitPrx | None:
        return checkedCast(explicitPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[explicitPrx | None ]:
        return checkedCastAsync(explicitPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> explicitPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> explicitPrx | None:
        return uncheckedCast(explicitPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::await::explicit"

IcePy.defineProxy("::await::explicit", explicitPrx)

class explicit(typeof, case, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::await::case", "::await::explicit", "::await::typeof", )
    _op_in: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::await::explicit"

    @abstractmethod
    def in(self, internal: break, new: typeofPrx | None, null: delete | None, override: int, current: Current) -> var | Awaitable[var]:
        pass

explicit._op_in = IcePy.Operation(
    "in",
    "in",
    OperationMode.Normal,
    None,
    (),
    (((), _await_break_t, False, 0), ((), _await_typeofPrx_t, False, 0), ((), _await_delete_t, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    ((), _await_var_t, False, 0),
    (_await_fixed_t, _await_foreach_t))

__all__ = ["explicit", "explicitPrx", "_await_explicitPrx_t"]
