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

from generated.test.Ice.facets.Test.E import E
from generated.test.Ice.facets.Test.E import EPrx

from generated.test.Ice.facets.Test.F_forward import _generated_test_Ice_facets_Test_FPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class FPrx(EPrx):

    def callF(self, context: dict[str, str] | None = None) -> str:
        return F._op_callF.invoke(self, ((), context))

    def callFAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return F._op_callF.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> FPrx | None:
        return checkedCast(FPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[FPrx | None ]:
        return checkedCastAsync(FPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> FPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> FPrx | None:
        return uncheckedCast(FPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F"

IcePy.defineProxy("::Test::F", FPrx)

class F(E, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::E", "::Test::F", )
    _op_callF: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F"

    @abstractmethod
    def callF(self, current: Current) -> str | Awaitable[str]:
        pass

F._op_callF = IcePy.Operation(
    "callF",
    "callF",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["F", "FPrx", "_generated_test_Ice_facets_Test_FPrx_t"]
