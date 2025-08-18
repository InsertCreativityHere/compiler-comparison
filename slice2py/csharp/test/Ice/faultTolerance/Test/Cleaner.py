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

from Test.Cleaner_forward import _Test_CleanerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class CleanerPrx(ObjectPrx):

    def cleanup(self, context: dict[str, str] | None = None) -> None:
        return Cleaner._op_cleanup.invoke(self, ((), context))

    def cleanupAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Cleaner._op_cleanup.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> CleanerPrx | None:
        return checkedCast(CleanerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[CleanerPrx | None ]:
        return checkedCastAsync(CleanerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> CleanerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> CleanerPrx | None:
        return uncheckedCast(CleanerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Cleaner"

IcePy.defineProxy("::Test::Cleaner", CleanerPrx)

class Cleaner(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Cleaner", )
    _op_cleanup: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Cleaner"

    @abstractmethod
    def cleanup(self, current: Current) -> None | Awaitable[None]:
        pass

Cleaner._op_cleanup = IcePy.Operation(
    "cleanup",
    "cleanup",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Cleaner", "CleanerPrx", "_Test_CleanerPrx_t"]
