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

from NoNamespace.C1_forward import _NoNamespace_C1_t

from NoNamespace.C2_forward import _NoNamespace_C2_t

from NoNamespace.E1 import _NoNamespace_E1_t

from NoNamespace.E2 import _NoNamespace_E2_t

from NoNamespace.notify import _NoNamespace_notify_t

from Test.Initial_forward import _Test_InitialPrx_t

from WithNamespace.C1_forward import _WithNamespace_C1_t

from WithNamespace.C2_forward import _WithNamespace_C2_t

from WithNamespace.E1 import _WithNamespace_E1_t

from WithNamespace.E2 import _WithNamespace_E2_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from NoNamespace.C1 import C1
    from NoNamespace.C2 import C2
    from WithNamespace.C1 import C1 as _m_WithNamespace_C1_C1
    from WithNamespace.C2 import C2 as _m_WithNamespace_C2_C2
    from collections.abc import Awaitable
    from collections.abc import Sequence


class InitialPrx(ObjectPrx):

    def getNoNamespaceC2AsC1(self, context: dict[str, str] | None = None) -> C1 | None:
        return Initial._op_getNoNamespaceC2AsC1.invoke(self, ((), context))

    def getNoNamespaceC2AsC1Async(self, context: dict[str, str] | None = None) -> Awaitable[C1 | None]:
        return Initial._op_getNoNamespaceC2AsC1.invokeAsync(self, ((), context))

    def getNoNamespaceC2AsC2(self, context: dict[str, str] | None = None) -> C2 | None:
        return Initial._op_getNoNamespaceC2AsC2.invoke(self, ((), context))

    def getNoNamespaceC2AsC2Async(self, context: dict[str, str] | None = None) -> Awaitable[C2 | None]:
        return Initial._op_getNoNamespaceC2AsC2.invokeAsync(self, ((), context))

    def throwNoNamespaceE2AsE1(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwNoNamespaceE2AsE1.invoke(self, ((), context))

    def throwNoNamespaceE2AsE1Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwNoNamespaceE2AsE1.invokeAsync(self, ((), context))

    def throwNoNamespaceE2AsE2(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwNoNamespaceE2AsE2.invoke(self, ((), context))

    def throwNoNamespaceE2AsE2Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwNoNamespaceE2AsE2.invokeAsync(self, ((), context))

    def throwNoNamespaceNotify(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwNoNamespaceNotify.invoke(self, ((), context))

    def throwNoNamespaceNotifyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwNoNamespaceNotify.invokeAsync(self, ((), context))

    def getWithNamespaceC2AsC1(self, context: dict[str, str] | None = None) -> _m_WithNamespace_C1_C1 | None:
        return Initial._op_getWithNamespaceC2AsC1.invoke(self, ((), context))

    def getWithNamespaceC2AsC1Async(self, context: dict[str, str] | None = None) -> Awaitable[_m_WithNamespace_C1_C1 | None]:
        return Initial._op_getWithNamespaceC2AsC1.invokeAsync(self, ((), context))

    def getWithNamespaceC2AsC2(self, context: dict[str, str] | None = None) -> _m_WithNamespace_C2_C2 | None:
        return Initial._op_getWithNamespaceC2AsC2.invoke(self, ((), context))

    def getWithNamespaceC2AsC2Async(self, context: dict[str, str] | None = None) -> Awaitable[_m_WithNamespace_C2_C2 | None]:
        return Initial._op_getWithNamespaceC2AsC2.invokeAsync(self, ((), context))

    def throwWithNamespaceE2AsE1(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwWithNamespaceE2AsE1.invoke(self, ((), context))

    def throwWithNamespaceE2AsE1Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwWithNamespaceE2AsE1.invokeAsync(self, ((), context))

    def throwWithNamespaceE2AsE2(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwWithNamespaceE2AsE2.invoke(self, ((), context))

    def throwWithNamespaceE2AsE2Async(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwWithNamespaceE2AsE2.invokeAsync(self, ((), context))

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
    _op_getNoNamespaceC2AsC1: IcePy.Operation
    _op_getNoNamespaceC2AsC2: IcePy.Operation
    _op_throwNoNamespaceE2AsE1: IcePy.Operation
    _op_throwNoNamespaceE2AsE2: IcePy.Operation
    _op_throwNoNamespaceNotify: IcePy.Operation
    _op_getWithNamespaceC2AsC1: IcePy.Operation
    _op_getWithNamespaceC2AsC2: IcePy.Operation
    _op_throwWithNamespaceE2AsE1: IcePy.Operation
    _op_throwWithNamespaceE2AsE2: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

    @abstractmethod
    def getNoNamespaceC2AsC1(self, current: Current) -> C1 | None | Awaitable[C1 | None]:
        pass

    @abstractmethod
    def getNoNamespaceC2AsC2(self, current: Current) -> C2 | None | Awaitable[C2 | None]:
        pass

    @abstractmethod
    def throwNoNamespaceE2AsE1(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwNoNamespaceE2AsE2(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwNoNamespaceNotify(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getWithNamespaceC2AsC1(self, current: Current) -> _m_WithNamespace_C1_C1 | None | Awaitable[_m_WithNamespace_C1_C1 | None]:
        pass

    @abstractmethod
    def getWithNamespaceC2AsC2(self, current: Current) -> _m_WithNamespace_C2_C2 | None | Awaitable[_m_WithNamespace_C2_C2 | None]:
        pass

    @abstractmethod
    def throwWithNamespaceE2AsE1(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwWithNamespaceE2AsE2(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

Initial._op_getNoNamespaceC2AsC1 = IcePy.Operation(
    "getNoNamespaceC2AsC1",
    "getNoNamespaceC2AsC1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _NoNamespace_C1_t, False, 0),
    ())

Initial._op_getNoNamespaceC2AsC2 = IcePy.Operation(
    "getNoNamespaceC2AsC2",
    "getNoNamespaceC2AsC2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _NoNamespace_C2_t, False, 0),
    ())

Initial._op_throwNoNamespaceE2AsE1 = IcePy.Operation(
    "throwNoNamespaceE2AsE1",
    "throwNoNamespaceE2AsE1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_NoNamespace_E1_t,))

Initial._op_throwNoNamespaceE2AsE2 = IcePy.Operation(
    "throwNoNamespaceE2AsE2",
    "throwNoNamespaceE2AsE2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_NoNamespace_E2_t,))

Initial._op_throwNoNamespaceNotify = IcePy.Operation(
    "throwNoNamespaceNotify",
    "throwNoNamespaceNotify",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_NoNamespace_notify_t,))

Initial._op_getWithNamespaceC2AsC1 = IcePy.Operation(
    "getWithNamespaceC2AsC1",
    "getWithNamespaceC2AsC1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _WithNamespace_C1_t, False, 0),
    ())

Initial._op_getWithNamespaceC2AsC2 = IcePy.Operation(
    "getWithNamespaceC2AsC2",
    "getWithNamespaceC2AsC2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _WithNamespace_C2_t, False, 0),
    ())

Initial._op_throwWithNamespaceE2AsE1 = IcePy.Operation(
    "throwWithNamespaceE2AsE1",
    "throwWithNamespaceE2AsE1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_WithNamespace_E1_t,))

Initial._op_throwWithNamespaceE2AsE2 = IcePy.Operation(
    "throwWithNamespaceE2AsE2",
    "throwWithNamespaceE2AsE2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_WithNamespace_E2_t,))

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
