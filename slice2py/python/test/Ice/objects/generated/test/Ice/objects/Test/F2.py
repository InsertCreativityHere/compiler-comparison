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

from generated.test.Ice.objects.Test.F2_forward import _generated_test_Ice_objects_Test_F2Prx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class F2Prx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> None:
        return F2._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return F2._op_op.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> F2Prx | None:
        return checkedCast(F2Prx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[F2Prx | None ]:
        return checkedCastAsync(F2Prx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> F2Prx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> F2Prx | None:
        return uncheckedCast(F2Prx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F2"

IcePy.defineProxy("::Test::F2", F2Prx)

class F2(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::F2", )
    _op_op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F2"

    @abstractmethod
    def op(self, current: Current) -> None | Awaitable[None]:
        pass

F2._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["F2", "F2Prx", "_generated_test_Ice_objects_Test_F2Prx_t"]
