# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Ice.StringSeq import _Ice_StringSeq_t

from IceGrid.AdapterInfoSeq import _IceGrid_AdapterInfoSeq_t

from IceGrid.ApplicationInfoSeq import _IceGrid_ApplicationInfoSeq_t

from IceGrid.FileNotAvailableException import _IceGrid_FileNotAvailableException_t

from IceGrid.FileReader import FileReader
from IceGrid.FileReader import FileReaderPrx

from IceGrid.InternalNodeInfo_forward import _IceGrid_InternalNodeInfo_t

from IceGrid.InternalRegistryPrxSeq import _IceGrid_InternalRegistryPrxSeq_t

from IceGrid.InternalRegistry_forward import _IceGrid_InternalRegistryPrx_t

from IceGrid.InternalReplicaInfo_forward import _IceGrid_InternalReplicaInfo_t

from IceGrid.LoadInfo import _IceGrid_LoadInfo_t

from IceGrid.NodeActiveException import _IceGrid_NodeActiveException_t

from IceGrid.NodePrxSeq import _IceGrid_NodePrxSeq_t

from IceGrid.NodeSession_forward import _IceGrid_NodeSessionPrx_t

from IceGrid.Node_forward import _IceGrid_NodePrx_t

from IceGrid.ObjectInfoSeq import _IceGrid_ObjectInfoSeq_t

from IceGrid.PermissionDeniedException import _IceGrid_PermissionDeniedException_t

from IceGrid.ReplicaActiveException import _IceGrid_ReplicaActiveException_t

from IceGrid.ReplicaSession_forward import _IceGrid_ReplicaSessionPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from IceGrid.AdapterInfo import AdapterInfo
    from IceGrid.ApplicationInfo import ApplicationInfo
    from IceGrid.InternalNodeInfo import InternalNodeInfo
    from IceGrid.InternalRegistry import InternalRegistryPrx
    from IceGrid.InternalReplicaInfo import InternalReplicaInfo
    from IceGrid.LoadInfo import LoadInfo
    from IceGrid.Node import NodePrx
    from IceGrid.NodeSession import NodeSessionPrx
    from IceGrid.ObjectInfo import ObjectInfo
    from IceGrid.ReplicaSession import ReplicaSessionPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class InternalRegistryPrx(FileReaderPrx):

    def registerNode(self, info: InternalNodeInfo | None, prx: NodePrx | None, loadInf: LoadInfo, context: dict[str, str] | None = None) -> NodeSessionPrx | None:
        """
        Register a node with the registry. If a node with the same name is already registered,
        this operation overrides the existing registration only when the previously
        registered node is not active.
        
        Parameters
        ----------
        info : InternalNodeInfo | None
            Some information on the node.
        prx : NodePrx | None
            The proxy of the node.
        loadInf : LoadInfo
            The load information of the node.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        NodeSessionPrx | None
            The node session proxy.
        
        Raises
        ------
        NodeActiveException
            Raised if the node is already registered and currently active.
        """
        return InternalRegistry._op_registerNode.invoke(self, ((info, prx, loadInf), context))

    def registerNodeAsync(self, info: InternalNodeInfo | None, prx: NodePrx | None, loadInf: LoadInfo, context: dict[str, str] | None = None) -> Awaitable[NodeSessionPrx | None]:
        """
        Register a node with the registry. If a node with the same name is already registered,
        this operation overrides the existing registration only when the previously
        registered node is not active.
        
        Parameters
        ----------
        info : InternalNodeInfo | None
            Some information on the node.
        prx : NodePrx | None
            The proxy of the node.
        loadInf : LoadInfo
            The load information of the node.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[NodeSessionPrx | None]
            The node session proxy.
        """
        return InternalRegistry._op_registerNode.invokeAsync(self, ((info, prx, loadInf), context))

    def registerReplica(self, info: InternalReplicaInfo | None, prx: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> ReplicaSessionPrx | None:
        """
        Register a replica with the registry. If a replica with the same name is already registered,
        this operation overrides the existing registration only when the previously
        registered node is not active.
        
        Parameters
        ----------
        info : InternalReplicaInfo | None
            Some information on the replica.
        prx : InternalRegistryPrx | None
            The proxy of the replica.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        ReplicaSessionPrx | None
            The replica session proxy.
        
        Raises
        ------
        ReplicaActiveException
            Raised if the replica is already registered and currently active.
        """
        return InternalRegistry._op_registerReplica.invoke(self, ((info, prx), context))

    def registerReplicaAsync(self, info: InternalReplicaInfo | None, prx: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> Awaitable[ReplicaSessionPrx | None]:
        """
        Register a replica with the registry. If a replica with the same name is already registered,
        this operation overrides the existing registration only when the previously
        registered node is not active.
        
        Parameters
        ----------
        info : InternalReplicaInfo | None
            Some information on the replica.
        prx : InternalRegistryPrx | None
            The proxy of the replica.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[ReplicaSessionPrx | None]
            The replica session proxy.
        """
        return InternalRegistry._op_registerReplica.invokeAsync(self, ((info, prx), context))

    def registerWithReplica(self, prx: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Create a session with the given registry replica. This method returns only once the session creation has been
        attempted.
        
        Parameters
        ----------
        prx : InternalRegistryPrx | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return InternalRegistry._op_registerWithReplica.invoke(self, ((prx, ), context))

    def registerWithReplicaAsync(self, prx: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Create a session with the given registry replica. This method returns only once the session creation has been
        attempted.
        
        Parameters
        ----------
        prx : InternalRegistryPrx | None
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return InternalRegistry._op_registerWithReplica.invokeAsync(self, ((prx, ), context))

    def getNodes(self, context: dict[str, str] | None = None) -> list[NodePrx | None]:
        """
        Return the proxies of all the nodes known by this registry.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        list[NodePrx | None]
        """
        return InternalRegistry._op_getNodes.invoke(self, ((), context))

    def getNodesAsync(self, context: dict[str, str] | None = None) -> Awaitable[list[NodePrx | None]]:
        """
        Return the proxies of all the nodes known by this registry.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[list[NodePrx | None]]
        """
        return InternalRegistry._op_getNodes.invokeAsync(self, ((), context))

    def getReplicas(self, context: dict[str, str] | None = None) -> list[InternalRegistryPrx | None]:
        """
        Return the proxies of all the registry replicas known by this registry.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        list[InternalRegistryPrx | None]
        """
        return InternalRegistry._op_getReplicas.invoke(self, ((), context))

    def getReplicasAsync(self, context: dict[str, str] | None = None) -> Awaitable[list[InternalRegistryPrx | None]]:
        """
        Return the proxies of all the registry replicas known by this registry.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[list[InternalRegistryPrx | None]]
        """
        return InternalRegistry._op_getReplicas.invokeAsync(self, ((), context))

    def getApplications(self, context: dict[str, str] | None = None) -> tuple[list[ApplicationInfo], int]:
        """
        Return applications, adapters, objects from this replica.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        tuple[list[ApplicationInfo], int]
        
            A tuple containing:
                - list[ApplicationInfo]
                - int
        """
        return InternalRegistry._op_getApplications.invoke(self, ((), context))

    def getApplicationsAsync(self, context: dict[str, str] | None = None) -> Awaitable[tuple[list[ApplicationInfo], int]]:
        """
        Return applications, adapters, objects from this replica.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[tuple[list[ApplicationInfo], int]]
        
            A tuple containing:
                - list[ApplicationInfo]
                - int
        """
        return InternalRegistry._op_getApplications.invokeAsync(self, ((), context))

    def getAdapters(self, context: dict[str, str] | None = None) -> tuple[list[AdapterInfo], int]:
        return InternalRegistry._op_getAdapters.invoke(self, ((), context))

    def getAdaptersAsync(self, context: dict[str, str] | None = None) -> Awaitable[tuple[list[AdapterInfo], int]]:
        return InternalRegistry._op_getAdapters.invokeAsync(self, ((), context))

    def getObjects(self, context: dict[str, str] | None = None) -> tuple[list[ObjectInfo], int]:
        return InternalRegistry._op_getObjects.invoke(self, ((), context))

    def getObjectsAsync(self, context: dict[str, str] | None = None) -> Awaitable[tuple[list[ObjectInfo], int]]:
        return InternalRegistry._op_getObjects.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        """
        Shutdown this registry.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return InternalRegistry._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Shutdown this registry.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return InternalRegistry._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> InternalRegistryPrx | None:
        return checkedCast(InternalRegistryPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[InternalRegistryPrx | None ]:
        return checkedCastAsync(InternalRegistryPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> InternalRegistryPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> InternalRegistryPrx | None:
        return uncheckedCast(InternalRegistryPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::InternalRegistry"

IcePy.defineProxy("::IceGrid::InternalRegistry", InternalRegistryPrx)

class InternalRegistry(FileReader, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::FileReader", "::IceGrid::InternalRegistry", )
    _op_registerNode: IcePy.Operation
    _op_registerReplica: IcePy.Operation
    _op_registerWithReplica: IcePy.Operation
    _op_getNodes: IcePy.Operation
    _op_getReplicas: IcePy.Operation
    _op_getApplications: IcePy.Operation
    _op_getAdapters: IcePy.Operation
    _op_getObjects: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::InternalRegistry"

    @abstractmethod
    def registerNode(self, info: InternalNodeInfo | None, prx: NodePrx | None, loadInf: LoadInfo, current: Current) -> NodeSessionPrx | None | Awaitable[NodeSessionPrx | None]:
        """
        Register a node with the registry. If a node with the same name is already registered,
        this operation overrides the existing registration only when the previously
        registered node is not active.
        
        Parameters
        ----------
        info : InternalNodeInfo | None
            Some information on the node.
        prx : NodePrx | None
            The proxy of the node.
        loadInf : LoadInfo
            The load information of the node.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        NodeSessionPrx | None | Awaitable[NodeSessionPrx | None]
            The node session proxy.
        
        Raises
        ------
        NodeActiveException
            Raised if the node is already registered and currently active.
        """
        pass

    @abstractmethod
    def registerReplica(self, info: InternalReplicaInfo | None, prx: InternalRegistryPrx | None, current: Current) -> ReplicaSessionPrx | None | Awaitable[ReplicaSessionPrx | None]:
        """
        Register a replica with the registry. If a replica with the same name is already registered,
        this operation overrides the existing registration only when the previously
        registered node is not active.
        
        Parameters
        ----------
        info : InternalReplicaInfo | None
            Some information on the replica.
        prx : InternalRegistryPrx | None
            The proxy of the replica.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        ReplicaSessionPrx | None | Awaitable[ReplicaSessionPrx | None]
            The replica session proxy.
        
        Raises
        ------
        ReplicaActiveException
            Raised if the replica is already registered and currently active.
        """
        pass

    @abstractmethod
    def registerWithReplica(self, prx: InternalRegistryPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Create a session with the given registry replica. This method returns only once the session creation has been
        attempted.
        
        Parameters
        ----------
        prx : InternalRegistryPrx | None
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def getNodes(self, current: Current) -> Sequence[NodePrx | None] | Awaitable[Sequence[NodePrx | None]]:
        """
        Return the proxies of all the nodes known by this registry.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        Sequence[NodePrx | None] | Awaitable[Sequence[NodePrx | None]]
        """
        pass

    @abstractmethod
    def getReplicas(self, current: Current) -> Sequence[InternalRegistryPrx | None] | Awaitable[Sequence[InternalRegistryPrx | None]]:
        """
        Return the proxies of all the registry replicas known by this registry.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        Sequence[InternalRegistryPrx | None] | Awaitable[Sequence[InternalRegistryPrx | None]]
        """
        pass

    @abstractmethod
    def getApplications(self, current: Current) -> tuple[Sequence[ApplicationInfo], int] | Awaitable[tuple[Sequence[ApplicationInfo], int]]:
        """
        Return applications, adapters, objects from this replica.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        tuple[Sequence[ApplicationInfo], int] | Awaitable[tuple[Sequence[ApplicationInfo], int]]
        
            A tuple containing:
                - Sequence[ApplicationInfo]
                - int
        """
        pass

    @abstractmethod
    def getAdapters(self, current: Current) -> tuple[Sequence[AdapterInfo], int] | Awaitable[tuple[Sequence[AdapterInfo], int]]:
        pass

    @abstractmethod
    def getObjects(self, current: Current) -> tuple[Sequence[ObjectInfo], int] | Awaitable[tuple[Sequence[ObjectInfo], int]]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        """
        Shutdown this registry.
        
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

InternalRegistry._op_registerNode = IcePy.Operation(
    "registerNode",
    "registerNode",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalNodeInfo_t, False, 0), ((), _IceGrid_NodePrx_t, False, 0), ((), _IceGrid_LoadInfo_t, False, 0)),
    (),
    ((), _IceGrid_NodeSessionPrx_t, False, 0),
    (_IceGrid_NodeActiveException_t, _IceGrid_PermissionDeniedException_t))

InternalRegistry._op_registerReplica = IcePy.Operation(
    "registerReplica",
    "registerReplica",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalReplicaInfo_t, False, 0), ((), _IceGrid_InternalRegistryPrx_t, False, 0)),
    (),
    ((), _IceGrid_ReplicaSessionPrx_t, False, 0),
    (_IceGrid_ReplicaActiveException_t, _IceGrid_PermissionDeniedException_t))

InternalRegistry._op_registerWithReplica = IcePy.Operation(
    "registerWithReplica",
    "registerWithReplica",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalRegistryPrx_t, False, 0),),
    (),
    None,
    ())

InternalRegistry._op_getNodes = IcePy.Operation(
    "getNodes",
    "getNodes",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceGrid_NodePrxSeq_t, False, 0),
    ())

InternalRegistry._op_getReplicas = IcePy.Operation(
    "getReplicas",
    "getReplicas",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceGrid_InternalRegistryPrxSeq_t, False, 0),
    ())

InternalRegistry._op_getApplications = IcePy.Operation(
    "getApplications",
    "getApplications",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (((), IcePy._t_long, False, 0),),
    ((), _IceGrid_ApplicationInfoSeq_t, False, 0),
    ())

InternalRegistry._op_getAdapters = IcePy.Operation(
    "getAdapters",
    "getAdapters",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (((), IcePy._t_long, False, 0),),
    ((), _IceGrid_AdapterInfoSeq_t, False, 0),
    ())

InternalRegistry._op_getObjects = IcePy.Operation(
    "getObjects",
    "getObjects",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (((), IcePy._t_long, False, 0),),
    ((), _IceGrid_ObjectInfoSeq_t, False, 0),
    ())

InternalRegistry._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["InternalRegistry", "InternalRegistryPrx", "_IceGrid_InternalRegistryPrx_t"]
