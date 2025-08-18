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

from Test.Common.ProcessController_forward import _Test_Common_ProcessControllerPrx_t

from Test.Common.ProcessFailedException import _Test_Common_ProcessFailedException_t

from Test.Common.Process_forward import _Test_Common_ProcessPrx_t

from Test.Common.StringSeq import _Test_Common_StringSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.Common.Process import ProcessPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ProcessControllerPrx(ObjectPrx):

    def start(self, testsuite: str, exe: str, args: Sequence[str], context: dict[str, str] | None = None) -> ProcessPrx | None:
        return ProcessController._op_start.invoke(self, ((testsuite, exe, args), context))

    def startAsync(self, testsuite: str, exe: str, args: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[ProcessPrx | None]:
        return ProcessController._op_start.invokeAsync(self, ((testsuite, exe, args), context))

    def getHost(self, protocol: str, ipv6: bool, context: dict[str, str] | None = None) -> str:
        return ProcessController._op_getHost.invoke(self, ((protocol, ipv6), context))

    def getHostAsync(self, protocol: str, ipv6: bool, context: dict[str, str] | None = None) -> Awaitable[str]:
        return ProcessController._op_getHost.invokeAsync(self, ((protocol, ipv6), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ProcessControllerPrx | None:
        return checkedCast(ProcessControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ProcessControllerPrx | None ]:
        return checkedCastAsync(ProcessControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ProcessControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ProcessControllerPrx | None:
        return uncheckedCast(ProcessControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::ProcessController"

IcePy.defineProxy("::Test::Common::ProcessController", ProcessControllerPrx)

class ProcessController(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Common::ProcessController", )
    _op_start: IcePy.Operation
    _op_getHost: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::ProcessController"

    @abstractmethod
    def start(self, testsuite: str, exe: str, args: list[str], current: Current) -> ProcessPrx | None | Awaitable[ProcessPrx | None]:
        pass

    @abstractmethod
    def getHost(self, protocol: str, ipv6: bool, current: Current) -> str | Awaitable[str]:
        pass

ProcessController._op_start = IcePy.Operation(
    "start",
    "start",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), _Test_Common_StringSeq_t, False, 0)),
    (),
    ((), _Test_Common_ProcessPrx_t, False, 0),
    (_Test_Common_ProcessFailedException_t,))

ProcessController._op_getHost = IcePy.Operation(
    "getHost",
    "getHost",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["ProcessController", "ProcessControllerPrx", "_Test_Common_ProcessControllerPrx_t"]
