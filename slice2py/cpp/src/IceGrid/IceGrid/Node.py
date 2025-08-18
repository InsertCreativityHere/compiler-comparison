# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Ice.StringSeq import _Ice_StringSeq_t

from IceGrid.AdapterPrxDict import _IceGrid_AdapterPrxDict_t

from IceGrid.DeploymentException import _IceGrid_DeploymentException_t

from IceGrid.FileNotAvailableException import _IceGrid_FileNotAvailableException_t

from IceGrid.FileReader import FileReader
from IceGrid.FileReader import FileReaderPrx

from IceGrid.InternalRegistryPrxSeq import _IceGrid_InternalRegistryPrxSeq_t

from IceGrid.InternalRegistry_forward import _IceGrid_InternalRegistryPrx_t

from IceGrid.InternalServerDescriptor_forward import _IceGrid_InternalServerDescriptor_t

from IceGrid.LoadInfo import _IceGrid_LoadInfo_t

from IceGrid.Node_forward import _IceGrid_NodePrx_t

from IceGrid.ReplicaObserver import ReplicaObserver
from IceGrid.ReplicaObserver import ReplicaObserverPrx

from IceGrid.Server_forward import _IceGrid_ServerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from IceGrid.Adapter import AdapterPrx
    from IceGrid.InternalRegistry import InternalRegistryPrx
    from IceGrid.InternalServerDescriptor import InternalServerDescriptor
    from IceGrid.LoadInfo import LoadInfo
    from IceGrid.Server import ServerPrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class NodePrx(FileReaderPrx, ReplicaObserverPrx):

    def loadServer(self, svr: InternalServerDescriptor | None, replicaName: str, context: dict[str, str] | None = None) -> tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]:
        """
        Load the given server. If the server resources weren't already created (database environment directories,
        property files, etc), they will be created. The returned proxy is never null.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]
        
            A tuple containing:
                - ServerPrx | None
                - dict[str, AdapterPrx | None]
                - int
                - int
        """
        return Node._op_loadServer.invoke(self, ((svr, replicaName), context))

    def loadServerAsync(self, svr: InternalServerDescriptor | None, replicaName: str, context: dict[str, str] | None = None) -> Awaitable[tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]]:
        """
        Load the given server. If the server resources weren't already created (database environment directories,
        property files, etc), they will be created. The returned proxy is never null.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]]
        
            A tuple containing:
                - ServerPrx | None
                - dict[str, AdapterPrx | None]
                - int
                - int
        """
        return Node._op_loadServer.invokeAsync(self, ((svr, replicaName), context))

    def loadServerWithoutRestart(self, svr: InternalServerDescriptor | None, replicaName: str, context: dict[str, str] | None = None) -> tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]:
        """
        Load the given server and ensure the server won't be restarted. If the server resources weren't already created
        (database environment directories, property files, etc), they will be created. If the server can't be updated
        without a restart, a DeploymentException is raised. The returned proxy is never null.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]
        
            A tuple containing:
                - ServerPrx | None
                - dict[str, AdapterPrx | None]
                - int
                - int
        """
        return Node._op_loadServerWithoutRestart.invoke(self, ((svr, replicaName), context))

    def loadServerWithoutRestartAsync(self, svr: InternalServerDescriptor | None, replicaName: str, context: dict[str, str] | None = None) -> Awaitable[tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]]:
        """
        Load the given server and ensure the server won't be restarted. If the server resources weren't already created
        (database environment directories, property files, etc), they will be created. If the server can't be updated
        without a restart, a DeploymentException is raised. The returned proxy is never null.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[tuple[ServerPrx | None, dict[str, AdapterPrx | None], int, int]]
        
            A tuple containing:
                - ServerPrx | None
                - dict[str, AdapterPrx | None]
                - int
                - int
        """
        return Node._op_loadServerWithoutRestart.invokeAsync(self, ((svr, replicaName), context))

    def destroyServer(self, name: str, uuid: str, revision: int, replicaName: str, context: dict[str, str] | None = None) -> None:
        """
        Destroy the given server.
        
        Parameters
        ----------
        name : str
        uuid : str
        revision : int
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        """
        return Node._op_destroyServer.invoke(self, ((name, uuid, revision, replicaName), context))

    def destroyServerAsync(self, name: str, uuid: str, revision: int, replicaName: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Destroy the given server.
        
        Parameters
        ----------
        name : str
        uuid : str
        revision : int
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_destroyServer.invokeAsync(self, ((name, uuid, revision, replicaName), context))

    def destroyServerWithoutRestart(self, name: str, uuid: str, revision: int, replicaName: str, context: dict[str, str] | None = None) -> None:
        """
        Destroy the server if it's not active.
        
        Parameters
        ----------
        name : str
        uuid : str
        revision : int
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        """
        return Node._op_destroyServerWithoutRestart.invoke(self, ((name, uuid, revision, replicaName), context))

    def destroyServerWithoutRestartAsync(self, name: str, uuid: str, revision: int, replicaName: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Destroy the server if it's not active.
        
        Parameters
        ----------
        name : str
        uuid : str
        revision : int
        replicaName : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_destroyServerWithoutRestart.invokeAsync(self, ((name, uuid, revision, replicaName), context))

    def registerWithReplica(self, replica: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Establish a session to the given replica, this method only returns once the registration was attempted (unlike
        replicaAdded below).
        
        Parameters
        ----------
        replica : InternalRegistryPrx | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return Node._op_registerWithReplica.invoke(self, ((replica, ), context))

    def registerWithReplicaAsync(self, replica: InternalRegistryPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Establish a session to the given replica, this method only returns once the registration was attempted (unlike
        replicaAdded below).
        
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
        return Node._op_registerWithReplica.invokeAsync(self, ((replica, ), context))

    def getName(self, context: dict[str, str] | None = None) -> str:
        """
        Get the node name.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        str
        """
        return Node._op_getName.invoke(self, ((), context))

    def getNameAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        """
        Get the node name.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[str]
        """
        return Node._op_getName.invokeAsync(self, ((), context))

    def getHostname(self, context: dict[str, str] | None = None) -> str:
        """
        Get the node hostname.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        str
        """
        return Node._op_getHostname.invoke(self, ((), context))

    def getHostnameAsync(self, context: dict[str, str] | None = None) -> Awaitable[str]:
        """
        Get the node hostname.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[str]
        """
        return Node._op_getHostname.invokeAsync(self, ((), context))

    def getLoad(self, context: dict[str, str] | None = None) -> LoadInfo:
        """
        Get the node load.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        LoadInfo
        """
        return Node._op_getLoad.invoke(self, ((), context))

    def getLoadAsync(self, context: dict[str, str] | None = None) -> Awaitable[LoadInfo]:
        """
        Get the node load.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[LoadInfo]
        """
        return Node._op_getLoad.invokeAsync(self, ((), context))

    def getProcessorSocketCount(self, context: dict[str, str] | None = None) -> int:
        """
        Get the number of processor sockets for the machine where this node is running.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        int
        """
        return Node._op_getProcessorSocketCount.invoke(self, ((), context))

    def getProcessorSocketCountAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        """
        Get the number of processor sockets for the machine where this node is running.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[int]
        """
        return Node._op_getProcessorSocketCount.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        """
        Shutdown the node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return Node._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Shutdown the node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> NodePrx | None:
        return checkedCast(NodePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[NodePrx | None ]:
        return checkedCastAsync(NodePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> NodePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> NodePrx | None:
        return uncheckedCast(NodePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::Node"

IcePy.defineProxy("::IceGrid::Node", NodePrx)

class Node(FileReader, ReplicaObserver, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::FileReader", "::IceGrid::Node", "::IceGrid::ReplicaObserver", )
    _op_loadServer: IcePy.Operation
    _op_loadServerWithoutRestart: IcePy.Operation
    _op_destroyServer: IcePy.Operation
    _op_destroyServerWithoutRestart: IcePy.Operation
    _op_registerWithReplica: IcePy.Operation
    _op_getName: IcePy.Operation
    _op_getHostname: IcePy.Operation
    _op_getLoad: IcePy.Operation
    _op_getProcessorSocketCount: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::Node"

    @abstractmethod
    def loadServer(self, svr: InternalServerDescriptor | None, replicaName: str, current: Current) -> tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int] | Awaitable[tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int]]:
        """
        Load the given server. If the server resources weren't already created (database environment directories,
        property files, etc), they will be created. The returned proxy is never null.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        replicaName : str
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int] | Awaitable[tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int]]
        
            A tuple containing:
                - ServerPrx | None
                - Mapping[str, AdapterPrx | None]
                - int
                - int
        """
        pass

    @abstractmethod
    def loadServerWithoutRestart(self, svr: InternalServerDescriptor | None, replicaName: str, current: Current) -> tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int] | Awaitable[tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int]]:
        """
        Load the given server and ensure the server won't be restarted. If the server resources weren't already created
        (database environment directories, property files, etc), they will be created. If the server can't be updated
        without a restart, a DeploymentException is raised. The returned proxy is never null.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        replicaName : str
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int] | Awaitable[tuple[ServerPrx | None, Mapping[str, AdapterPrx | None], int, int]]
        
            A tuple containing:
                - ServerPrx | None
                - Mapping[str, AdapterPrx | None]
                - int
                - int
        """
        pass

    @abstractmethod
    def destroyServer(self, name: str, uuid: str, revision: int, replicaName: str, current: Current) -> None | Awaitable[None]:
        """
        Destroy the given server.
        
        Parameters
        ----------
        name : str
        uuid : str
        revision : int
        replicaName : str
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def destroyServerWithoutRestart(self, name: str, uuid: str, revision: int, replicaName: str, current: Current) -> None | Awaitable[None]:
        """
        Destroy the server if it's not active.
        
        Parameters
        ----------
        name : str
        uuid : str
        revision : int
        replicaName : str
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def registerWithReplica(self, replica: InternalRegistryPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Establish a session to the given replica, this method only returns once the registration was attempted (unlike
        replicaAdded below).
        
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
    def getName(self, current: Current) -> str | Awaitable[str]:
        """
        Get the node name.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        str | Awaitable[str]
        """
        pass

    @abstractmethod
    def getHostname(self, current: Current) -> str | Awaitable[str]:
        """
        Get the node hostname.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        str | Awaitable[str]
        """
        pass

    @abstractmethod
    def getLoad(self, current: Current) -> LoadInfo | Awaitable[LoadInfo]:
        """
        Get the node load.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        LoadInfo | Awaitable[LoadInfo]
        """
        pass

    @abstractmethod
    def getProcessorSocketCount(self, current: Current) -> int | Awaitable[int]:
        """
        Get the number of processor sockets for the machine where this node is running.
        
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
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        """
        Shutdown the node.
        
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

Node._op_loadServer = IcePy.Operation(
    "loadServer",
    "loadServer",
    OperationMode.Idempotent,
    None,
    (),
    (((), _IceGrid_InternalServerDescriptor_t, False, 0), ((), IcePy._t_string, False, 0)),
    (((), _IceGrid_AdapterPrxDict_t, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    ((), _IceGrid_ServerPrx_t, False, 0),
    (_IceGrid_DeploymentException_t,))

Node._op_loadServerWithoutRestart = IcePy.Operation(
    "loadServerWithoutRestart",
    "loadServerWithoutRestart",
    OperationMode.Idempotent,
    None,
    (),
    (((), _IceGrid_InternalServerDescriptor_t, False, 0), ((), IcePy._t_string, False, 0)),
    (((), _IceGrid_AdapterPrxDict_t, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    ((), _IceGrid_ServerPrx_t, False, 0),
    (_IceGrid_DeploymentException_t,))

Node._op_destroyServer = IcePy.Operation(
    "destroyServer",
    "destroyServer",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    (_IceGrid_DeploymentException_t,))

Node._op_destroyServerWithoutRestart = IcePy.Operation(
    "destroyServerWithoutRestart",
    "destroyServerWithoutRestart",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    (_IceGrid_DeploymentException_t,))

Node._op_registerWithReplica = IcePy.Operation(
    "registerWithReplica",
    "registerWithReplica",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalRegistryPrx_t, False, 0),),
    (),
    None,
    ())

Node._op_getName = IcePy.Operation(
    "getName",
    "getName",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

Node._op_getHostname = IcePy.Operation(
    "getHostname",
    "getHostname",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_string, False, 0),
    ())

Node._op_getLoad = IcePy.Operation(
    "getLoad",
    "getLoad",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceGrid_LoadInfo_t, False, 0),
    ())

Node._op_getProcessorSocketCount = IcePy.Operation(
    "getProcessorSocketCount",
    "getProcessorSocketCount",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

Node._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Node", "NodePrx", "_IceGrid_NodePrx_t"]
