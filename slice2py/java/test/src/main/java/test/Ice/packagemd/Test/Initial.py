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

from Test.Initial_forward import _Test_InitialPrx_t

from Test1.C1_forward import _Test1_C1_t

from Test1.C2_forward import _Test1_C2_t

from Test1.E1 import _Test1_E1_t

from Test1.E2 import _Test1_E2_t

from Test1.notify import _Test1_notify_t

from Test2.C1_forward import _Test2_C1_t

from Test2.C2_forward import _Test2_C2_t

from Test2.E1 import _Test2_E1_t

from Test2.E2 import _Test2_E2_t

from Test3.C1_forward import _Test3_C1_t

from Test3.C2_forward import _Test3_C2_t

from Test3.E1 import _Test3_E1_t

from Test3.E2 import _Test3_E2_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test1.C1 import C1
    from Test1.C2 import C2
    from Test2.C1 import C1 as _m_Test2_C1_C1
    from Test2.C2 import C2 as _m_Test2_C2_C2
    from Test3.C1 import C1 as _m_Test3_C1_C1
    from Test3.C2 import C2 as _m_Test3_C2_C2
    from collections.abc import Awaitable
    from collections.abc import Sequence


class InitialPrx(ObjectPrx):

    def getTest1C2AsC1(self, context: dict[str, str] | None = None) -> C1 | None:
        return Initial._op_getTest1C2AsC1.invoke(self, ((), context))

    def getTest1C2AsC1Async(self, context: dict[str, str] | None = None) -> Awaitable[C1 | None]:
        return Initial._op_getTest1C2AsC1.invokeAsync(self, ((), context))

    def getTest1C2AsC2(self, context: dict[str, str] | None = None) -> C2 | None:
        return Initial._op_getTest1C2AsC2.invoke(self, ((), context))

    def getTest1C2AsC2Async(self, context: dict[str, str] | None = None) -> Awaitable[C2 | None]:
        return Initial._op_getTest1C2AsC2.invokeAsync(self, ((), context))

    def throwTest1E2AsE1(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwTest1E2AsE1.invoke(self, ((), context))

    def throwTest1E2AsE1Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwTest1E2AsE1.invokeAsync(self, ((), context))

    def throwTest1E2AsE2(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwTest1E2AsE2.invoke(self, ((), context))

    def throwTest1E2AsE2Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwTest1E2AsE2.invokeAsync(self, ((), context))

    def throwTest1Notify(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwTest1Notify.invoke(self, ((), context))

    def throwTest1NotifyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwTest1Notify.invokeAsync(self, ((), context))

    def getTest2C2AsC1(self, context: dict[str, str] | None = None) -> _m_Test2_C1_C1 | None:
        return Initial._op_getTest2C2AsC1.invoke(self, ((), context))

    def getTest2C2AsC1Async(self, context: dict[str, str] | None = None) -> Awaitable[_m_Test2_C1_C1 | None]:
        return Initial._op_getTest2C2AsC1.invokeAsync(self, ((), context))

    def getTest2C2AsC2(self, context: dict[str, str] | None = None) -> _m_Test2_C2_C2 | None:
        return Initial._op_getTest2C2AsC2.invoke(self, ((), context))

    def getTest2C2AsC2Async(self, context: dict[str, str] | None = None) -> Awaitable[_m_Test2_C2_C2 | None]:
        return Initial._op_getTest2C2AsC2.invokeAsync(self, ((), context))

    def throwTest2E2AsE1(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwTest2E2AsE1.invoke(self, ((), context))

    def throwTest2E2AsE1Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwTest2E2AsE1.invokeAsync(self, ((), context))

    def throwTest2E2AsE2(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwTest2E2AsE2.invoke(self, ((), context))

    def throwTest2E2AsE2Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwTest2E2AsE2.invokeAsync(self, ((), context))

    def getTest3C2AsC1(self, context: dict[str, str] | None = None) -> _m_Test3_C1_C1 | None:
        return Initial._op_getTest3C2AsC1.invoke(self, ((), context))

    def getTest3C2AsC1Async(self, context: dict[str, str] | None = None) -> Awaitable[_m_Test3_C1_C1 | None]:
        return Initial._op_getTest3C2AsC1.invokeAsync(self, ((), context))

    def getTest3C2AsC2(self, context: dict[str, str] | None = None) -> _m_Test3_C2_C2 | None:
        return Initial._op_getTest3C2AsC2.invoke(self, ((), context))

    def getTest3C2AsC2Async(self, context: dict[str, str] | None = None) -> Awaitable[_m_Test3_C2_C2 | None]:
        return Initial._op_getTest3C2AsC2.invokeAsync(self, ((), context))

    def throwTest3E2AsE1(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwTest3E2AsE1.invoke(self, ((), context))

    def throwTest3E2AsE1Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwTest3E2AsE1.invokeAsync(self, ((), context))

    def throwTest3E2AsE2(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwTest3E2AsE2.invoke(self, ((), context))

    def throwTest3E2AsE2Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwTest3E2AsE2.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> InitialPrx | None:
        return checkedCast(InitialPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[InitialPrx | None ]:
        return checkedCastAsync(InitialPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> InitialPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> InitialPrx | None:
        return uncheckedCast(InitialPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

IcePy.defineProxy("::Test::Initial", InitialPrx)

class Initial(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Initial", )
    _op_getTest1C2AsC1: IcePy.Operation
    _op_getTest1C2AsC2: IcePy.Operation
    _op_throwTest1E2AsE1: IcePy.Operation
    _op_throwTest1E2AsE2: IcePy.Operation
    _op_throwTest1Notify: IcePy.Operation
    _op_getTest2C2AsC1: IcePy.Operation
    _op_getTest2C2AsC2: IcePy.Operation
    _op_throwTest2E2AsE1: IcePy.Operation
    _op_throwTest2E2AsE2: IcePy.Operation
    _op_getTest3C2AsC1: IcePy.Operation
    _op_getTest3C2AsC2: IcePy.Operation
    _op_throwTest3E2AsE1: IcePy.Operation
    _op_throwTest3E2AsE2: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

    @abstractmethod
    def getTest1C2AsC1(self, current: Current) -> C1 | None | Awaitable[C1 | None]:
        pass

    @abstractmethod
    def getTest1C2AsC2(self, current: Current) -> C2 | None | Awaitable[C2 | None]:
        pass

    @abstractmethod
    def throwTest1E2AsE1(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwTest1E2AsE2(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwTest1Notify(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getTest2C2AsC1(self, current: Current) -> _m_Test2_C1_C1 | None | Awaitable[_m_Test2_C1_C1 | None]:
        pass

    @abstractmethod
    def getTest2C2AsC2(self, current: Current) -> _m_Test2_C2_C2 | None | Awaitable[_m_Test2_C2_C2 | None]:
        pass

    @abstractmethod
    def throwTest2E2AsE1(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwTest2E2AsE2(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getTest3C2AsC1(self, current: Current) -> _m_Test3_C1_C1 | None | Awaitable[_m_Test3_C1_C1 | None]:
        pass

    @abstractmethod
    def getTest3C2AsC2(self, current: Current) -> _m_Test3_C2_C2 | None | Awaitable[_m_Test3_C2_C2 | None]:
        pass

    @abstractmethod
    def throwTest3E2AsE1(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwTest3E2AsE2(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Initial._op_getTest1C2AsC1 = IcePy.Operation(
    "getTest1C2AsC1",
    "getTest1C2AsC1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test1_C1_t, False, 0),
    ())

Initial._op_getTest1C2AsC2 = IcePy.Operation(
    "getTest1C2AsC2",
    "getTest1C2AsC2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test1_C2_t, False, 0),
    ())

Initial._op_throwTest1E2AsE1 = IcePy.Operation(
    "throwTest1E2AsE1",
    "throwTest1E2AsE1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test1_E1_t,))

Initial._op_throwTest1E2AsE2 = IcePy.Operation(
    "throwTest1E2AsE2",
    "throwTest1E2AsE2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test1_E2_t,))

Initial._op_throwTest1Notify = IcePy.Operation(
    "throwTest1Notify",
    "throwTest1Notify",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test1_notify_t,))

Initial._op_getTest2C2AsC1 = IcePy.Operation(
    "getTest2C2AsC1",
    "getTest2C2AsC1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test2_C1_t, False, 0),
    ())

Initial._op_getTest2C2AsC2 = IcePy.Operation(
    "getTest2C2AsC2",
    "getTest2C2AsC2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test2_C2_t, False, 0),
    ())

Initial._op_throwTest2E2AsE1 = IcePy.Operation(
    "throwTest2E2AsE1",
    "throwTest2E2AsE1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test2_E1_t,))

Initial._op_throwTest2E2AsE2 = IcePy.Operation(
    "throwTest2E2AsE2",
    "throwTest2E2AsE2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test2_E2_t,))

Initial._op_getTest3C2AsC1 = IcePy.Operation(
    "getTest3C2AsC1",
    "getTest3C2AsC1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test3_C1_t, False, 0),
    ())

Initial._op_getTest3C2AsC2 = IcePy.Operation(
    "getTest3C2AsC2",
    "getTest3C2AsC2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test3_C2_t, False, 0),
    ())

Initial._op_throwTest3E2AsE1 = IcePy.Operation(
    "throwTest3E2AsE1",
    "throwTest3E2AsE1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test3_E1_t,))

Initial._op_throwTest3E2AsE2 = IcePy.Operation(
    "throwTest3E2AsE2",
    "throwTest3E2AsE2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test3_E2_t,))

Initial._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Initial", "InitialPrx", "_Test_InitialPrx_t"]
