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

from Test.A_forward import _Test_A_t

from Test.Initial2_forward import _Test_Initial2Prx_t

from Test.VarStruct import _Test_VarStruct_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.A import A
    from Test.VarStruct import VarStruct
    from collections.abc import Awaitable
    from collections.abc import Sequence


class Initial2Prx(ObjectPrx):

    def opClassAndUnknownOptional(self, p: A | None, ovs: VarStruct | None = None, context: dict[str, str] | None = None) -> None:
        return Initial2._op_opClassAndUnknownOptional.invoke(self, ((p, ovs), context))

    def opClassAndUnknownOptionalAsync(self, p: A | None, ovs: VarStruct | None = None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial2._op_opClassAndUnknownOptional.invokeAsync(self, ((p, ovs), context))

    def opVoid(self, a: int | None = None, v: str | None = None, context: dict[str, str] | None = None) -> None:
        return Initial2._op_opVoid.invoke(self, ((a, v), context))

    def opVoidAsync(self, a: int | None = None, v: str | None = None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial2._op_opVoid.invokeAsync(self, ((a, v), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Initial2Prx | None:
        return checkedCast(Initial2Prx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[Initial2Prx | None ]:
        return checkedCastAsync(Initial2Prx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> Initial2Prx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> Initial2Prx | None:
        return uncheckedCast(Initial2Prx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial2"

IcePy.defineProxy("::Test::Initial2", Initial2Prx)

class Initial2(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Initial2", )
    _op_opClassAndUnknownOptional: IcePy.Operation
    _op_opVoid: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial2"

    @abstractmethod
    def opClassAndUnknownOptional(self, p: A | None, ovs: VarStruct | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opVoid(self, a: int | None, v: str | None, current: Current) -> None | Awaitable[None]:
        pass

Initial2._op_opClassAndUnknownOptional = IcePy.Operation(
    "opClassAndUnknownOptional",
    "opClassAndUnknownOptional",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_A_t, False, 0), ((), _Test_VarStruct_t, True, 1)),
    (),
    None,
    ())

Initial2._op_opVoid = IcePy.Operation(
    "opVoid",
    "opVoid",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, True, 1), ((), IcePy._t_string, True, 2)),
    (),
    None,
    ())

__all__ = ["Initial2", "Initial2Prx", "_Test_Initial2Prx_t"]
