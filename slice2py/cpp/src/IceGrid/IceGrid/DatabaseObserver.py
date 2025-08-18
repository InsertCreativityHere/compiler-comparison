# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Identity import _Ice_Identity_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from IceGrid.AdapterInfo import _IceGrid_AdapterInfo_t

from IceGrid.AdapterInfoSeq import _IceGrid_AdapterInfoSeq_t

from IceGrid.AdapterObserver import AdapterObserver
from IceGrid.AdapterObserver import AdapterObserverPrx

from IceGrid.ApplicationInfo import _IceGrid_ApplicationInfo_t

from IceGrid.ApplicationInfoSeq import _IceGrid_ApplicationInfoSeq_t

from IceGrid.ApplicationObserver import ApplicationObserver
from IceGrid.ApplicationObserver import ApplicationObserverPrx

from IceGrid.ApplicationUpdateInfo import _IceGrid_ApplicationUpdateInfo_t

from IceGrid.DatabaseObserver_forward import _IceGrid_DatabaseObserverPrx_t

from IceGrid.ObjectInfo import _IceGrid_ObjectInfo_t

from IceGrid.ObjectInfoSeq import _IceGrid_ObjectInfoSeq_t

from IceGrid.ObjectObserver import ObjectObserver
from IceGrid.ObjectObserver import ObjectObserverPrx

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from Ice.ObjectPrx import ObjectPrx
    from IceGrid.AdapterInfo import AdapterInfo
    from IceGrid.ApplicationInfo import ApplicationInfo
    from IceGrid.ApplicationUpdateInfo import ApplicationUpdateInfo
    from IceGrid.ObjectInfo import ObjectInfo
    from collections.abc import Awaitable
    from collections.abc import Sequence


class DatabaseObserverPrx(ApplicationObserverPrx, ObjectObserverPrx, AdapterObserverPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> DatabaseObserverPrx | None:
        return checkedCast(DatabaseObserverPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[DatabaseObserverPrx | None ]:
        return checkedCastAsync(DatabaseObserverPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> DatabaseObserverPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> DatabaseObserverPrx | None:
        return uncheckedCast(DatabaseObserverPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::DatabaseObserver"

IcePy.defineProxy("::IceGrid::DatabaseObserver", DatabaseObserverPrx)

class DatabaseObserver(ApplicationObserver, ObjectObserver, AdapterObserver, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::AdapterObserver", "::IceGrid::ApplicationObserver", "::IceGrid::DatabaseObserver", "::IceGrid::ObjectObserver", )

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::DatabaseObserver"

__all__ = ["DatabaseObserver", "DatabaseObserverPrx", "_IceGrid_DatabaseObserverPrx_t"]
