# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Identity import _Ice_Identity_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from IceDiscovery.LookupReply_forward import _IceDiscovery_LookupReplyPrx_t

from IceDiscovery.Lookup_forward import _IceDiscovery_LookupPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from IceDiscovery.LookupReply import LookupReplyPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class LookupPrx(ObjectPrx):

    def findObjectById(self, domainId: str, id: Identity, reply: LookupReplyPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Finds a well-known Ice object.
        
        Parameters
        ----------
        domainId : str
            The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            matching domain identifier.
        id : Identity
            The well-known object identity.
        reply : LookupReplyPrx | None
            The proxy of the LookupReply interface that should be used to send the reply if a matching
            object is found. The reply proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Lookup._op_findObjectById.invoke(self, ((domainId, id, reply), context))

    def findObjectByIdAsync(self, domainId: str, id: Identity, reply: LookupReplyPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Finds a well-known Ice object.
        
        Parameters
        ----------
        domainId : str
            The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            matching domain identifier.
        id : Identity
            The well-known object identity.
        reply : LookupReplyPrx | None
            The proxy of the LookupReply interface that should be used to send the reply if a matching
            object is found. The reply proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Lookup._op_findObjectById.invokeAsync(self, ((domainId, id, reply), context))

    def findAdapterById(self, domainId: str, id: str, reply: LookupReplyPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Finds an object adapter.
        
        Parameters
        ----------
        domainId : str
            The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            matching domain identifier.
        id : str
            The adapter ID.
        reply : LookupReplyPrx | None
            The proxy of the LookupReply interface that should be used to send the reply if a matching
            adapter is found. The reply proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Lookup._op_findAdapterById.invoke(self, ((domainId, id, reply), context))

    def findAdapterByIdAsync(self, domainId: str, id: str, reply: LookupReplyPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Finds an object adapter.
        
        Parameters
        ----------
        domainId : str
            The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            matching domain identifier.
        id : str
            The adapter ID.
        reply : LookupReplyPrx | None
            The proxy of the LookupReply interface that should be used to send the reply if a matching
            adapter is found. The reply proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Lookup._op_findAdapterById.invokeAsync(self, ((domainId, id, reply), context))

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
        return "::IceDiscovery::Lookup"

IcePy.defineProxy("::IceDiscovery::Lookup", LookupPrx)

class Lookup(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceDiscovery::Lookup", )
    _op_findObjectById: IcePy.Operation
    _op_findAdapterById: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceDiscovery::Lookup"

    @abstractmethod
    def findObjectById(self, domainId: str, id: Identity, reply: LookupReplyPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Finds a well-known Ice object.
        
        Parameters
        ----------
        domainId : str
            The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            matching domain identifier.
        id : Identity
            The well-known object identity.
        reply : LookupReplyPrx | None
            The proxy of the LookupReply interface that should be used to send the reply if a matching
            object is found. The reply proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def findAdapterById(self, domainId: str, id: str, reply: LookupReplyPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Finds an object adapter.
        
        Parameters
        ----------
        domainId : str
            The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
            matching domain identifier.
        id : str
            The adapter ID.
        reply : LookupReplyPrx | None
            The proxy of the LookupReply interface that should be used to send the reply if a matching
            adapter is found. The reply proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

Lookup._op_findObjectById = IcePy.Operation(
    "findObjectById",
    "findObjectById",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), _Ice_Identity_t, False, 0), ((), _IceDiscovery_LookupReplyPrx_t, False, 0)),
    (),
    None,
    ())

Lookup._op_findAdapterById = IcePy.Operation(
    "findAdapterById",
    "findAdapterById",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), _IceDiscovery_LookupReplyPrx_t, False, 0)),
    (),
    None,
    ())

__all__ = ["Lookup", "LookupPrx", "_IceDiscovery_LookupPrx_t"]
