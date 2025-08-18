# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.LocatorFinder_forward import _Ice_LocatorFinderPrx_t

from Ice.Locator_forward import _Ice_LocatorPrx_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Locator import LocatorPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class LocatorFinderPrx(ObjectPrx):

    def getLocator(self, context: dict[str, str] | None = None) -> LocatorPrx | None:
        """
        Gets a proxy to the associated :class:`Ice.LocatorPrx`. The proxy might point to several replicas.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        LocatorPrx | None
            The locator proxy. This proxy is never null.
        """
        return LocatorFinder._op_getLocator.invoke(self, ((), context))

    def getLocatorAsync(self, context: dict[str, str] | None = None) -> Awaitable[LocatorPrx | None]:
        """
        Gets a proxy to the associated :class:`Ice.LocatorPrx`. The proxy might point to several replicas.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[LocatorPrx | None]
            The locator proxy. This proxy is never null.
        """
        return LocatorFinder._op_getLocator.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> LocatorFinderPrx | None:
        return checkedCast(LocatorFinderPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[LocatorFinderPrx | None ]:
        return checkedCastAsync(LocatorFinderPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> LocatorFinderPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> LocatorFinderPrx | None:
        return uncheckedCast(LocatorFinderPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Ice::LocatorFinder"

IcePy.defineProxy("::Ice::LocatorFinder", LocatorFinderPrx)

class LocatorFinder(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::LocatorFinder", "::Ice::Object", )
    _op_getLocator: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Ice::LocatorFinder"

    @abstractmethod
    def getLocator(self, current: Current) -> LocatorPrx | None | Awaitable[LocatorPrx | None]:
        """
        Gets a proxy to the associated :class:`Ice.LocatorPrx`. The proxy might point to several replicas.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        LocatorPrx | None | Awaitable[LocatorPrx | None]
            The locator proxy. This proxy is never null.
        """
        pass

LocatorFinder._op_getLocator = IcePy.Operation(
    "getLocator",
    "getLocator",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_LocatorPrx_t, False, 0),
    ())

__all__ = ["LocatorFinder", "LocatorFinderPrx", "_Ice_LocatorFinderPrx_t"]
