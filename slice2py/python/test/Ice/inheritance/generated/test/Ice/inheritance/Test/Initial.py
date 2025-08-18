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

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.inheritance.Test.Initial_forward import _generated_test_Ice_inheritance_Test_InitialPrx_t

from generated.test.Ice.inheritance.Test.MA.IA_forward import _generated_test_Ice_inheritance_Test_MA_IAPrx_t

from generated.test.Ice.inheritance.Test.MA.IC_forward import _generated_test_Ice_inheritance_Test_MA_ICPrx_t

from generated.test.Ice.inheritance.Test.MB.IB1_forward import _generated_test_Ice_inheritance_Test_MB_IB1Prx_t

from generated.test.Ice.inheritance.Test.MB.IB2_forward import _generated_test_Ice_inheritance_Test_MB_IB2Prx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.inheritance.Test.MA.IA import IAPrx
    from generated.test.Ice.inheritance.Test.MA.IC import ICPrx
    from generated.test.Ice.inheritance.Test.MB.IB1 import IB1Prx
    from generated.test.Ice.inheritance.Test.MB.IB2 import IB2Prx


class InitialPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_shutdown.invokeAsync(self, ((), context))

    def iaop(self, context: dict[str, str] | None = None) -> IAPrx | None:
        return Initial._op_iaop.invoke(self, ((), context))

    def iaopAsync(self, context: dict[str, str] | None = None) -> Awaitable[IAPrx | None]:
        return Initial._op_iaop.invokeAsync(self, ((), context))

    def ib1op(self, context: dict[str, str] | None = None) -> IB1Prx | None:
        return Initial._op_ib1op.invoke(self, ((), context))

    def ib1opAsync(self, context: dict[str, str] | None = None) -> Awaitable[IB1Prx | None]:
        return Initial._op_ib1op.invokeAsync(self, ((), context))

    def ib2op(self, context: dict[str, str] | None = None) -> IB2Prx | None:
        return Initial._op_ib2op.invoke(self, ((), context))

    def ib2opAsync(self, context: dict[str, str] | None = None) -> Awaitable[IB2Prx | None]:
        return Initial._op_ib2op.invokeAsync(self, ((), context))

    def icop(self, context: dict[str, str] | None = None) -> ICPrx | None:
        return Initial._op_icop.invoke(self, ((), context))

    def icopAsync(self, context: dict[str, str] | None = None) -> Awaitable[ICPrx | None]:
        return Initial._op_icop.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> InitialPrx | None:
        return checkedCast(InitialPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[InitialPrx | None ]:
        return checkedCastAsync(InitialPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> InitialPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> InitialPrx | None:
        return uncheckedCast(InitialPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

IcePy.defineProxy("::Test::Initial", InitialPrx)

class Initial(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Initial", )
    _op_shutdown: IcePy.Operation
    _op_iaop: IcePy.Operation
    _op_ib1op: IcePy.Operation
    _op_ib2op: IcePy.Operation
    _op_icop: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def iaop(self, current: Current) -> IAPrx | None | Awaitable[IAPrx | None]:
        pass

    @abstractmethod
    def ib1op(self, current: Current) -> IB1Prx | None | Awaitable[IB1Prx | None]:
        pass

    @abstractmethod
    def ib2op(self, current: Current) -> IB2Prx | None | Awaitable[IB2Prx | None]:
        pass

    @abstractmethod
    def icop(self, current: Current) -> ICPrx | None | Awaitable[ICPrx | None]:
        pass

Initial._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Initial._op_iaop = IcePy.Operation(
    "iaop",
    "iaop",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _generated_test_Ice_inheritance_Test_MA_IAPrx_t, False, 0),
    ())

Initial._op_ib1op = IcePy.Operation(
    "ib1op",
    "ib1op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _generated_test_Ice_inheritance_Test_MB_IB1Prx_t, False, 0),
    ())

Initial._op_ib2op = IcePy.Operation(
    "ib2op",
    "ib2op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _generated_test_Ice_inheritance_Test_MB_IB2Prx_t, False, 0),
    ())

Initial._op_icop = IcePy.Operation(
    "icop",
    "icop",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _generated_test_Ice_inheritance_Test_MA_ICPrx_t, False, 0),
    ())

__all__ = ["Initial", "InitialPrx", "_generated_test_Ice_inheritance_Test_InitialPrx_t"]
