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

from generated.test.Ice.proxy.Test.A_forward import _generated_test_Ice_proxy_Test_APrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.proxy.Test.A import APrx


class APrx(ObjectPrx):

    def opA(self, a: APrx | None, context: dict[str, str] | None = None) -> APrx | None:
        return A._op_opA.invoke(self, ((a, ), context))

    def opAAsync(self, a: APrx | None, context: dict[str, str] | None = None) -> Awaitable[APrx | None]:
        return A._op_opA.invokeAsync(self, ((a, ), context))

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
    def opA(self, a: APrx | None, current: Current) -> APrx | None | Awaitable[APrx | None]:
        pass

A._op_opA = IcePy.Operation(
    "opA",
    "opA",
    OperationMode.Normal,
    None,
    (),
    (((), _generated_test_Ice_proxy_Test_APrx_t, False, 0),),
    (),
    ((), _generated_test_Ice_proxy_Test_APrx_t, False, 0),
    ())

__all__ = ["A", "APrx", "_generated_test_Ice_proxy_Test_APrx_t"]
