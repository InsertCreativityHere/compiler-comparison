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

from Test.Base import _Test_Base_t

from Test.KnownPreserved import _Test_KnownPreserved_t

from Test.Relay_forward import _Test_RelayPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class RelayPrx(ObjectPrx):

    def knownPreservedAsBase(self, context: dict[str, str] | None = None) -> None:
        return Relay._op_knownPreservedAsBase.invoke(self, ((), context))

    def knownPreservedAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Relay._op_knownPreservedAsBase.invokeAsync(self, ((), context))

    def knownPreservedAsKnownPreserved(self, context: dict[str, str] | None = None) -> None:
        return Relay._op_knownPreservedAsKnownPreserved.invoke(self, ((), context))

    def knownPreservedAsKnownPreservedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Relay._op_knownPreservedAsKnownPreserved.invokeAsync(self, ((), context))

    def unknownPreservedAsBase(self, context: dict[str, str] | None = None) -> None:
        return Relay._op_unknownPreservedAsBase.invoke(self, ((), context))

    def unknownPreservedAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Relay._op_unknownPreservedAsBase.invokeAsync(self, ((), context))

    def unknownPreservedAsKnownPreserved(self, context: dict[str, str] | None = None) -> None:
        return Relay._op_unknownPreservedAsKnownPreserved.invoke(self, ((), context))

    def unknownPreservedAsKnownPreservedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Relay._op_unknownPreservedAsKnownPreserved.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> RelayPrx | None:
        return checkedCast(RelayPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[RelayPrx | None ]:
        return checkedCastAsync(RelayPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> RelayPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> RelayPrx | None:
        return uncheckedCast(RelayPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Relay"

IcePy.defineProxy("::Test::Relay", RelayPrx)

class Relay(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Relay", )
    _op_knownPreservedAsBase: IcePy.Operation
    _op_knownPreservedAsKnownPreserved: IcePy.Operation
    _op_unknownPreservedAsBase: IcePy.Operation
    _op_unknownPreservedAsKnownPreserved: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Relay"

    @abstractmethod
    def knownPreservedAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def knownPreservedAsKnownPreserved(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownPreservedAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def unknownPreservedAsKnownPreserved(self, current: Current) -> None | Awaitable[None]:
        pass

Relay._op_knownPreservedAsBase = IcePy.Operation(
    "knownPreservedAsBase",
    "knownPreservedAsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_Base_t,))

Relay._op_knownPreservedAsKnownPreserved = IcePy.Operation(
    "knownPreservedAsKnownPreserved",
    "knownPreservedAsKnownPreserved",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_KnownPreserved_t,))

Relay._op_unknownPreservedAsBase = IcePy.Operation(
    "unknownPreservedAsBase",
    "unknownPreservedAsBase",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_Base_t,))

Relay._op_unknownPreservedAsKnownPreserved = IcePy.Operation(
    "unknownPreservedAsKnownPreserved",
    "unknownPreservedAsKnownPreserved",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_KnownPreserved_t,))

__all__ = ["Relay", "RelayPrx", "_Test_RelayPrx_t"]
