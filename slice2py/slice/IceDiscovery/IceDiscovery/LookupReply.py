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

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from IceDiscovery.LookupReply_forward import _IceDiscovery_LookupReplyPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from collections.abc import Awaitable
    from collections.abc import Sequence


class LookupReplyPrx(ObjectPrx):

    def foundObjectById(self, id: Identity, prx: ObjectPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Provides a reply to a :meth:`IceDiscovery.LookupPrx.findObjectById` request.
        
        Parameters
        ----------
        id : Identity
            The identity of the object.
        prx : ObjectPrx | None
            The proxy of the object. This proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        """
        return LookupReply._op_foundObjectById.invoke(self, ((id, prx), context))

    def foundObjectByIdAsync(self, id: Identity, prx: ObjectPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Provides a reply to a :meth:`IceDiscovery.LookupPrx.findObjectById` request.
        
        Parameters
        ----------
        id : Identity
            The identity of the object.
        prx : ObjectPrx | None
            The proxy of the object. This proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return LookupReply._op_foundObjectById.invokeAsync(self, ((id, prx), context))

    def foundAdapterById(self, id: str, prx: ObjectPrx | None, isReplicaGroup: bool, context: dict[str, str] | None = None) -> None:
        """
        Provides a reply to a :meth:`IceDiscovery.LookupPrx.findAdapterById` request.
        
        Parameters
        ----------
        id : str
            The adapter ID.
        prx : ObjectPrx | None
            The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
            endpoints. This proxy is never null.
        isReplicaGroup : bool
            Indicates whether the adapter is a member of a replica group.
        context : dict[str, str]
            The request context for the invocation.
        """
        return LookupReply._op_foundAdapterById.invoke(self, ((id, prx, isReplicaGroup), context))

    def foundAdapterByIdAsync(self, id: str, prx: ObjectPrx | None, isReplicaGroup: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Provides a reply to a :meth:`IceDiscovery.LookupPrx.findAdapterById` request.
        
        Parameters
        ----------
        id : str
            The adapter ID.
        prx : ObjectPrx | None
            The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
            endpoints. This proxy is never null.
        isReplicaGroup : bool
            Indicates whether the adapter is a member of a replica group.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return LookupReply._op_foundAdapterById.invokeAsync(self, ((id, prx, isReplicaGroup), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> LookupReplyPrx | None:
        return checkedCast(LookupReplyPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[LookupReplyPrx | None ]:
        return checkedCastAsync(LookupReplyPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> LookupReplyPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> LookupReplyPrx | None:
        return uncheckedCast(LookupReplyPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceDiscovery::LookupReply"

IcePy.defineProxy("::IceDiscovery::LookupReply", LookupReplyPrx)

class LookupReply(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceDiscovery::LookupReply", )
    _op_foundObjectById: IcePy.Operation
    _op_foundAdapterById: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceDiscovery::LookupReply"

    @abstractmethod
    def foundObjectById(self, id: Identity, prx: ObjectPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Provides a reply to a :meth:`IceDiscovery.LookupPrx.findObjectById` request.
        
        Parameters
        ----------
        id : Identity
            The identity of the object.
        prx : ObjectPrx | None
            The proxy of the object. This proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def foundAdapterById(self, id: str, prx: ObjectPrx | None, isReplicaGroup: bool, current: Current) -> None | Awaitable[None]:
        """
        Provides a reply to a :meth:`IceDiscovery.LookupPrx.findAdapterById` request.
        
        Parameters
        ----------
        id : str
            The adapter ID.
        prx : ObjectPrx | None
            The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
            endpoints. This proxy is never null.
        isReplicaGroup : bool
            Indicates whether the adapter is a member of a replica group.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

LookupReply._op_foundObjectById = IcePy.Operation(
    "foundObjectById",
    "foundObjectById",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_Identity_t, False, 0), ((), _Ice_ObjectPrx_t, False, 0)),
    (),
    None,
    ())

LookupReply._op_foundAdapterById = IcePy.Operation(
    "foundAdapterById",
    "foundAdapterById",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), _Ice_ObjectPrx_t, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    None,
    ())

__all__ = ["LookupReply", "LookupReplyPrx", "_IceDiscovery_LookupReplyPrx_t"]
