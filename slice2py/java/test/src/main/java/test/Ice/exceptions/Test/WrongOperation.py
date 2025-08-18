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

from Test.WrongOperation_forward import _Test_WrongOperationPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class WrongOperationPrx(ObjectPrx):

    def noSuchOperation(self, context: dict[str, str] | None = None) -> None:
        return WrongOperation._op_noSuchOperation.invoke(self, ((), context))

    def noSuchOperationAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return WrongOperation._op_noSuchOperation.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> WrongOperationPrx | None:
        return checkedCast(WrongOperationPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[WrongOperationPrx | None ]:
        return checkedCastAsync(WrongOperationPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> WrongOperationPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> WrongOperationPrx | None:
        return uncheckedCast(WrongOperationPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::WrongOperation"

IcePy.defineProxy("::Test::WrongOperation", WrongOperationPrx)

class WrongOperation(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::WrongOperation", )
    _op_noSuchOperation: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::WrongOperation"

    @abstractmethod
    def noSuchOperation(self, current: Current) -> None | Awaitable[None]:
        pass

WrongOperation._op_noSuchOperation = IcePy.Operation(
    "noSuchOperation",
    "noSuchOperation",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["WrongOperation", "WrongOperationPrx", "_Test_WrongOperationPrx_t"]
