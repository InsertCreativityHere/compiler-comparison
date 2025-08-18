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

from Test.A_forward import _Test_APrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class APrx(ObjectPrx):

    def opA(self, context: dict[str, str] | None = None) -> None:
        return A._op_opA.invoke(self, ((), context))

    def opAAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return A._op_opA.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> APrx | None:
        return checkedCast(APrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[APrx | None ]:
        return checkedCastAsync(APrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> APrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> APrx | None:
        return uncheckedCast(APrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::A"

IcePy.defineProxy("::Test::A", APrx)

class A(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::A", )
    _op_opA: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::A"

    @abstractmethod
    def opA(self, current: Current) -> None | Awaitable[None]:
        pass

A._op_opA = IcePy.Operation(
    "opA",
    "opA",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["A", "APrx", "_Test_APrx_t"]
