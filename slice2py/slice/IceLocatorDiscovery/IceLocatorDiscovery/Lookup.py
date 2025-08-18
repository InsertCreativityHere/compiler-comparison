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

from IceLocatorDiscovery.LookupReply_forward import _IceLocatorDiscovery_LookupReplyPrx_t

from IceLocatorDiscovery.Lookup_forward import _IceLocatorDiscovery_LookupPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceLocatorDiscovery.LookupReply import LookupReplyPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class LookupPrx(ObjectPrx):

    def findLocator(self, instanceName: str, reply: LookupReplyPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Finds a locator proxy with the given instance name.
        
        Parameters
        ----------
        instanceName : str
            Restrict the search to Ice registries configured with the given instance name. If
            empty, all the available registries will reply.
        reply : LookupReplyPrx | None
            The reply object to use to send the reply.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Lookup._op_findLocator.invoke(self, ((instanceName, reply), context))

    def findLocatorAsync(self, instanceName: str, reply: LookupReplyPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Finds a locator proxy with the given instance name.
        
        Parameters
        ----------
        instanceName : str
            Restrict the search to Ice registries configured with the given instance name. If
            empty, all the available registries will reply.
        reply : LookupReplyPrx | None
            The reply object to use to send the reply.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Lookup._op_findLocator.invokeAsync(self, ((instanceName, reply), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> LookupPrx | None:
        return checkedCast(LookupPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[LookupPrx | None ]:
        return checkedCastAsync(LookupPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> LookupPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> LookupPrx | None:
        return uncheckedCast(LookupPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceLocatorDiscovery::Lookup"

IcePy.defineProxy("::IceLocatorDiscovery::Lookup", LookupPrx)

class Lookup(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceLocatorDiscovery::Lookup", )
    _op_findLocator: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceLocatorDiscovery::Lookup"

    @abstractmethod
    def findLocator(self, instanceName: str, reply: LookupReplyPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Finds a locator proxy with the given instance name.
        
        Parameters
        ----------
        instanceName : str
            Restrict the search to Ice registries configured with the given instance name. If
            empty, all the available registries will reply.
        reply : LookupReplyPrx | None
            The reply object to use to send the reply.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

Lookup._op_findLocator = IcePy.Operation(
    "findLocator",
    "findLocator",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), _IceLocatorDiscovery_LookupReplyPrx_t, False, 0)),
    (),
    None,
    ())

__all__ = ["Lookup", "LookupPrx", "_IceLocatorDiscovery_LookupPrx_t"]
