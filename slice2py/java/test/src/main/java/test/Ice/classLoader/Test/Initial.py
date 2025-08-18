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

from Test.ConcreteClass_forward import _Test_ConcreteClass_t

from Test.E import _Test_E_t

from Test.Initial_forward import _Test_InitialPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.ConcreteClass import ConcreteClass
    from collections.abc import Awaitable
    from collections.abc import Sequence


class InitialPrx(ObjectPrx):

    def getConcreteClass(self, context: dict[str, str] | None = None) -> ConcreteClass | None:
        return Initial._op_getConcreteClass.invoke(self, ((), context))

    def getConcreteClassAsync(self, context: dict[str, str] | None = None) -> Awaitable[ConcreteClass | None]:
        return Initial._op_getConcreteClass.invokeAsync(self, ((), context))

    def throwException(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwException.invoke(self, ((), context))

    def throwExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwException.invokeAsync(self, ((), context))

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
    _op_getConcreteClass: IcePy.Operation
    _op_throwException: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

    @abstractmethod
    def getConcreteClass(self, current: Current) -> ConcreteClass | None | Awaitable[ConcreteClass | None]:
        pass

    @abstractmethod
    def throwException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Initial._op_getConcreteClass = IcePy.Operation(
    "getConcreteClass",
    "getConcreteClass",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_ConcreteClass_t, False, 0),
    ())

Initial._op_throwException = IcePy.Operation(
    "throwException",
    "throwException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_E_t,))

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
