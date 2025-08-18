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

from generated.test.Ice.inheritance.Test.MA.IA import IA
from generated.test.Ice.inheritance.Test.MA.IA import IAPrx

from generated.test.Ice.inheritance.Test.MA.IA_forward import _generated_test_Ice_inheritance_Test_MA_IAPrx_t

from generated.test.Ice.inheritance.Test.MB.IB1_forward import _generated_test_Ice_inheritance_Test_MB_IB1Prx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.inheritance.Test.MB.IB1 import IB1Prx


class IB1Prx(IAPrx):

    def ib1op(self, p: IB1Prx | None, context: dict[str, str] | None = None) -> IB1Prx | None:
        return IB1._op_ib1op.invoke(self, ((p, ), context))

    def ib1opAsync(self, p: IB1Prx | None, context: dict[str, str] | None = None) -> Awaitable[IB1Prx | None]:
        return IB1._op_ib1op.invokeAsync(self, ((p, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> IB1Prx | None:
        return checkedCast(IB1Prx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[IB1Prx | None ]:
        return checkedCastAsync(IB1Prx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> IB1Prx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> IB1Prx | None:
        return uncheckedCast(IB1Prx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MB::IB1"

IcePy.defineProxy("::Test::MB::IB1", IB1Prx)

class IB1(IA, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MA::IA", "::Test::MB::IB1", )
    _op_ib1op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MB::IB1"

    @abstractmethod
    def ib1op(self, p: IB1Prx | None, current: Current) -> IB1Prx | None | Awaitable[IB1Prx | None]:
        pass

IB1._op_ib1op = IcePy.Operation(
    "ib1op",
    "ib1op",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_inheritance_Test_MB_IB1Prx_t, False, 0),),
    (),
    ((), _generated_test_Ice_inheritance_Test_MB_IB1Prx_t, False, 0),
    ())

__all__ = ["IB1", "IB1Prx", "_generated_test_Ice_inheritance_Test_MB_IB1Prx_t"]
