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

from Ice.StringSeq import _Ice_StringSeq_t

from IceGrid.LoadInfo import _IceGrid_LoadInfo_t

from IceGrid.NodeObserver_forward import _IceGrid_NodeObserverPrx_t

from IceGrid.NodeSession_forward import _IceGrid_NodeSessionPrx_t

from IceGrid.ReplicaObserver_forward import _IceGrid_ReplicaObserverPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceGrid.LoadInfo import LoadInfo
    from IceGrid.NodeObserver import NodeObserverPrx
    from IceGrid.ReplicaObserver import ReplicaObserverPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class NodeSessionPrx(ObjectPrx):

    def keepAlive(self, load: LoadInfo, context: dict[str, str] | None = None) -> None:
        """
        The node call this method to keep the session alive.
        
        Parameters
        ----------
        load : LoadInfo
        context : dict[str, str]
            The request context for the invocation.
        """
        return NodeSession._op_keepAlive.invoke(self, ((load, ), context))

    def keepAliveAsync(self, load: LoadInfo, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        The node call this method to keep the session alive.
        
        Parameters
        ----------
        load : LoadInfo
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return NodeSession._op_keepAlive.invokeAsync(self, ((load, ), context))

    def setReplicaObserver(self, observer: ReplicaObserverPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
        It only calls this for the session with the master.
        
        Parameters
        ----------
        observer : ReplicaObserverPrx | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return NodeSession._op_setReplicaObserver.invoke(self, ((observer, ), context))

    def setReplicaObserverAsync(self, observer: ReplicaObserverPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
        It only calls this for the session with the master.
        
        Parameters
        ----------
        observer : ReplicaObserverPrx | None
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return NodeSession._op_setReplicaObserver.invokeAsync(self, ((observer, ), context))

    def getTimeout(self, context: dict[str, str] | None = None) -> int:
        """
        Return the node session timeout.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        int
        """
        return NodeSession._op_getTimeout.invoke(self, ((), context))

    def getTimeoutAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        """
        Return the node session timeout.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[int]
        """
        return NodeSession._op_getTimeout.invokeAsync(self, ((), context))

    def getObserver(self, context: dict[str, str] | None = None) -> NodeObserverPrx | None:
        """
        Return the node observer.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        NodeObserverPrx | None
        """
        return NodeSession._op_getObserver.invoke(self, ((), context))

    def getObserverAsync(self, context: dict[str, str] | None = None) -> Awaitable[NodeObserverPrx | None]:
        """
        Return the node observer.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[NodeObserverPrx | None]
        """
        return NodeSession._op_getObserver.invokeAsync(self, ((), context))

    def loadServers(self, context: dict[str, str] | None = None) -> None:
        """
        Ask the registry to load the servers on the node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return NodeSession._op_loadServers.invoke(self, ((), context))

    def loadServersAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Ask the registry to load the servers on the node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return NodeSession._op_loadServers.invokeAsync(self, ((), context))

    def getServers(self, context: dict[str, str] | None = None) -> list[str]:
        """
        Get the name of the servers deployed on the node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        list[str]
        """
        return NodeSession._op_getServers.invoke(self, ((), context))

    def getServersAsync(self, context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        """
        Get the name of the servers deployed on the node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[list[str]]
        """
        return NodeSession._op_getServers.invokeAsync(self, ((), context))

    def waitForApplicationUpdate(self, application: str, revision: int, context: dict[str, str] | None = None) -> None:
        """
        Wait for the application update to complete (the application is completely updated once all the registry
        replicas have been updated). This is used by the node to ensure that before to start a server all the
        replicas have the up-to-date descriptor of the server.
        
        Parameters
        ----------
        application : str
        revision : int
        context : dict[str, str]
            The request context for the invocation.
        """
        return NodeSession._op_waitForApplicationUpdate.invoke(self, ((application, revision), context))

    def waitForApplicationUpdateAsync(self, application: str, revision: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Wait for the application update to complete (the application is completely updated once all the registry
        replicas have been updated). This is used by the node to ensure that before to start a server all the
        replicas have the up-to-date descriptor of the server.
        
        Parameters
        ----------
        application : str
        revision : int
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return NodeSession._op_waitForApplicationUpdate.invokeAsync(self, ((application, revision), context))

    def destroy(self, context: dict[str, str] | None = None) -> None:
        """
        Destroy the session.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return NodeSession._op_destroy.invoke(self, ((), context))

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
        return NodeSession._op_destroy.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> NodeSessionPrx | None:
        return checkedCast(NodeSessionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[NodeSessionPrx | None ]:
        return checkedCastAsync(NodeSessionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> NodeSessionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> NodeSessionPrx | None:
        return uncheckedCast(NodeSessionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::NodeSession"

IcePy.defineProxy("::IceGrid::NodeSession", NodeSessionPrx)

class NodeSession(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::NodeSession", )
    _op_keepAlive: IcePy.Operation
    _op_setReplicaObserver: IcePy.Operation
    _op_getTimeout: IcePy.Operation
    _op_getObserver: IcePy.Operation
    _op_loadServers: IcePy.Operation
    _op_getServers: IcePy.Operation
    _op_waitForApplicationUpdate: IcePy.Operation
    _op_destroy: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::NodeSession"

    @abstractmethod
    def keepAlive(self, load: LoadInfo, current: Current) -> None | Awaitable[None]:
        """
        The node call this method to keep the session alive.
        
        Parameters
        ----------
        load : LoadInfo
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def setReplicaObserver(self, observer: ReplicaObserverPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Set the replica observer. The node calls this method when it's ready to receive notifications for the replicas.
        It only calls this for the session with the master.
        
        Parameters
        ----------
        observer : ReplicaObserverPrx | None
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
        Return the node session timeout.
        
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
    def getObserver(self, current: Current) -> NodeObserverPrx | None | Awaitable[NodeObserverPrx | None]:
        """
        Return the node observer.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        NodeObserverPrx | None | Awaitable[NodeObserverPrx | None]
        """
        pass

    @abstractmethod
    def loadServers(self, current: Current) -> None | Awaitable[None]:
        """
        Ask the registry to load the servers on the node.
        
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
    def getServers(self, current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        """
        Get the name of the servers deployed on the node.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        Sequence[str] | Awaitable[Sequence[str]]
        """
        pass

    @abstractmethod
    def waitForApplicationUpdate(self, application: str, revision: int, current: Current) -> None | Awaitable[None]:
        """
        Wait for the application update to complete (the application is completely updated once all the registry
        replicas have been updated). This is used by the node to ensure that before to start a server all the
        replicas have the up-to-date descriptor of the server.
        
        Parameters
        ----------
        application : str
        revision : int
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

NodeSession._op_keepAlive = IcePy.Operation(
    "keepAlive",
    "keepAlive",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_LoadInfo_t, False, 0),),
    (),
    None,
    ())

NodeSession._op_setReplicaObserver = IcePy.Operation(
    "setReplicaObserver",
    "setReplicaObserver",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_ReplicaObserverPrx_t, False, 0),),
    (),
    None,
    ())

NodeSession._op_getTimeout = IcePy.Operation(
    "getTimeout",
    "getTimeout",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

NodeSession._op_getObserver = IcePy.Operation(
    "getObserver",
    "getObserver",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceGrid_NodeObserverPrx_t, False, 0),
    ())

NodeSession._op_loadServers = IcePy.Operation(
    "loadServers",
    "loadServers",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

NodeSession._op_getServers = IcePy.Operation(
    "getServers",
    "getServers",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _Ice_StringSeq_t, False, 0),
    ())

NodeSession._op_waitForApplicationUpdate = IcePy.Operation(
    "waitForApplicationUpdate",
    "waitForApplicationUpdate",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    ())

NodeSession._op_destroy = IcePy.Operation(
    "destroy",
    "destroy",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["NodeSession", "NodeSessionPrx", "_IceGrid_NodeSessionPrx_t"]
