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

from Test.TestImpossibleException import _Test_TestImpossibleException_t

from Test.TestIntfUserException import _Test_TestIntfUserException_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def requestFailedException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_requestFailedException.invoke(self, ((), context))

    def requestFailedExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_requestFailedException.invokeAsync(self, ((), context))

    def unknownUserException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownUserException.invoke(self, ((), context))

    def unknownUserExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownUserException.invokeAsync(self, ((), context))

    def unknownLocalException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownLocalException.invoke(self, ((), context))

    def unknownLocalExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownLocalException.invokeAsync(self, ((), context))

    def unknownException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownException.invoke(self, ((), context))

    def unknownExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownException.invokeAsync(self, ((), context))

    def localException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_localException.invoke(self, ((), context))

    def localExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_localException.invokeAsync(self, ((), context))

    def javaException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_javaException.invoke(self, ((), context))

    def javaExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_javaException.invokeAsync(self, ((), context))

    def unknownExceptionWithServantException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownExceptionWithServantException.invoke(self, ((), context))

    def unknownExceptionWithServantExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownExceptionWithServantException.invokeAsync(self, ((), context))

    def impossibleException(self, shouldThrow: bool, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_impossibleException.invoke(self, ((shouldThrow, ), context))

    def impossibleExceptionAsync(self, shouldThrow: bool, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_impossibleException.invokeAsync(self, ((shouldThrow, ), context))

    def intfUserException(self, shouldThrow: bool, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_intfUserException.invoke(self, ((shouldThrow, ), context))

    def intfUserExceptionAsync(self, shouldThrow: bool, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_intfUserException.invokeAsync(self, ((shouldThrow, ), context))

    def asyncResponse(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_asyncResponse.invoke(self, ((), context))

    def asyncResponseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_asyncResponse.invokeAsync(self, ((), context))

    def asyncException(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_asyncException.invoke(self, ((), context))

    def asyncExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_asyncException.invokeAsync(self, ((), context))

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
    _op_requestFailedException: IcePy.Operation
    _op_unknownUserException: IcePy.Operation
    _op_unknownLocalException: IcePy.Operation
    _op_unknownException: IcePy.Operation
    _op_localException: IcePy.Operation
    _op_javaException: IcePy.Operation
    _op_unknownExceptionWithServantException: IcePy.Operation
    _op_impossibleException: IcePy.Operation
    _op_intfUserException: IcePy.Operation
    _op_asyncResponse: IcePy.Operation
    _op_asyncException: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def requestFailedException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownUserException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownLocalException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def localException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def javaException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownExceptionWithServantException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def impossibleException(self, shouldThrow: bool, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def intfUserException(self, shouldThrow: bool, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def asyncResponse(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def asyncException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_requestFailedException = IcePy.Operation(
    "requestFailedException",
    "requestFailedException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_unknownUserException = IcePy.Operation(
    "unknownUserException",
    "unknownUserException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_unknownLocalException = IcePy.Operation(
    "unknownLocalException",
    "unknownLocalException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_unknownException = IcePy.Operation(
    "unknownException",
    "unknownException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_localException = IcePy.Operation(
    "localException",
    "localException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_javaException = IcePy.Operation(
    "javaException",
    "javaException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_unknownExceptionWithServantException = IcePy.Operation(
    "unknownExceptionWithServantException",
    "unknownExceptionWithServantException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntf._op_impossibleException = IcePy.Operation(
    "impossibleException",
    "impossibleException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    ((), IcePy._t_string, False, 0),
    (_Test_TestImpossibleException_t,))

TestIntf._op_intfUserException = IcePy.Operation(
    "intfUserException",
    "intfUserException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    ((), IcePy._t_string, False, 0),
    (_Test_TestIntfUserException_t, _Test_TestImpossibleException_t))

TestIntf._op_asyncResponse = IcePy.Operation(
    "asyncResponse",
    "asyncResponse",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_TestIntfUserException_t, _Test_TestImpossibleException_t))

TestIntf._op_asyncException = IcePy.Operation(
    "asyncException",
    "asyncException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_TestIntfUserException_t, _Test_TestImpossibleException_t))

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

__all__ = ["TestIntf", "TestIntfPrx", "_Test_TestIntfPrx_t"]
