# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.IntSeq import _Ice_IntSeq_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from IceStormElection.LogUpdate import _IceStormElection_LogUpdate_t

from IceStormElection.NodeInfoSeq import _IceStormElection_NodeInfoSeq_t

from IceStormElection.Node_forward import _IceStormElection_NodePrx_t

from IceStormElection.QueryInfo import _IceStormElection_QueryInfo_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceStormElection.LogUpdate import LogUpdate
    from IceStormElection.NodeInfo import NodeInfo
    from IceStormElection.QueryInfo import QueryInfo
    from collections.abc import Awaitable
    from collections.abc import Sequence


class NodePrx(ObjectPrx):

    def invitation(self, j: int, gn: str, context: dict[str, str] | None = None) -> None:
        """
        Invite the node into a group with the given coordinator and group name.
        
        Parameters
        ----------
        j : int
            The group coordinator.
        gn : str
            The group name.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Node._op_invitation.invoke(self, ((j, gn), context))

    def invitationAsync(self, j: int, gn: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Invite the node into a group with the given coordinator and group name.
        
        Parameters
        ----------
        j : int
            The group coordinator.
        gn : str
            The group name.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_invitation.invokeAsync(self, ((j, gn), context))

    def ready(self, j: int, gn: str, coordinator: ObjectPrx | None, max: int, generation: int, context: dict[str, str] | None = None) -> None:
        """
        Call from the group coordinator to a node to inform the node that the replica group is active.
        
        Parameters
        ----------
        j : int
            The group coordinator.
        gn : str
            The group name.
        coordinator : ObjectPrx | None
            The proxy to the coordinator.
        max : int
            The highest priority node seen by this replica group.
        generation : int
            The current generation count.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Node._op_ready.invoke(self, ((j, gn, coordinator, max, generation), context))

    def readyAsync(self, j: int, gn: str, coordinator: ObjectPrx | None, max: int, generation: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Call from the group coordinator to a node to inform the node that the replica group is active.
        
        Parameters
        ----------
        j : int
            The group coordinator.
        gn : str
            The group name.
        coordinator : ObjectPrx | None
            The proxy to the coordinator.
        max : int
            The highest priority node seen by this replica group.
        generation : int
            The current generation count.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_ready.invokeAsync(self, ((j, gn, coordinator, max, generation), context))

    def accept(self, j: int, gn: str, forwardedInvites: Sequence[int], observer: ObjectPrx | None, llu: LogUpdate, max: int, context: dict[str, str] | None = None) -> None:
        """
        Called to accept an invitation into the given group.
        
        Parameters
        ----------
        j : int
            The id of the node accepting the invitation.
        gn : str
            The group name.
        forwardedInvites : Sequence[int]
            The ids of the nodes to which invitations were forwarded.
        observer : ObjectPrx | None
            The observer.
        llu : LogUpdate
            The last log update for the given node.
        max : int
            The highest priority node seen by this replica group.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Node._op_accept.invoke(self, ((j, gn, forwardedInvites, observer, llu, max), context))

    def acceptAsync(self, j: int, gn: str, forwardedInvites: Sequence[int], observer: ObjectPrx | None, llu: LogUpdate, max: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Called to accept an invitation into the given group.
        
        Parameters
        ----------
        j : int
            The id of the node accepting the invitation.
        gn : str
            The group name.
        forwardedInvites : Sequence[int]
            The ids of the nodes to which invitations were forwarded.
        observer : ObjectPrx | None
            The observer.
        llu : LogUpdate
            The last log update for the given node.
        max : int
            The highest priority node seen by this replica group.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_accept.invokeAsync(self, ((j, gn, forwardedInvites, observer, llu, max), context))

    def areYouCoordinator(self, context: dict[str, str] | None = None) -> bool:
        """
        Determine if this node is a coordinator.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        bool
            ``true`` if the node is a coordinator, ``false`` otherwise.
        """
        return Node._op_areYouCoordinator.invoke(self, ((), context))

    def areYouCoordinatorAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        """
        Determine if this node is a coordinator.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[bool]
            ``true`` if the node is a coordinator, ``false`` otherwise.
        """
        return Node._op_areYouCoordinator.invokeAsync(self, ((), context))

    def areYouThere(self, gn: str, j: int, context: dict[str, str] | None = None) -> bool:
        """
        Determine if the node is a member of the given group with the given coordinator.
        
        Parameters
        ----------
        gn : str
            The group name.
        j : int
            The group coordinator.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        bool
            ``true`` if the node is a member, ``false`` otherwise.
        """
        return Node._op_areYouThere.invoke(self, ((gn, j), context))

    def areYouThereAsync(self, gn: str, j: int, context: dict[str, str] | None = None) -> Awaitable[bool]:
        """
        Determine if the node is a member of the given group with the given coordinator.
        
        Parameters
        ----------
        gn : str
            The group name.
        j : int
            The group coordinator.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[bool]
            ``true`` if the node is a member, ``false`` otherwise.
        """
        return Node._op_areYouThere.invokeAsync(self, ((gn, j), context))

    def sync(self, context: dict[str, str] | None = None) -> ObjectPrx | None:
        """
        Get the sync object for the replica hosted by this node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        ObjectPrx | None
            The sync object.
        """
        return Node._op_sync.invoke(self, ((), context))

    def syncAsync(self, context: dict[str, str] | None = None) -> Awaitable[ObjectPrx | None]:
        """
        Get the sync object for the replica hosted by this node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[ObjectPrx | None]
            The sync object.
        """
        return Node._op_sync.invokeAsync(self, ((), context))

    def nodes(self, context: dict[str, str] | None = None) -> list[NodeInfo]:
        """
        Get the replication group information.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        list[NodeInfo]
            The set of configured nodes and the associated priority.
        """
        return Node._op_nodes.invoke(self, ((), context))

    def nodesAsync(self, context: dict[str, str] | None = None) -> Awaitable[list[NodeInfo]]:
        """
        Get the replication group information.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[list[NodeInfo]]
            The set of configured nodes and the associated priority.
        """
        return Node._op_nodes.invokeAsync(self, ((), context))

    def query(self, context: dict[str, str] | None = None) -> QueryInfo:
        """
        Get the query information for the given node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        QueryInfo
            The query information.
        """
        return Node._op_query.invoke(self, ((), context))

    def queryAsync(self, context: dict[str, str] | None = None) -> Awaitable[QueryInfo]:
        """
        Get the query information for the given node.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[QueryInfo]
            The query information.
        """
        return Node._op_query.invokeAsync(self, ((), context))

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
        return "::IceStormElection::Node"

IcePy.defineProxy("::IceStormElection::Node", NodePrx)

class Node(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceStormElection::Node", )
    _op_invitation: IcePy.Operation
    _op_ready: IcePy.Operation
    _op_accept: IcePy.Operation
    _op_areYouCoordinator: IcePy.Operation
    _op_areYouThere: IcePy.Operation
    _op_sync: IcePy.Operation
    _op_nodes: IcePy.Operation
    _op_query: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStormElection::Node"

    @abstractmethod
    def invitation(self, j: int, gn: str, current: Current) -> None | Awaitable[None]:
        """
        Invite the node into a group with the given coordinator and group name.
        
        Parameters
        ----------
        j : int
            The group coordinator.
        gn : str
            The group name.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def ready(self, j: int, gn: str, coordinator: ObjectPrx | None, max: int, generation: int, current: Current) -> None | Awaitable[None]:
        """
        Call from the group coordinator to a node to inform the node that the replica group is active.
        
        Parameters
        ----------
        j : int
            The group coordinator.
        gn : str
            The group name.
        coordinator : ObjectPrx | None
            The proxy to the coordinator.
        max : int
            The highest priority node seen by this replica group.
        generation : int
            The current generation count.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def accept(self, j: int, gn: str, forwardedInvites: list[int], observer: ObjectPrx | None, llu: LogUpdate, max: int, current: Current) -> None | Awaitable[None]:
        """
        Called to accept an invitation into the given group.
        
        Parameters
        ----------
        j : int
            The id of the node accepting the invitation.
        gn : str
            The group name.
        forwardedInvites : list[int]
            The ids of the nodes to which invitations were forwarded.
        observer : ObjectPrx | None
            The observer.
        llu : LogUpdate
            The last log update for the given node.
        max : int
            The highest priority node seen by this replica group.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def areYouCoordinator(self, current: Current) -> bool | Awaitable[bool]:
        """
        Determine if this node is a coordinator.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        bool | Awaitable[bool]
            ``true`` if the node is a coordinator, ``false`` otherwise.
        """
        pass

    @abstractmethod
    def areYouThere(self, gn: str, j: int, current: Current) -> bool | Awaitable[bool]:
        """
        Determine if the node is a member of the given group with the given coordinator.
        
        Parameters
        ----------
        gn : str
            The group name.
        j : int
            The group coordinator.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        bool | Awaitable[bool]
            ``true`` if the node is a member, ``false`` otherwise.
        """
        pass

    @abstractmethod
    def sync(self, current: Current) -> ObjectPrx | None | Awaitable[ObjectPrx | None]:
        """
        Get the sync object for the replica hosted by this node.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        ObjectPrx | None | Awaitable[ObjectPrx | None]
            The sync object.
        """
        pass

    @abstractmethod
    def nodes(self, current: Current) -> Sequence[NodeInfo] | Awaitable[Sequence[NodeInfo]]:
        """
        Get the replication group information.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        Sequence[NodeInfo] | Awaitable[Sequence[NodeInfo]]
            The set of configured nodes and the associated priority.
        """
        pass

    @abstractmethod
    def query(self, current: Current) -> QueryInfo | Awaitable[QueryInfo]:
        """
        Get the query information for the given node.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        QueryInfo | Awaitable[QueryInfo]
            The query information.
        """
        pass

Node._op_invitation = IcePy.Operation(
    "invitation",
    "invitation",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

Node._op_ready = IcePy.Operation(
    "ready",
    "ready",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0), ((), _Ice_ObjectPrx_t, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_long, False, 0)),
    (),
    None,
    ())

Node._op_accept = IcePy.Operation(
    "accept",
    "accept",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0), ((), _Ice_IntSeq_t, False, 0), ((), _Ice_ObjectPrx_t, False, 0), ((), _IceStormElection_LogUpdate_t, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    ())

Node._op_areYouCoordinator = IcePy.Operation(
    "areYouCoordinator",
    "areYouCoordinator",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

Node._op_areYouThere = IcePy.Operation(
    "areYouThere",
    "areYouThere",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

Node._op_sync = IcePy.Operation(
    "sync",
    "sync",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _Ice_ObjectPrx_t, False, 0),
    ())

Node._op_nodes = IcePy.Operation(
    "nodes",
    "nodes",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceStormElection_NodeInfoSeq_t, False, 0),
    ())

Node._op_query = IcePy.Operation(
    "query",
    "query",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceStormElection_QueryInfo_t, False, 0),
    ())

__all__ = ["Node", "NodePrx", "_IceStormElection_NodePrx_t"]
