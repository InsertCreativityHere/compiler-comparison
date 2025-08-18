# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Context import _Ice_Context_t

from Ice.Identity import _Ice_Identity_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.current.Test.TestIntf_forward import _generated_test_Ice_current_Test_TestIntfPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def getAdapterName(self, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_getAdapterName.invoke(self, ((), context))

    def getAdapterNameAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_getAdapterName.invokeAsync(self, ((), context))

    def getConnection(self, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_getConnection.invoke(self, ((), context))

    def getConnectionAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_getConnection.invokeAsync(self, ((), context))

    def getIdentity(self, context: dict[str, str] | None = None) -> Identity:
        return TestIntf._op_getIdentity.invoke(self, ((), context))

    def getIdentityAsync(self, context: dict[str, str] | None = None) -> Awaitable[Identity]:
        return TestIntf._op_getIdentity.invokeAsync(self, ((), context))

    def getFacet(self, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_getFacet.invoke(self, ((), context))

    def getFacetAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_getFacet.invokeAsync(self, ((), context))

    def getOperation(self, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_getOperation.invoke(self, ((), context))

    def getOperationAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_getOperation.invokeAsync(self, ((), context))

    def getMode(self, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_getMode.invoke(self, ((), context))

    def getModeAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_getMode.invokeAsync(self, ((), context))

    def getContext(self, context: dict[str, str] | None = None) -> dict[str, str]:
        return TestIntf._op_getContext.invoke(self, ((), context))

    def getContextAsync(self, context: dict[str, str] | None = None) -> Awaitable[dict[str, str]]:
        return TestIntf._op_getContext.invokeAsync(self, ((), context))

    def getRequestId(self, context: dict[str, str] | None = None) -> int:
        return TestIntf._op_getRequestId.invoke(self, ((), context))

    def getRequestIdAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return TestIntf._op_getRequestId.invokeAsync(self, ((), context))

    def getEncoding(self, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_getEncoding.invoke(self, ((), context))

    def getEncodingAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_getEncoding.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestIntfPrx | None:
        return checkedCast(TestIntfPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestIntfPrx | None ]:
        return checkedCastAsync(TestIntfPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestIntfPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestIntfPrx | None:
        return uncheckedCast(TestIntfPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

IcePy.defineProxy("::Test::TestIntf", TestIntfPrx)

class TestIntf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestIntf", )
    _op_getAdapterName: IcePy.Operation
    _op_getConnection: IcePy.Operation
    _op_getIdentity: IcePy.Operation
    _op_getFacet: IcePy.Operation
    _op_getOperation: IcePy.Operation
    _op_getMode: IcePy.Operation
    _op_getContext: IcePy.Operation
    _op_getRequestId: IcePy.Operation
    _op_getEncoding: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def getAdapterName(self, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def getConnection(self, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def getIdentity(self, current: Current) -> Identity | Awaitable[Identity]:
        pass

    @abstractmethod
    def getFacet(self, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def getOperation(self, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def getMode(self, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def getContext(self, current: Current) -> Mapping[str, str] | Awaitable[Mapping[str, str]]:
        pass

    @abstractmethod
    def getRequestId(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def getEncoding(self, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_getAdapterName = IcePy.Operation(
    "getAdapterName",
    "getAdapterName",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

TestIntf._op_getConnection = IcePy.Operation(
    "getConnection",
    "getConnection",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

TestIntf._op_getIdentity = IcePy.Operation(
    "getIdentity",
    "getIdentity",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_Identity_t, False, 0),
    ())

TestIntf._op_getFacet = IcePy.Operation(
    "getFacet",
    "getFacet",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

TestIntf._op_getOperation = IcePy.Operation(
    "getOperation",
    "getOperation",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

TestIntf._op_getMode = IcePy.Operation(
    "getMode",
    "getMode",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

TestIntf._op_getContext = IcePy.Operation(
    "getContext",
    "getContext",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_Context_t, False, 0),
    ())

TestIntf._op_getRequestId = IcePy.Operation(
    "getRequestId",
    "getRequestId",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

TestIntf._op_getEncoding = IcePy.Operation(
    "getEncoding",
    "getEncoding",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

TestIntf._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_generated_test_Ice_current_Test_TestIntfPrx_t"]
