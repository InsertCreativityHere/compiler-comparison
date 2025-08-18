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

from Test.B_forward import _Test_BPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.B import BPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class BPrx(ObjectPrx):

    def opB(self, b: BPrx | None, context: dict[str, str] | None = None) -> BPrx | None:
        return B._op_opB.invoke(self, ((b, ), context))

    def opBAsync(self, b: BPrx | None, context: dict[str, str] | None = None) -> Awaitable[BPrx | None]:
        return B._op_opB.invokeAsync(self, ((b, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> BPrx | None:
        return checkedCast(BPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[BPrx | None ]:
        return checkedCastAsync(BPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> BPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> BPrx | None:
        return uncheckedCast(BPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

IcePy.defineProxy("::Test::B", BPrx)

class B(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::B", )
    _op_opB: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

    @abstractmethod
    def opB(self, b: BPrx | None, current: Current) -> BPrx | None | Awaitable[BPrx | None]:
        pass

B._op_opB = IcePy.Operation(
    "opB",
    "opB",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BPrx_t, False, 0),),
    (),
    ((), _Test_BPrx_t, False, 0),
    ())

__all__ = ["B", "BPrx", "_Test_BPrx_t"]
