# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.A import A
from Test.A import APrx

from Test.C_forward import _Test_CPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class CPrx(APrx):

    def callC(self, context: dict[str, str] | None = None) -> str:
        return C._op_callC.invoke(self, ((), context))

    def callCAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return C._op_callC.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> CPrx | None:
        return checkedCast(CPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[CPrx | None ]:
        return checkedCastAsync(CPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> CPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> CPrx | None:
        return uncheckedCast(CPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

IcePy.defineProxy("::Test::C", CPrx)

class C(A, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::A", "::Test::C", )
    _op_callC: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

    @abstractmethod
    def callC(self, current: Current) -> str | Awaitable[str]:
        pass

C._op_callC = IcePy.Operation(
    "callC",
    "callC",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["C", "CPrx", "_Test_CPrx_t"]
