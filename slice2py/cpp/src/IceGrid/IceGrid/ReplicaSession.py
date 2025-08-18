# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from IceGrid.AdapterExistsException import _IceGrid_AdapterExistsException_t

from IceGrid.AdapterNotExistException import _IceGrid_AdapterNotExistException_t

from IceGrid.DatabaseObserver_forward import _IceGrid_DatabaseObserverPrx_t

from IceGrid.DeploymentException import _IceGrid_DeploymentException_t

from IceGrid.ObjectInfoSeq import _IceGrid_ObjectInfoSeq_t

from IceGrid.ObserverAlreadyRegisteredException import _IceGrid_ObserverAlreadyRegisteredException_t

from IceGrid.ReplicaSession_forward import _IceGrid_ReplicaSessionPrx_t

from IceGrid.StringLongDict import _IceGrid_StringLongDict_t

from IceGrid.StringObjectProxyDict import _IceGrid_StringObjectProxyDict_t

from IceGrid.TopicName import _IceGrid_TopicName_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceGrid.DatabaseObserver import DatabaseObserverPrx
    from IceGrid.ObjectInfo import ObjectInfo
    from IceGrid.TopicName import TopicName
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class ReplicaSessionPrx(ObjectPrx):

    def keepAlive(self, context: dict[str, str] | None = None) -> None:
        """
        The replica call this method to keep the session alive.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaSession._op_keepAlive.invoke(self, ((), context))

    def keepAliveAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        The replica call this method to keep the session alive.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaSession._op_keepAlive.invokeAsync(self, ((), context))

    def getTimeout(self, context: dict[str, str] | None = None) -> int:
        """
        Return the replica session timeout.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        int
        """
        return ReplicaSession._op_getTimeout.invoke(self, ((), context))

    def getTimeoutAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        """
        Return the replica session timeout.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[int]
        """
        return ReplicaSession._op_getTimeout.invokeAsync(self, ((), context))

    def setDatabaseObserver(self, dbObs: DatabaseObserverPrx | None, serials: Mapping[str, int] | None = None, context: dict[str, str] | None = None) -> None:
        """
        Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
        
        Parameters
        ----------
        dbObs : DatabaseObserverPrx | None
        serials : Mapping[str, int] | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaSession._op_setDatabaseObserver.invoke(self, ((dbObs, serials), context))

    def setDatabaseObserverAsync(self, dbObs: DatabaseObserverPrx | None, serials: Mapping[str, int] | None = None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
        
        Parameters
        ----------
        dbObs : DatabaseObserverPrx | None
        serials : Mapping[str, int] | None
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaSession._op_setDatabaseObserver.invokeAsync(self, ((dbObs, serials), context))

    def setEndpoints(self, endpoints: Mapping[str, ObjectPrx | None], context: dict[str, str] | None = None) -> None:
        """
        This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
        for replicated objects (e.g.: IceGrid::Query object).
        
        Parameters
        ----------
        endpoints : Mapping[str, ObjectPrx | None]
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaSession._op_setEndpoints.invoke(self, ((endpoints, ), context))

    def setEndpointsAsync(self, endpoints: Mapping[str, ObjectPrx | None], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
        for replicated objects (e.g.: IceGrid::Query object).
        
        Parameters
        ----------
        endpoints : Mapping[str, ObjectPrx | None]
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaSession._op_setEndpoints.invokeAsync(self, ((endpoints, ), context))

    def registerWellKnownObjects(self, objects: Sequence[ObjectInfo], context: dict[str, str] | None = None) -> None:
        """
        Registers the replica well-known objects with the master.
        
        Parameters
        ----------
        objects : Sequence[ObjectInfo]
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaSession._op_registerWellKnownObjects.invoke(self, ((objects, ), context))

    def registerWellKnownObjectsAsync(self, objects: Sequence[ObjectInfo], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Registers the replica well-known objects with the master.
        
        Parameters
        ----------
        objects : Sequence[ObjectInfo]
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaSession._op_registerWellKnownObjects.invokeAsync(self, ((objects, ), context))

    def setAdapterDirectProxy(self, adapterId: str, replicaGroupId: str, proxy: ObjectPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
        with the locator registry interface.
        
        Parameters
        ----------
        adapterId : str
        replicaGroupId : str
        proxy : ObjectPrx | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaSession._op_setAdapterDirectProxy.invoke(self, ((adapterId, replicaGroupId, proxy), context))

    def setAdapterDirectProxyAsync(self, adapterId: str, replicaGroupId: str, proxy: ObjectPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
        with the locator registry interface.
        
        Parameters
        ----------
        adapterId : str
        replicaGroupId : str
        proxy : ObjectPrx | None
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaSession._op_setAdapterDirectProxy.invokeAsync(self, ((adapterId, replicaGroupId, proxy), context))

    def receivedUpdate(self, name: TopicName, serial: int, failure: str, context: dict[str, str] | None = None) -> None:
        """
        Notify the master that an update was received. The master might wait for replication updates to be received by
        all the replicas before to continue.
        
        Parameters
        ----------
        name : TopicName
        serial : int
        failure : str
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaSession._op_receivedUpdate.invoke(self, ((name, serial, failure), context))

    def receivedUpdateAsync(self, name: TopicName, serial: int, failure: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Notify the master that an update was received. The master might wait for replication updates to be received by
        all the replicas before to continue.
        
        Parameters
        ----------
        name : TopicName
        serial : int
        failure : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaSession._op_receivedUpdate.invokeAsync(self, ((name, serial, failure), context))

    def destroy(self, context: dict[str, str] | None = None) -> None:
        """
        Destroy the session.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return ReplicaSession._op_destroy.invoke(self, ((), context))

    def destroyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Destroy the session.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaSession._op_destroy.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ReplicaSessionPrx | None:
        return checkedCast(ReplicaSessionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ReplicaSessionPrx | None ]:
        return checkedCastAsync(ReplicaSessionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ReplicaSessionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ReplicaSessionPrx | None:
        return uncheckedCast(ReplicaSessionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::ReplicaSession"

IcePy.defineProxy("::IceGrid::ReplicaSession", ReplicaSessionPrx)

class ReplicaSession(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::ReplicaSession", )
    _op_keepAlive: IcePy.Operation
    _op_getTimeout: IcePy.Operation
    _op_setDatabaseObserver: IcePy.Operation
    _op_setEndpoints: IcePy.Operation
    _op_registerWellKnownObjects: IcePy.Operation
    _op_setAdapterDirectProxy: IcePy.Operation
    _op_receivedUpdate: IcePy.Operation
    _op_destroy: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::ReplicaSession"

    @abstractmethod
    def keepAlive(self, current: Current) -> None | Awaitable[None]:
        """
        The replica call this method to keep the session alive.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def getTimeout(self, current: Current) -> int | Awaitable[int]:
        """
        Return the replica session timeout.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        int | Awaitable[int]
        """
        pass

    @abstractmethod
    def setDatabaseObserver(self, dbObs: DatabaseObserverPrx | None, serials: dict[str, int] | None, current: Current) -> None | Awaitable[None]:
        """
        Set the database observer. Once the observer is subscribed, it will receive the database and database updates.
        
        Parameters
        ----------
        dbObs : DatabaseObserverPrx | None
        serials : dict[str, int] | None
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def setEndpoints(self, endpoints: dict[str, ObjectPrx | None], current: Current) -> None | Awaitable[None]:
        """
        This method sets the endpoints of the replica. This allows the master to create proxies with multiple endpoints
        for replicated objects (e.g.: IceGrid::Query object).
        
        Parameters
        ----------
        endpoints : dict[str, ObjectPrx | None]
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def registerWellKnownObjects(self, objects: list[ObjectInfo], current: Current) -> None | Awaitable[None]:
        """
        Registers the replica well-known objects with the master.
        
        Parameters
        ----------
        objects : list[ObjectInfo]
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def setAdapterDirectProxy(self, adapterId: str, replicaGroupId: str, proxy: ObjectPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Set the adapter direct proxy of the given adapter in the master. This is used to support dynamic registration
        with the locator registry interface.
        
        Parameters
        ----------
        adapterId : str
        replicaGroupId : str
        proxy : ObjectPrx | None
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def receivedUpdate(self, name: TopicName, serial: int, failure: str, current: Current) -> None | Awaitable[None]:
        """
        Notify the master that an update was received. The master might wait for replication updates to be received by
        all the replicas before to continue.
        
        Parameters
        ----------
        name : TopicName
        serial : int
        failure : str
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def destroy(self, current: Current) -> None | Awaitable[None]:
        """
        Destroy the session.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

ReplicaSession._op_keepAlive = IcePy.Operation(
    "keepAlive",
    "keepAlive",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

ReplicaSession._op_getTimeout = IcePy.Operation(
    "getTimeout",
    "getTimeout",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

ReplicaSession._op_setDatabaseObserver = IcePy.Operation(
    "setDatabaseObserver",
    "setDatabaseObserver",
    OperationMode.Idempotent,
    None,
    (),
    (((), _IceGrid_DatabaseObserverPrx_t, False, 0), ((), _IceGrid_StringLongDict_t, True, 1)),
    (),
    None,
    (_IceGrid_ObserverAlreadyRegisteredException_t, _IceGrid_DeploymentException_t))

ReplicaSession._op_setEndpoints = IcePy.Operation(
    "setEndpoints",
    "setEndpoints",
    OperationMode.Idempotent,
    None,
    (),
    (((), _IceGrid_StringObjectProxyDict_t, False, 0),),
    (),
    None,
    ())

ReplicaSession._op_registerWellKnownObjects = IcePy.Operation(
    "registerWellKnownObjects",
    "registerWellKnownObjects",
    OperationMode.Idempotent,
    None,
    (),
    (((), _IceGrid_ObjectInfoSeq_t, False, 0),),
    (),
    None,
    ())

ReplicaSession._op_setAdapterDirectProxy = IcePy.Operation(
    "setAdapterDirectProxy",
    "setAdapterDirectProxy",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), _Ice_ObjectPrx_t, False, 0)),
    (),
    None,
    (_IceGrid_AdapterNotExistException_t, _IceGrid_AdapterExistsException_t))

ReplicaSession._op_receivedUpdate = IcePy.Operation(
    "receivedUpdate",
    "receivedUpdate",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_TopicName_t, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

ReplicaSession._op_destroy = IcePy.Operation(
    "destroy",
    "destroy",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["ReplicaSession", "ReplicaSessionPrx", "_IceGrid_ReplicaSessionPrx_t"]
