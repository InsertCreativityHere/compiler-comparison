# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.A import A
from Test.A import APrx

from Test.A_forward import _Test_APrx_t

from Test.B import B
from Test.B import BPrx

from Test.B_forward import _Test_BPrx_t

from Test.C_forward import _Test_CPrx_t

from Test.S import _Test_S_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from Test.C import CPrx
    from Test.S import S
    from collections.abc import Awaitable
    from collections.abc import Sequence


class CPrx(APrx, BPrx):

    def opC(self, c: CPrx | None, context: dict[str, str] | None = None) -> CPrx | None:
        return C._op_opC.invoke(self, ((c, ), context))

    def opCAsync(self, c: CPrx | None, context: dict[str, str] | None = None) -> Awaitable[CPrx | None]:
        return C._op_opC.invokeAsync(self, ((c, ), context))

    def opS(self, s: S, context: dict[str, str] | None = None) -> S:
        return C._op_opS.invoke(self, ((s, ), context))

    def opSAsync(self, s: S, context: dict[str, str] | None = None) -> Awaitable[S]:
        return C._op_opS.invokeAsync(self, ((s, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> CPrx | None:
        return checkedCast(CPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[CPrx | None ]:
        return checkedCastAsync(CPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> CPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> CPrx | None:
        return uncheckedCast(CPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

IcePy.defineProxy("::Test::C", CPrx)

class C(A, B, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::A", "::Test::B", "::Test::C", )
    _op_opC: IcePy.Operation
    _op_opS: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

    @abstractmethod
    def opC(self, c: CPrx | None, current: Current) -> CPrx | None | Awaitable[CPrx | None]:
        pass

    @abstractmethod
    def opS(self, s: S, current: Current) -> S | Awaitable[S]:
        pass

C._op_opC = IcePy.Operation(
    "opC",
    "opC",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_CPrx_t, False, 0),),
    (),
    ((), _Test_CPrx_t, False, 0),
    ())

C._op_opS = IcePy.Operation(
    "opS",
    "opS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_S_t, False, 0),),
    (),
    ((), _Test_S_t, False, 0),
    ())

__all__ = ["C", "CPrx", "_Test_CPrx_t"]
