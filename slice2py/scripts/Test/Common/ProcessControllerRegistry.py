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

from Test.Common.ProcessControllerRegistry_forward import _Test_Common_ProcessControllerRegistryPrx_t

from Test.Common.ProcessController_forward import _Test_Common_ProcessControllerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.Common.ProcessController import ProcessControllerPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ProcessControllerRegistryPrx(ObjectPrx):

    def setProcessController(self, controller: ProcessControllerPrx | None, context: dict[str, str] | None = None) -> None:
        return ProcessControllerRegistry._op_setProcessController.invoke(self, ((controller, ), context))

    def setProcessControllerAsync(self, controller: ProcessControllerPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return ProcessControllerRegistry._op_setProcessController.invokeAsync(self, ((controller, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ProcessControllerRegistryPrx | None:
        return checkedCast(ProcessControllerRegistryPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ProcessControllerRegistryPrx | None ]:
        return checkedCastAsync(ProcessControllerRegistryPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ProcessControllerRegistryPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ProcessControllerRegistryPrx | None:
        return uncheckedCast(ProcessControllerRegistryPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::ProcessControllerRegistry"

IcePy.defineProxy("::Test::Common::ProcessControllerRegistry", ProcessControllerRegistryPrx)

class ProcessControllerRegistry(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Common::ProcessControllerRegistry", )
    _op_setProcessController: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::ProcessControllerRegistry"

    @abstractmethod
    def setProcessController(self, controller: ProcessControllerPrx | None, current: Current) -> None | Awaitable[None]:
        pass

ProcessControllerRegistry._op_setProcessController = IcePy.Operation(
    "setProcessController",
    "setProcessController",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Common_ProcessControllerPrx_t, False, 0),),
    (),
    None,
    ())

__all__ = ["ProcessControllerRegistry", "ProcessControllerRegistryPrx", "_Test_Common_ProcessControllerRegistryPrx_t"]
