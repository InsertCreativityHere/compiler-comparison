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

from generated.test.Ice.facets.Test.G import G
from generated.test.Ice.facets.Test.G import GPrx

from generated.test.Ice.facets.Test.H_forward import _generated_test_Ice_facets_Test_HPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class HPrx(GPrx):

    def callH(self, context: dict[str, str] | None = None) -> str:
        return H._op_callH.invoke(self, ((), context))

    def callHAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return H._op_callH.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> HPrx | None:
        return checkedCast(HPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[HPrx | None ]:
        return checkedCastAsync(HPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> HPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> HPrx | None:
        return uncheckedCast(HPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::H"

IcePy.defineProxy("::Test::H", HPrx)

class H(G, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::G", "::Test::H", )
    _op_callH: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::H"

    @abstractmethod
    def callH(self, current: Current) -> str | Awaitable[str]:
        pass

H._op_callH = IcePy.Operation(
    "callH",
    "callH",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["H", "HPrx", "_generated_test_Ice_facets_Test_HPrx_t"]
