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

from Test2.WstringClass_forward import _Test2_WstringClassPrx_t

from Test2.WstringException import _Test2_WstringException_t

from Test2.WstringStruct import _Test2_WstringStruct_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test2.WstringStruct import WstringStruct
    from collections.abc import Awaitable
    from collections.abc import Sequence


class WstringClassPrx(ObjectPrx):

    def opString(self, s1: str, context: dict[str, str] | None = None) -> tuple[str, str]:
        return WstringClass._op_opString.invoke(self, ((s1, ), context))

    def opStringAsync(self, s1: str, context: dict[str, str] | None = None) -> Awaitable[tuple[str, str]]:
        return WstringClass._op_opString.invokeAsync(self, ((s1, ), context))

    def opStruct(self, s1: WstringStruct, context: dict[str, str] | None = None) -> tuple[WstringStruct, WstringStruct]:
        return WstringClass._op_opStruct.invoke(self, ((s1, ), context))

    def opStructAsync(self, s1: WstringStruct, context: dict[str, str] | None = None) -> Awaitable[tuple[WstringStruct, WstringStruct]]:
        return WstringClass._op_opStruct.invokeAsync(self, ((s1, ), context))

    def throwExcept(self, reason: str, context: dict[str, str] | None = None) -> None:
        return WstringClass._op_throwExcept.invoke(self, ((reason, ), context))

    def throwExceptAsync(self, reason: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return WstringClass._op_throwExcept.invokeAsync(self, ((reason, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> WstringClassPrx | None:
        return checkedCast(WstringClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[WstringClassPrx | None ]:
        return checkedCastAsync(WstringClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> WstringClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> WstringClassPrx | None:
        return uncheckedCast(WstringClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test2::WstringClass"

IcePy.defineProxy("::Test2::WstringClass", WstringClassPrx)

class WstringClass(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test2::WstringClass", )
    _op_opString: IcePy.Operation
    _op_opStruct: IcePy.Operation
    _op_throwExcept: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test2::WstringClass"

    @abstractmethod
    def opString(self, s1: str, current: Current) -> tuple[str, str] | Awaitable[tuple[str, str]]:
        pass

    @abstractmethod
    def opStruct(self, s1: WstringStruct, current: Current) -> tuple[WstringStruct, WstringStruct] | Awaitable[tuple[WstringStruct, WstringStruct]]:
        pass

    @abstractmethod
    def throwExcept(self, reason: str, current: Current) -> None | Awaitable[None]:
        pass

WstringClass._op_opString = IcePy.Operation(
    "opString",
    "opString",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (((), IcePy._t_string, False, 0),),
    ((), IcePy._t_string, False, 0),
    ())

WstringClass._op_opStruct = IcePy.Operation(
    "opStruct",
    "opStruct",
    OperationMode.Normal,
    None,
    (),
    (((), _Test2_WstringStruct_t, False, 0),),
    (((), _Test2_WstringStruct_t, False, 0),),
    ((), _Test2_WstringStruct_t, False, 0),
    ())

WstringClass._op_throwExcept = IcePy.Operation(
    "throwExcept",
    "throwExcept",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    (_Test2_WstringException_t,))

__all__ = ["WstringClass", "WstringClassPrx", "_Test2_WstringClassPrx_t"]
