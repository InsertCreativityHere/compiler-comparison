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

from Test.TestIntfController_forward import _Test_TestIntfControllerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfControllerPrx(ObjectPrx):

    def holdAdapter(self, context: dict[str, str] | None = None) -> None:
        return TestIntfController._op_holdAdapter.invoke(self, ((), context))

    def holdAdapterAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntfController._op_holdAdapter.invokeAsync(self, ((), context))

    def resumeAdapter(self, context: dict[str, str] | None = None) -> None:
        return TestIntfController._op_resumeAdapter.invoke(self, ((), context))

    def resumeAdapterAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntfController._op_resumeAdapter.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestIntfControllerPrx | None:
        return checkedCast(TestIntfControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestIntfControllerPrx | None ]:
        return checkedCastAsync(TestIntfControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestIntfControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestIntfControllerPrx | None:
        return uncheckedCast(TestIntfControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntfController"

IcePy.defineProxy("::Test::TestIntfController", TestIntfControllerPrx)

class TestIntfController(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestIntfController", )
    _op_holdAdapter: IcePy.Operation
    _op_resumeAdapter: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntfController"

    @abstractmethod
    def holdAdapter(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def resumeAdapter(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntfController._op_holdAdapter = IcePy.Operation(
    "holdAdapter",
    "holdAdapter",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

TestIntfController._op_resumeAdapter = IcePy.Operation(
    "resumeAdapter",
    "resumeAdapter",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestIntfController", "TestIntfControllerPrx", "_Test_TestIntfControllerPrx_t"]
