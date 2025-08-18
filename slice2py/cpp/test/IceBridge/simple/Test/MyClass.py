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

from Test.MyClass_forward import _Test_MyClassPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MyClassPrx(ObjectPrx):

    def callCallback(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_callCallback.invoke(self, ((), context))

    def callCallbackAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_callCallback.invokeAsync(self, ((), context))

    def getCallbackCount(self, context: dict[str, str] | None = None) -> int:
        return MyClass._op_getCallbackCount.invoke(self, ((), context))

    def getCallbackCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_getCallbackCount.invokeAsync(self, ((), context))

    def incCounter(self, expected: int, context: dict[str, str] | None = None) -> None:
        return MyClass._op_incCounter.invoke(self, ((expected, ), context))

    def incCounterAsync(self, expected: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_incCounter.invokeAsync(self, ((expected, ), context))

    def waitCounter(self, value: int, context: dict[str, str] | None = None) -> None:
        return MyClass._op_waitCounter.invoke(self, ((value, ), context))

    def waitCounterAsync(self, value: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_waitCounter.invokeAsync(self, ((value, ), context))

    def getConnectionCount(self, context: dict[str, str] | None = None) -> int:
        return MyClass._op_getConnectionCount.invoke(self, ((), context))

    def getConnectionCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_getConnectionCount.invokeAsync(self, ((), context))

    def getConnectionInfo(self, context: dict[str, str] | None = None) -> str:
        return MyClass._op_getConnectionInfo.invoke(self, ((), context))

    def getConnectionInfoAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        return MyClass._op_getConnectionInfo.invokeAsync(self, ((), context))

    def closeConnection(self, force: bool, context: dict[str, str] | None = None) -> None:
        return MyClass._op_closeConnection.invoke(self, ((force, ), context))

    def closeConnectionAsync(self, force: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_closeConnection.invokeAsync(self, ((force, ), context))

    def datagram(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_datagram.invoke(self, ((), context))

    def datagramAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_datagram.invokeAsync(self, ((), context))

    def getDatagramCount(self, context: dict[str, str] | None = None) -> int:
        return MyClass._op_getDatagramCount.invoke(self, ((), context))

    def getDatagramCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_getDatagramCount.invokeAsync(self, ((), context))

    def callDatagramCallback(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_callDatagramCallback.invoke(self, ((), context))

    def callDatagramCallbackAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_callDatagramCallback.invokeAsync(self, ((), context))

    def getCallbackDatagramCount(self, context: dict[str, str] | None = None) -> int:
        return MyClass._op_getCallbackDatagramCount.invoke(self, ((), context))

    def getCallbackDatagramCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        return MyClass._op_getCallbackDatagramCount.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyClassPrx | None:
        return checkedCast(MyClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyClassPrx | None ]:
        return checkedCastAsync(MyClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyClassPrx | None:
        return uncheckedCast(MyClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

IcePy.defineProxy("::Test::MyClass", MyClassPrx)

class MyClass(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyClass", )
    _op_callCallback: IcePy.Operation
    _op_getCallbackCount: IcePy.Operation
    _op_incCounter: IcePy.Operation
    _op_waitCounter: IcePy.Operation
    _op_getConnectionCount: IcePy.Operation
    _op_getConnectionInfo: IcePy.Operation
    _op_closeConnection: IcePy.Operation
    _op_datagram: IcePy.Operation
    _op_getDatagramCount: IcePy.Operation
    _op_callDatagramCallback: IcePy.Operation
    _op_getCallbackDatagramCount: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

    @abstractmethod
    def callCallback(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getCallbackCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def incCounter(self, expected: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def waitCounter(self, value: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getConnectionCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def getConnectionInfo(self, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def closeConnection(self, force: bool, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def datagram(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getDatagramCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def callDatagramCallback(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getCallbackDatagramCount(self, current: Current) -> int | Awaitable[int]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

MyClass._op_callCallback = IcePy.Operation(
    "callCallback",
    "callCallback",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_getCallbackCount = IcePy.Operation(
    "getCallbackCount",
    "getCallbackCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

MyClass._op_incCounter = IcePy.Operation(
    "incCounter",
    "incCounter",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

MyClass._op_waitCounter = IcePy.Operation(
    "waitCounter",
    "waitCounter",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

MyClass._op_getConnectionCount = IcePy.Operation(
    "getConnectionCount",
    "getConnectionCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

MyClass._op_getConnectionInfo = IcePy.Operation(
    "getConnectionInfo",
    "getConnectionInfo",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

MyClass._op_closeConnection = IcePy.Operation(
    "closeConnection",
    "closeConnection",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

MyClass._op_datagram = IcePy.Operation(
    "datagram",
    "datagram",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_getDatagramCount = IcePy.Operation(
    "getDatagramCount",
    "getDatagramCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

MyClass._op_callDatagramCallback = IcePy.Operation(
    "callDatagramCallback",
    "callDatagramCallback",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_getCallbackDatagramCount = IcePy.Operation(
    "getCallbackDatagramCount",
    "getCallbackDatagramCount",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

MyClass._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["MyClass", "MyClassPrx", "_Test_MyClassPrx_t"]
