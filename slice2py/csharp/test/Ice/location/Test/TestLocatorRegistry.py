# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.AdapterAlreadyActiveException import _Ice_AdapterAlreadyActiveException_t

from Ice.AdapterNotFoundException import _Ice_AdapterNotFoundException_t

from Ice.InvalidReplicaGroupIdException import _Ice_InvalidReplicaGroupIdException_t

from Ice.LocatorRegistry import LocatorRegistry
from Ice.LocatorRegistry import LocatorRegistryPrx

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from Ice.Process_forward import _Ice_ProcessPrx_t

from Ice.ServerNotFoundException import _Ice_ServerNotFoundException_t

from Test.TestLocatorRegistry_forward import _Test_TestLocatorRegistryPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from Ice.Process import ProcessPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestLocatorRegistryPrx(LocatorRegistryPrx):

    def addObject(self, obj: ObjectPrx | None, context: dict[str, str] | None = None) -> None:
        return TestLocatorRegistry._op_addObject.invoke(self, ((obj, ), context))

    def addObjectAsync(self, obj: ObjectPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestLocatorRegistry._op_addObject.invokeAsync(self, ((obj, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestLocatorRegistryPrx | None:
        return checkedCast(TestLocatorRegistryPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestLocatorRegistryPrx | None ]:
        return checkedCastAsync(TestLocatorRegistryPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestLocatorRegistryPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestLocatorRegistryPrx | None:
        return uncheckedCast(TestLocatorRegistryPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestLocatorRegistry"

IcePy.defineProxy("::Test::TestLocatorRegistry", TestLocatorRegistryPrx)

class TestLocatorRegistry(LocatorRegistry, ABC):

    _ice_ids: Sequence[str] = ("::Ice::LocatorRegistry", "::Ice::Object", "::Test::TestLocatorRegistry", )
    _op_addObject: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestLocatorRegistry"

    @abstractmethod
    def addObject(self, obj: ObjectPrx | None, current: Current) -> None | Awaitable[None]:
        pass

TestLocatorRegistry._op_addObject = IcePy.Operation(
    "addObject",
    "addObject",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ObjectPrx_t, False, 0),),
    (),
    None,
    ())

__all__ = ["TestLocatorRegistry", "TestLocatorRegistryPrx", "_Test_TestLocatorRegistryPrx_t"]
