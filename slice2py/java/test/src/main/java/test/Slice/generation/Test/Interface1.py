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

from Test.Interface1_forward import _Test_Interface1Prx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class Interface1Prx(ObjectPrx):

    def method(self, context: dict[str, str] | None = None) -> None:
        return Interface1._op_method.invoke(self, ((), context))

    def methodAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Interface1._op_method.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Interface1Prx | None:
        return checkedCast(Interface1Prx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[Interface1Prx | None ]:
        return checkedCastAsync(Interface1Prx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> Interface1Prx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> Interface1Prx | None:
        return uncheckedCast(Interface1Prx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Interface1"

IcePy.defineProxy("::Test::Interface1", Interface1Prx)

class Interface1(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Interface1", )
    _op_method: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Interface1"

    @abstractmethod
    def method(self, current: Current) -> None | Awaitable[None]:
        pass

Interface1._op_method = IcePy.Operation(
    "method",
    "method",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Interface1", "Interface1Prx", "_Test_Interface1Prx_t"]
