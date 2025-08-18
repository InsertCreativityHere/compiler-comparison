# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from BEGIN.END import _BEGIN_END_t

from BEGIN.break_forward import _BEGIN_breakPrx_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
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
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class breakPrx(ObjectPrx):

    def case(self, clone: int, context: dict[str, str] | None = None) -> int:
        return break._op_case.invoke(self, ((clone, ), context))

    def caseAsync(self, clone: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return break._op_case.invokeAsync(self, ((clone, ), context))

    def instance_variables(self, context: dict[str, str] | None = None) -> END:
        return break._op_instance_variables.invoke(self, ((), context))

    def instance_variablesAsync(self, context: dict[str, str] | None = None) -> Awaitable[END]:
        return break._op_instance_variables.invokeAsync(self, ((), context))

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
        return "::BEGIN::break"

IcePy.defineProxy("::BEGIN::break", breakPrx)

class break(Object, ABC):

    _ice_ids: Sequence[str] = ("::BEGIN::break", "::Ice::Object", )
    _op_case: IcePy.Operation
    _op_instance_variables: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::BEGIN::break"

    @abstractmethod
    def case(self, clone: int, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def instance_variables(self, current: Current) -> END | Awaitable[END]:
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

break._op_instance_variables = IcePy.Operation(
    "instance_variables",
    "instance_variables",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _BEGIN_END_t, False, 0),
    ())

__all__ = ["break", "breakPrx", "_BEGIN_breakPrx_t"]
