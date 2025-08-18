# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.B import B
from Test.B import BPrx

from Test.C import C
from Test.C import CPrx

from Test.D_forward import _Test_DPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class DPrx(BPrx, CPrx):

    def callD(self, context: dict[str, str] | None = None) -> str:
        return D._op_callD.invoke(self, ((), context))

    def callDAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return D._op_callD.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> DPrx | None:
        return checkedCast(DPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[DPrx | None ]:
        return checkedCastAsync(DPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> DPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> DPrx | None:
        return uncheckedCast(DPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D"

IcePy.defineProxy("::Test::D", DPrx)

class D(B, C, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::A", "::Test::B", "::Test::C", "::Test::D", )
    _op_callD: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D"

    @abstractmethod
    def callD(self, current: Current) -> str | Awaitable[str]:
        pass

D._op_callD = IcePy.Operation(
    "callD",
    "callD",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["D", "DPrx", "_Test_DPrx_t"]
