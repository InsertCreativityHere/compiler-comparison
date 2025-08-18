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

from Test.MA.IA_forward import _Test_MA_IAPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.MA.IA import IAPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class IAPrx(ObjectPrx):

    def iaop(self, p: IAPrx | None, context: dict[str, str] | None = None) -> IAPrx | None:
        return IA._op_iaop.invoke(self, ((p, ), context))

    def iaopAsync(self, p: IAPrx | None, context: dict[str, str] | None = None) -> Awaitable[IAPrx | None]:
        return IA._op_iaop.invokeAsync(self, ((p, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> IAPrx | None:
        return checkedCast(IAPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[IAPrx | None ]:
        return checkedCastAsync(IAPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> IAPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> IAPrx | None:
        return uncheckedCast(IAPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MA::IA"

IcePy.defineProxy("::Test::MA::IA", IAPrx)

class IA(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MA::IA", )
    _op_iaop: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MA::IA"

    @abstractmethod
    def iaop(self, p: IAPrx | None, current: Current) -> IAPrx | None | Awaitable[IAPrx | None]:
        pass

IA._op_iaop = IcePy.Operation(
    "iaop",
    "iaop",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MA_IAPrx_t, False, 0),),
    (),
    ((), _Test_MA_IAPrx_t, False, 0),
    ())

__all__ = ["IA", "IAPrx", "_Test_MA_IAPrx_t"]
