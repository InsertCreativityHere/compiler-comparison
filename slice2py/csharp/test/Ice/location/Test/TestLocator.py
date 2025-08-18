# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.AdapterNotFoundException import _Ice_AdapterNotFoundException_t

from Ice.Identity import _Ice_Identity_t

from Ice.Locator import Locator
from Ice.Locator import LocatorPrx

from Ice.LocatorRegistry_forward import _Ice_LocatorRegistryPrx_t

from Ice.ObjectNotFoundException import _Ice_ObjectNotFoundException_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from Test.TestLocator_forward import _Test_TestLocatorPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from Ice.LocatorRegistry import LocatorRegistryPrx
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestLocatorPrx(LocatorPrx):

    def getRequestCount(self, context: dict[str, str] | None = None) -> int:
        return TestLocator._op_getRequestCount.invoke(self, ((), context))

    def getRequestCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestLocator._op_getRequestCount.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestLocatorPrx | None:
        return checkedCast(TestLocatorPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestLocatorPrx | None ]:
        return checkedCastAsync(TestLocatorPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestLocatorPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestLocatorPrx | None:
        return uncheckedCast(TestLocatorPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestLocator"

IcePy.defineProxy("::Test::TestLocator", TestLocatorPrx)

class TestLocator(Locator, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Locator", "::Ice::Object", "::Test::TestLocator", )
    _op_getRequestCount: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestLocator"

    @abstractmethod
    def getRequestCount(self, current: Current) -> int | Awaitable[int]:
        pass

TestLocator._op_getRequestCount = IcePy.Operation(
    "getRequestCount",
    "getRequestCount",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

__all__ = ["TestLocator", "TestLocatorPrx", "_Test_TestLocatorPrx_t"]
