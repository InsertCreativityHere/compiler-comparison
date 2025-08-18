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

from Test.ByteS import _Test_ByteS_t

from Test.Initial_forward import _Test_InitialPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class InitialPrx(ObjectPrx):

    def getStruct1(self, context: dict[str, str] | None = None) -> bytes:
        return Initial._op_getStruct1.invoke(self, ((), context))

    def getStruct1Async(self, context: dict[str, str] | None = None) -> Awaitable[bytes]:
        return Initial._op_getStruct1.invokeAsync(self, ((), context))

    def getBase(self, context: dict[str, str] | None = None) -> bytes:
        return Initial._op_getBase.invoke(self, ((), context))

    def getBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[bytes]:
        return Initial._op_getBase.invokeAsync(self, ((), context))

    def getEx(self, context: dict[str, str] | None = None) -> bytes:
        return Initial._op_getEx.invoke(self, ((), context))

    def getExAsync(self, context: dict[str, str] | None = None) -> Awaitable[bytes]:
        return Initial._op_getEx.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_shutdown.invokeAsync(self, ((), context))

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
    _op_getStruct1: IcePy.Operation
    _op_getBase: IcePy.Operation
    _op_getEx: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

    @abstractmethod
    def getStruct1(self, current: Current) -> Sequence[int] | bytes | Awaitable[Sequence[int] | bytes]:
        pass

    @abstractmethod
    def getBase(self, current: Current) -> Sequence[int] | bytes | Awaitable[Sequence[int] | bytes]:
        pass

    @abstractmethod
    def getEx(self, current: Current) -> Sequence[int] | bytes | Awaitable[Sequence[int] | bytes]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Initial._op_getStruct1 = IcePy.Operation(
    "getStruct1",
    "getStruct1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_ByteS_t, False, 0),
    ())

Initial._op_getBase = IcePy.Operation(
    "getBase",
    "getBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_ByteS_t, False, 0),
    ())

Initial._op_getEx = IcePy.Operation(
    "getEx",
    "getEx",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_ByteS_t, False, 0),
    ())

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

__all__ = ["Initial", "InitialPrx", "_Test_InitialPrx_t"]
