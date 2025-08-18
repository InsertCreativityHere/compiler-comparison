# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from IceStorm.NoSuchTopic import _IceStorm_NoSuchTopic_t

from IceStorm.TopicDict import _IceStorm_TopicDict_t

from IceStorm.TopicExists import _IceStorm_TopicExists_t

from IceStorm.TopicManager import TopicManager
from IceStorm.TopicManager import TopicManagerPrx

from IceStorm.TopicManagerInternal_forward import _IceStorm_TopicManagerInternalPrx_t

from IceStorm.Topic_forward import _IceStorm_TopicPrx_t

from IceStormElection.Node_forward import _IceStormElection_NodePrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from IceStorm.Topic import TopicPrx
    from IceStormElection.Node import NodePrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class TopicManagerInternalPrx(TopicManagerPrx):

    def getReplicaNode(self, context: dict[str, str] | None = None) -> NodePrx | None:
        """
        Return the replica node proxy for this topic manager.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        NodePrx | None
            The replica proxy, or null if this instance is not replicated.
        """
        return TopicManagerInternal._op_getReplicaNode.invoke(self, ((), context))

    def getReplicaNodeAsync(self, context: dict[str, str] | None = None) -> Awaitable[NodePrx | None]:
        """
        Return the replica node proxy for this topic manager.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[NodePrx | None]
            The replica proxy, or null if this instance is not replicated.
        """
        return TopicManagerInternal._op_getReplicaNode.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TopicManagerInternalPrx | None:
        return checkedCast(TopicManagerInternalPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TopicManagerInternalPrx | None ]:
        return checkedCastAsync(TopicManagerInternalPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TopicManagerInternalPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TopicManagerInternalPrx | None:
        return uncheckedCast(TopicManagerInternalPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStorm::TopicManagerInternal"

IcePy.defineProxy("::IceStorm::TopicManagerInternal", TopicManagerInternalPrx)

class TopicManagerInternal(TopicManager, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceStorm::TopicManager", "::IceStorm::TopicManagerInternal", )
    _op_getReplicaNode: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStorm::TopicManagerInternal"

    @abstractmethod
    def getReplicaNode(self, current: Current) -> NodePrx | None | Awaitable[NodePrx | None]:
        """
        Return the replica node proxy for this topic manager.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        NodePrx | None | Awaitable[NodePrx | None]
            The replica proxy, or null if this instance is not replicated.
        """
        pass

TopicManagerInternal._op_getReplicaNode = IcePy.Operation(
    "getReplicaNode",
    "getReplicaNode",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceStormElection_NodePrx_t, False, 0),
    ())

__all__ = ["TopicManagerInternal", "TopicManagerInternalPrx", "_IceStorm_TopicManagerInternalPrx_t"]
