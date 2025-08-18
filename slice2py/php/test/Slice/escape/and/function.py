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

from and.function_forward import _and_functionPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class functionPrx(ObjectPrx):

    def continue(self, declare: int, default: int, context: dict[str, str] | None = None) -> None:
        return function._op_continue.invoke(self, ((declare, default), context))

    def continueAsync(self, declare: int, default: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return function._op_continue.invokeAsync(self, ((declare, default), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> functionPrx | None:
        return checkedCast(functionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[functionPrx | None ]:
        return checkedCastAsync(functionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> functionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> functionPrx | None:
        return uncheckedCast(functionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::and::function"

IcePy.defineProxy("::and::function", functionPrx)

class function(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::and::function", )
    _op_continue: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::and::function"

    @abstractmethod
    def continue(self, declare: int, default: int, current: Current) -> None | Awaitable[None]:
        pass

function._op_continue = IcePy.Operation(
    "continue",
    "continue",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    ())

__all__ = ["function", "functionPrx", "_and_functionPrx_t"]
