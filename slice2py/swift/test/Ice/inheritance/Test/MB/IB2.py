# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.MA.IA import IA
from Test.MA.IA import IAPrx

from Test.MA.IA_forward import _Test_MA_IAPrx_t

from Test.MB.IB2_forward import _Test_MB_IB2Prx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from Test.MB.IB2 import IB2Prx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class IB2Prx(IAPrx):

    def ib2op(self, p: IB2Prx | None, context: dict[str, str] | None = None) -> IB2Prx | None:
        return IB2._op_ib2op.invoke(self, ((p, ), context))

    def ib2opAsync(self, p: IB2Prx | None, context: dict[str, str] | None = None) -> Awaitable[IB2Prx | None]:
        return IB2._op_ib2op.invokeAsync(self, ((p, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> IB2Prx | None:
        return checkedCast(IB2Prx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[IB2Prx | None ]:
        return checkedCastAsync(IB2Prx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> IB2Prx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> IB2Prx | None:
        return uncheckedCast(IB2Prx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MB::IB2"

IcePy.defineProxy("::Test::MB::IB2", IB2Prx)

class IB2(IA, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MA::IA", "::Test::MB::IB2", )
    _op_ib2op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MB::IB2"

    @abstractmethod
    def ib2op(self, p: IB2Prx | None, current: Current) -> IB2Prx | None | Awaitable[IB2Prx | None]:
        pass

IB2._op_ib2op = IcePy.Operation(
    "ib2op",
    "ib2op",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_MB_IB2Prx_t, False, 0),),
    (),
    ((), _Test_MB_IB2Prx_t, False, 0),
    ())

__all__ = ["IB2", "IB2Prx", "_Test_MB_IB2Prx_t"]
