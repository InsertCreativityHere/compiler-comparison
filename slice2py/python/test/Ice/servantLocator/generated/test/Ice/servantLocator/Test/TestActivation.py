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

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.servantLocator.Test.TestActivation_forward import _generated_test_Ice_servantLocator_Test_TestActivationPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestActivationPrx(ObjectPrx):

    def activateServantLocator(self, activate: bool, context: dict[str, str] | None = None) -> None:
        return TestActivation._op_activateServantLocator.invoke(self, ((activate, ), context))

    def activateServantLocatorAsync(self, activate: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestActivation._op_activateServantLocator.invokeAsync(self, ((activate, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestActivationPrx | None:
        return checkedCast(TestActivationPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestActivationPrx | None ]:
        return checkedCastAsync(TestActivationPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestActivationPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestActivationPrx | None:
        return uncheckedCast(TestActivationPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestActivation"

IcePy.defineProxy("::Test::TestActivation", TestActivationPrx)

class TestActivation(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestActivation", )
    _op_activateServantLocator: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestActivation"

    @abstractmethod
    def activateServantLocator(self, activate: bool, current: Current) -> None | Awaitable[None]:
        pass

TestActivation._op_activateServantLocator = IcePy.Operation(
    "activateServantLocator",
    "activateServantLocator",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

__all__ = ["TestActivation", "TestActivationPrx", "_generated_test_Ice_servantLocator_Test_TestActivationPrx_t"]
