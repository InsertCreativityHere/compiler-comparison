# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.MA.IA_forward import _Test_MA_IAPrx_t

from Test.MA.IC_forward import _Test_MA_ICPrx_t

from Test.MB.IB1 import IB1
from Test.MB.IB1 import IB1Prx

from Test.MB.IB1_forward import _Test_MB_IB1Prx_t

from Test.MB.IB2 import IB2
from Test.MB.IB2 import IB2Prx

from Test.MB.IB2_forward import _Test_MB_IB2Prx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from Test.MA.IA import IAPrx
    from Test.MA.IC import ICPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ICPrx(IB1Prx, IB2Prx):

    def icop(self, p: ICPrx | None, context: dict[str, str] | None = None) -> ICPrx | None:
        return IC._op_icop.invoke(self, ((p, ), context))

    def icopAsync(self, p: ICPrx | None, context: dict[str, str] | None = None) -> Awaitable[ICPrx | None]:
        return IC._op_icop.invokeAsync(self, ((p, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ICPrx | None:
        return checkedCast(ICPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ICPrx | None ]:
        return checkedCastAsync(ICPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ICPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ICPrx | None:
        return uncheckedCast(ICPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MA::IC"

IcePy.defineProxy("::Test::MA::IC", ICPrx)

class IC(IB1, IB2, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MA::IA", "::Test::MA::IC", "::Test::MB::IB1", "::Test::MB::IB2", )
    _op_icop: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MA::IC"

    @abstractmethod
    def icop(self, p: ICPrx | None, current: Current) -> ICPrx | None | Awaitable[ICPrx | None]:
        pass

IC._op_icop = IcePy.Operation(
    "icop",
    "icop",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MA_ICPrx_t, False, 0),),
    (),
    ((), _Test_MA_ICPrx_t, False, 0),
    ())

__all__ = ["IC", "ICPrx", "_Test_MA_ICPrx_t"]
