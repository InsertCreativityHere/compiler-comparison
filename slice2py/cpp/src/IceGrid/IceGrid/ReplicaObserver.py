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

from IceGrid.InternalRegistryPrxSeq import _IceGrid_InternalRegistryPrxSeq_t

from IceGrid.InternalRegistry_forward import _IceGrid_InternalRegistryPrx_t

from IceGrid.ReplicaObserver_forward import _IceGrid_ReplicaObserverPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceGrid.InternalRegistry import InternalRegistryPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ReplicaObserverPrx(ObjectPrx):

    def replicaInit(self, replicas: Sequence[InternalRegistryPrx | None], context: dict[str, str] | None = None) -> None:
        """
        Initialization of the replica observer.
        
        Parameters
        ----------
        replicas : Sequence[InternalRegistryPrx | None]
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaObserver._op_replicaInit.invoke(self, ((replicas, ), context))

    def replicaInitAsync(self, replicas: Sequence[InternalRegistryPrx | None], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Initialization of the replica observer.
        
        Parameters
        ----------
        replicas : Sequence[InternalRegistryPrx | None]
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_replicaInit.invokeAsync(self, ((replicas, ), context))

    def replicaAdded(self, replica: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Notification that a replica has been added. The node should establish a session with this new replica.
        
        Parameters
        ----------
        replica : InternalRegistryPrx | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaObserver._op_replicaAdded.invoke(self, ((replica, ), context))

    def replicaAddedAsync(self, replica: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Notification that a replica has been added. The node should establish a session with this new replica.
        
        Parameters
        ----------
        replica : InternalRegistryPrx | None
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_replicaAdded.invokeAsync(self, ((replica, ), context))

    def replicaRemoved(self, replica: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Notification that a replica has been removed. The node should destroy the session to this replica.
        
        Parameters
        ----------
        replica : InternalRegistryPrx | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaObserver._op_replicaRemoved.invoke(self, ((replica, ), context))

    def replicaRemovedAsync(self, replica: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Notification that a replica has been removed. The node should destroy the session to this replica.
        
        Parameters
        ----------
        replica : InternalRegistryPrx | None
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_replicaRemoved.invokeAsync(self, ((replica, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ReplicaObserverPrx | None:
        return checkedCast(ReplicaObserverPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ReplicaObserverPrx | None ]:
        return checkedCastAsync(ReplicaObserverPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ReplicaObserverPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ReplicaObserverPrx | None:
        return uncheckedCast(ReplicaObserverPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::ReplicaObserver"

IcePy.defineProxy("::IceGrid::ReplicaObserver", ReplicaObserverPrx)

class ReplicaObserver(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::ReplicaObserver", )
    _op_replicaInit: IcePy.Operation
    _op_replicaAdded: IcePy.Operation
    _op_replicaRemoved: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::ReplicaObserver"

    @abstractmethod
    def replicaInit(self, replicas: list[InternalRegistryPrx | None], current: Current) -> None | Awaitable[None]:
        """
        Initialization of the replica observer.
        
        Parameters
        ----------
        replicas : list[InternalRegistryPrx | None]
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def replicaAdded(self, replica: InternalRegistryPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Notification that a replica has been added. The node should establish a session with this new replica.
        
        Parameters
        ----------
        replica : InternalRegistryPrx | None
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def replicaRemoved(self, replica: InternalRegistryPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Notification that a replica has been removed. The node should destroy the session to this replica.
        
        Parameters
        ----------
        replica : InternalRegistryPrx | None
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

ReplicaObserver._op_replicaInit = IcePy.Operation(
    "replicaInit",
    "replicaInit",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalRegistryPrxSeq_t, False, 0),),
    (),
    None,
    ())

ReplicaObserver._op_replicaAdded = IcePy.Operation(
    "replicaAdded",
    "replicaAdded",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalRegistryPrx_t, False, 0),),
    (),
    None,
    ())

ReplicaObserver._op_replicaRemoved = IcePy.Operation(
    "replicaRemoved",
    "replicaRemoved",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalRegistryPrx_t, False, 0),),
    (),
    None,
    ())

__all__ = ["ReplicaObserver", "ReplicaObserverPrx", "_IceGrid_ReplicaObserverPrx_t"]
