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

from Ice.PropertyDict import _Ice_PropertyDict_t

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.admin.Test.RemoteCommunicatorFactory_forward import _generated_test_Ice_admin_Test_RemoteCommunicatorFactoryPrx_t

from generated.test.Ice.admin.Test.RemoteCommunicator_forward import _generated_test_Ice_admin_Test_RemoteCommunicatorPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence
    from generated.test.Ice.admin.Test.RemoteCommunicator import RemoteCommunicatorPrx


class RemoteCommunicatorFactoryPrx(ObjectPrx):

    def createCommunicator(self, props: Mapping[str, str], context: dict[str, str] | None = None) -> RemoteCommunicatorPrx | None:
        return RemoteCommunicatorFactory._op_createCommunicator.invoke(self, ((props, ), context))

    def createCommunicatorAsync(self, props: Mapping[str, str], context: dict[str, str] | None = None) -> Awaitable[RemoteCommunicatorPrx | None]:
        return RemoteCommunicatorFactory._op_createCommunicator.invokeAsync(self, ((props, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return RemoteCommunicatorFactory._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteCommunicatorFactory._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> RemoteCommunicatorFactoryPrx | None:
        return checkedCast(RemoteCommunicatorFactoryPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[RemoteCommunicatorFactoryPrx | None ]:
        return checkedCastAsync(RemoteCommunicatorFactoryPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> RemoteCommunicatorFactoryPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> RemoteCommunicatorFactoryPrx | None:
        return uncheckedCast(RemoteCommunicatorFactoryPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteCommunicatorFactory"

IcePy.defineProxy("::Test::RemoteCommunicatorFactory", RemoteCommunicatorFactoryPrx)

class RemoteCommunicatorFactory(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::RemoteCommunicatorFactory", )
    _op_createCommunicator: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteCommunicatorFactory"

    @abstractmethod
    def createCommunicator(self, props: dict[str, str], current: Current) -> RemoteCommunicatorPrx | None | Awaitable[RemoteCommunicatorPrx | None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

RemoteCommunicatorFactory._op_createCommunicator = IcePy.Operation(
    "createCommunicator",
    "createCommunicator",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_PropertyDict_t, False, 0),),
    (),
    ((), _generated_test_Ice_admin_Test_RemoteCommunicatorPrx_t, False, 0),
    ())

RemoteCommunicatorFactory._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["RemoteCommunicatorFactory", "RemoteCommunicatorFactoryPrx", "_generated_test_Ice_admin_Test_RemoteCommunicatorFactoryPrx_t"]
