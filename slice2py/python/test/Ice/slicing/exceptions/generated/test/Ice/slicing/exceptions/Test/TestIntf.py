# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.FormatType import FormatType

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.slicing.exceptions.Test.Base import _generated_test_Ice_slicing_exceptions_Test_Base_t

from generated.test.Ice.slicing.exceptions.Test.KnownDerived import _generated_test_Ice_slicing_exceptions_Test_KnownDerived_t

from generated.test.Ice.slicing.exceptions.Test.KnownIntermediate import _generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t

from generated.test.Ice.slicing.exceptions.Test.KnownMostDerived import _generated_test_Ice_slicing_exceptions_Test_KnownMostDerived_t

from generated.test.Ice.slicing.exceptions.Test.TestIntf_forward import _generated_test_Ice_slicing_exceptions_Test_TestIntfPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def baseAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_baseAsBase.invoke(self, ((), context))

    def baseAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_baseAsBase.invokeAsync(self, ((), context))

    def unknownDerivedAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownDerivedAsBase.invoke(self, ((), context))

    def unknownDerivedAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownDerivedAsBase.invokeAsync(self, ((), context))

    def knownDerivedAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_knownDerivedAsBase.invoke(self, ((), context))

    def knownDerivedAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_knownDerivedAsBase.invokeAsync(self, ((), context))

    def knownDerivedAsKnownDerived(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_knownDerivedAsKnownDerived.invoke(self, ((), context))

    def knownDerivedAsKnownDerivedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_knownDerivedAsKnownDerived.invokeAsync(self, ((), context))

    def unknownIntermediateAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownIntermediateAsBase.invoke(self, ((), context))

    def unknownIntermediateAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownIntermediateAsBase.invokeAsync(self, ((), context))

    def knownIntermediateAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_knownIntermediateAsBase.invoke(self, ((), context))

    def knownIntermediateAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_knownIntermediateAsBase.invokeAsync(self, ((), context))

    def knownMostDerivedAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_knownMostDerivedAsBase.invoke(self, ((), context))

    def knownMostDerivedAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_knownMostDerivedAsBase.invokeAsync(self, ((), context))

    def knownIntermediateAsKnownIntermediate(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_knownIntermediateAsKnownIntermediate.invoke(self, ((), context))

    def knownIntermediateAsKnownIntermediateAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_knownIntermediateAsKnownIntermediate.invokeAsync(self, ((), context))

    def knownMostDerivedAsKnownIntermediate(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_knownMostDerivedAsKnownIntermediate.invoke(self, ((), context))

    def knownMostDerivedAsKnownIntermediateAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_knownMostDerivedAsKnownIntermediate.invokeAsync(self, ((), context))

    def knownMostDerivedAsKnownMostDerived(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_knownMostDerivedAsKnownMostDerived.invoke(self, ((), context))

    def knownMostDerivedAsKnownMostDerivedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_knownMostDerivedAsKnownMostDerived.invokeAsync(self, ((), context))

    def unknownMostDerived1AsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownMostDerived1AsBase.invoke(self, ((), context))

    def unknownMostDerived1AsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownMostDerived1AsBase.invokeAsync(self, ((), context))

    def unknownMostDerived1AsKnownIntermediate(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownMostDerived1AsKnownIntermediate.invoke(self, ((), context))

    def unknownMostDerived1AsKnownIntermediateAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownMostDerived1AsKnownIntermediate.invokeAsync(self, ((), context))

    def unknownMostDerived2AsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_unknownMostDerived2AsBase.invoke(self, ((), context))

    def unknownMostDerived2AsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_unknownMostDerived2AsBase.invokeAsync(self, ((), context))

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
    _op_baseAsBase: IcePy.Operation
    _op_unknownDerivedAsBase: IcePy.Operation
    _op_knownDerivedAsBase: IcePy.Operation
    _op_knownDerivedAsKnownDerived: IcePy.Operation
    _op_unknownIntermediateAsBase: IcePy.Operation
    _op_knownIntermediateAsBase: IcePy.Operation
    _op_knownMostDerivedAsBase: IcePy.Operation
    _op_knownIntermediateAsKnownIntermediate: IcePy.Operation
    _op_knownMostDerivedAsKnownIntermediate: IcePy.Operation
    _op_knownMostDerivedAsKnownMostDerived: IcePy.Operation
    _op_unknownMostDerived1AsBase: IcePy.Operation
    _op_unknownMostDerived1AsKnownIntermediate: IcePy.Operation
    _op_unknownMostDerived2AsBase: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def baseAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownDerivedAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownDerivedAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownDerivedAsKnownDerived(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownIntermediateAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownIntermediateAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownMostDerivedAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownIntermediateAsKnownIntermediate(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownMostDerivedAsKnownIntermediate(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownMostDerivedAsKnownMostDerived(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownMostDerived1AsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownMostDerived1AsKnownIntermediate(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownMostDerived2AsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_baseAsBase = IcePy.Operation(
    "baseAsBase",
    "baseAsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

TestIntf._op_unknownDerivedAsBase = IcePy.Operation(
    "unknownDerivedAsBase",
    "unknownDerivedAsBase",
    OperationMode.Normal,
    FormatType.CompactFormat,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

TestIntf._op_knownDerivedAsBase = IcePy.Operation(
    "knownDerivedAsBase",
    "knownDerivedAsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

TestIntf._op_knownDerivedAsKnownDerived = IcePy.Operation(
    "knownDerivedAsKnownDerived",
    "knownDerivedAsKnownDerived",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_KnownDerived_t,))

TestIntf._op_unknownIntermediateAsBase = IcePy.Operation(
    "unknownIntermediateAsBase",
    "unknownIntermediateAsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

TestIntf._op_knownIntermediateAsBase = IcePy.Operation(
    "knownIntermediateAsBase",
    "knownIntermediateAsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

TestIntf._op_knownMostDerivedAsBase = IcePy.Operation(
    "knownMostDerivedAsBase",
    "knownMostDerivedAsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

TestIntf._op_knownIntermediateAsKnownIntermediate = IcePy.Operation(
    "knownIntermediateAsKnownIntermediate",
    "knownIntermediateAsKnownIntermediate",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t,))

TestIntf._op_knownMostDerivedAsKnownIntermediate = IcePy.Operation(
    "knownMostDerivedAsKnownIntermediate",
    "knownMostDerivedAsKnownIntermediate",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t,))

TestIntf._op_knownMostDerivedAsKnownMostDerived = IcePy.Operation(
    "knownMostDerivedAsKnownMostDerived",
    "knownMostDerivedAsKnownMostDerived",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_KnownMostDerived_t,))

TestIntf._op_unknownMostDerived1AsBase = IcePy.Operation(
    "unknownMostDerived1AsBase",
    "unknownMostDerived1AsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

TestIntf._op_unknownMostDerived1AsKnownIntermediate = IcePy.Operation(
    "unknownMostDerived1AsKnownIntermediate",
    "unknownMostDerived1AsKnownIntermediate",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t,))

TestIntf._op_unknownMostDerived2AsBase = IcePy.Operation(
    "unknownMostDerived2AsBase",
    "unknownMostDerived2AsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_exceptions_Test_Base_t,))

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

__all__ = ["TestIntf", "TestIntfPrx", "_generated_test_Ice_slicing_exceptions_Test_TestIntfPrx_t"]
