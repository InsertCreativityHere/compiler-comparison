# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from classdef.operations_forward import _classdef_operationsPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class operationsPrx(ObjectPrx):

    def events(self, obj: ObjectPrx | None, context: str, context_: dict[str, str] | None = None) -> None:
        return operations._op_events.invoke(self, ((obj, context), context_))

    def eventsAsync(self, obj: ObjectPrx | None, context: str, context_: dict[str, str] | None = None) -> Awaitable[None]:
        return operations._op_events.invokeAsync(self, ((obj, context), context_))

    def function(self, context: dict[str, str] | None = None) -> None:
        return operations._op_function.invoke(self, ((), context))

    def functionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return operations._op_function.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> operationsPrx | None:
        return checkedCast(operationsPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[operationsPrx | None ]:
        return checkedCastAsync(operationsPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> operationsPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> operationsPrx | None:
        return uncheckedCast(operationsPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::classdef::operations"

IcePy.defineProxy("::classdef::operations", operationsPrx)

class operations(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::classdef::operations", )
    _op_events: IcePy.Operation
    _op_function: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::classdef::operations"

    @abstractmethod
    def events(self, obj: ObjectPrx | None, context: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def function(self, current: Current) -> None | Awaitable[None]:
        pass

operations._op_events = IcePy.Operation(
    "events",
    "events",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ObjectPrx_t, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

operations._op_function = IcePy.Operation(
    "function",
    "function",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["operations", "operationsPrx", "_classdef_operationsPrx_t"]
