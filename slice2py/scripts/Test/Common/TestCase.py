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

from Test.Common.Config_forward import _Test_Common_Config_t

from Test.Common.TestCaseFailedException import _Test_Common_TestCaseFailedException_t

from Test.Common.TestCase_forward import _Test_Common_TestCasePrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.Common.Config import Config
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestCasePrx(ObjectPrx):

    def startServerSide(self, config: Config | None, context: dict[str, str] | None = None) -> str:
        return TestCase._op_startServerSide.invoke(self, ((config, ), context))

    def startServerSideAsync(self, config: Config | None, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestCase._op_startServerSide.invokeAsync(self, ((config, ), context))

    def stopServerSide(self, success: bool, context: dict[str, str] | None = None) -> str:
        return TestCase._op_stopServerSide.invoke(self, ((success, ), context))

    def stopServerSideAsync(self, success: bool, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestCase._op_stopServerSide.invokeAsync(self, ((success, ), context))

    def runClientSide(self, host: str, config: Config | None, context: dict[str, str] | None = None) -> str:
        return TestCase._op_runClientSide.invoke(self, ((host, config), context))

    def runClientSideAsync(self, host: str, config: Config | None, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestCase._op_runClientSide.invokeAsync(self, ((host, config), context))

    def destroy(self, context: dict[str, str] | None = None) -> None:
        return TestCase._op_destroy.invoke(self, ((), context))

    def destroyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestCase._op_destroy.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestCasePrx | None:
        return checkedCast(TestCasePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestCasePrx | None ]:
        return checkedCastAsync(TestCasePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestCasePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestCasePrx | None:
        return uncheckedCast(TestCasePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::TestCase"

IcePy.defineProxy("::Test::Common::TestCase", TestCasePrx)

class TestCase(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Common::TestCase", )
    _op_startServerSide: IcePy.Operation
    _op_stopServerSide: IcePy.Operation
    _op_runClientSide: IcePy.Operation
    _op_destroy: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::TestCase"

    @abstractmethod
    def startServerSide(self, config: Config | None, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def stopServerSide(self, success: bool, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def runClientSide(self, host: str, config: Config | None, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def destroy(self, current: Current) -> None | Awaitable[None]:
        pass

TestCase._op_startServerSide = IcePy.Operation(
    "startServerSide",
    "startServerSide",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Common_Config_t, False, 0),),
    (),
    ((), IcePy._t_string, False, 0),
    (_Test_Common_TestCaseFailedException_t,))

TestCase._op_stopServerSide = IcePy.Operation(
    "stopServerSide",
    "stopServerSide",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    ((), IcePy._t_string, False, 0),
    (_Test_Common_TestCaseFailedException_t,))

TestCase._op_runClientSide = IcePy.Operation(
    "runClientSide",
    "runClientSide",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), _Test_Common_Config_t, False, 0)),
    (),
    ((), IcePy._t_string, False, 0),
    (_Test_Common_TestCaseFailedException_t,))

TestCase._op_destroy = IcePy.Operation(
    "destroy",
    "destroy",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestCase", "TestCasePrx", "_Test_Common_TestCasePrx_t"]
