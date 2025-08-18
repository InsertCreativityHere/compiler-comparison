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

from Test.Common.Controller_forward import _Test_Common_ControllerPrx_t

from Test.Common.OptionOverrides_forward import _Test_Common_OptionOverrides_t

from Test.Common.StringSeq import _Test_Common_StringSeq_t

from Test.Common.TestCaseNotExistException import _Test_Common_TestCaseNotExistException_t

from Test.Common.TestCase_forward import _Test_Common_TestCasePrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.Common.OptionOverrides import OptionOverrides
    from Test.Common.TestCase import TestCasePrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ControllerPrx(ObjectPrx):

    def runTestCase(self, mapping: str, testsuite: str, testcase: str, cross: str, context: dict[str, str] | None = None) -> TestCasePrx | None:
        return Controller._op_runTestCase.invoke(self, ((mapping, testsuite, testcase, cross), context))

    def runTestCaseAsync(self, mapping: str, testsuite: str, testcase: str, cross: str, context: dict[str, str] | None = None) -> Awaitable[TestCasePrx | None]:
        return Controller._op_runTestCase.invokeAsync(self, ((mapping, testsuite, testcase, cross), context))

    def getOptionOverrides(self, context: dict[str, str] | None = None) -> OptionOverrides | None:
        return Controller._op_getOptionOverrides.invoke(self, ((), context))

    def getOptionOverridesAsync(self, context: dict[str, str] | None = None) -> Awaitable[OptionOverrides | None]:
        return Controller._op_getOptionOverrides.invokeAsync(self, ((), context))

    def getTestSuites(self, mapping: str, context: dict[str, str] | None = None) -> list[str]:
        return Controller._op_getTestSuites.invoke(self, ((mapping, ), context))

    def getTestSuitesAsync(self, mapping: str, context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        return Controller._op_getTestSuites.invokeAsync(self, ((mapping, ), context))

    def getHost(self, protocol: str, ipv6: bool, context: dict[str, str] | None = None) -> str:
        return Controller._op_getHost.invoke(self, ((protocol, ipv6), context))

    def getHostAsync(self, protocol: str, ipv6: bool, context: dict[str, str] | None = None) -> Awaitable[str]:
        return Controller._op_getHost.invokeAsync(self, ((protocol, ipv6), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ControllerPrx | None:
        return checkedCast(ControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ControllerPrx | None ]:
        return checkedCastAsync(ControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ControllerPrx | None:
        return uncheckedCast(ControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::Controller"

IcePy.defineProxy("::Test::Common::Controller", ControllerPrx)

class Controller(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Common::Controller", )
    _op_runTestCase: IcePy.Operation
    _op_getOptionOverrides: IcePy.Operation
    _op_getTestSuites: IcePy.Operation
    _op_getHost: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::Controller"

    @abstractmethod
    def runTestCase(self, mapping: str, testsuite: str, testcase: str, cross: str, current: Current) -> TestCasePrx | None | Awaitable[TestCasePrx | None]:
        pass

    @abstractmethod
    def getOptionOverrides(self, current: Current) -> OptionOverrides | None | Awaitable[OptionOverrides | None]:
        pass

    @abstractmethod
    def getTestSuites(self, mapping: str, current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        pass

    @abstractmethod
    def getHost(self, protocol: str, ipv6: bool, current: Current) -> str | Awaitable[str]:
        pass

Controller._op_runTestCase = IcePy.Operation(
    "runTestCase",
    "runTestCase",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    ((), _Test_Common_TestCasePrx_t, False, 0),
    (_Test_Common_TestCaseNotExistException_t,))

Controller._op_getOptionOverrides = IcePy.Operation(
    "getOptionOverrides",
    "getOptionOverrides",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_Common_OptionOverrides_t, False, 0),
    ())

Controller._op_getTestSuites = IcePy.Operation(
    "getTestSuites",
    "getTestSuites",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    ((), _Test_Common_StringSeq_t, False, 0),
    ())

Controller._op_getHost = IcePy.Operation(
    "getHost",
    "getHost",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    ((), IcePy._t_string, False, 0),
    ())

__all__ = ["Controller", "ControllerPrx", "_Test_Common_ControllerPrx_t"]
