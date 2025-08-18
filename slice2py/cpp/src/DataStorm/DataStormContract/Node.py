# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.Node_forward import _DataStormContract_NodePrx_t

from DataStormContract.PublisherSession_forward import _DataStormContract_PublisherSessionPrx_t

from DataStormContract.SessionCreationException import _DataStormContract_SessionCreationException_t

from DataStormContract.SubscriberSession_forward import _DataStormContract_SubscriberSessionPrx_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from DataStormContract.Node import NodePrx
    from DataStormContract.PublisherSession import PublisherSessionPrx
    from DataStormContract.SubscriberSession import SubscriberSessionPrx
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class NodePrx(ObjectPrx):

    def initiateCreateSession(self, publisher: NodePrx | None, context: dict[str, str] | None = None) -> None:
        """
        Initiate the creation of a publisher session with a node, after the target node has announced a topic
        reader for which this node has a corresponding topic writer.
        
        Parameters
        ----------
        publisher : NodePrx | None
            The publisher node initiating the session. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        SessionCreationException
            Thrown when the session cannot be created.
        """
        return Node._op_initiateCreateSession.invoke(self, ((publisher, ), context))

    def initiateCreateSessionAsync(self, publisher: NodePrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Initiate the creation of a publisher session with a node, after the target node has announced a topic
        reader for which this node has a corresponding topic writer.
        
        Parameters
        ----------
        publisher : NodePrx | None
            The publisher node initiating the session. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_initiateCreateSession.invokeAsync(self, ((publisher, ), context))

    def createSession(self, subscriber: NodePrx | None, session: SubscriberSessionPrx | None, fromRelay: bool, context: dict[str, str] | None = None) -> None:
        """
        Initiates the creation of a subscriber session with a node. The subscriber node sends this request to a
        publisher node in one of the following scenarios:
        
        - The subscriber has received a topic writer announcement from the publisher and has a matching topic
        reader.
        - The publisher node has previously sent a initiateCreateSession request.
        
        The publisher node dispatching this request then sends a confirmCreateSession request to the subscriber node
        to continue session establishment.
        
        Parameters
        ----------
        subscriber : NodePrx | None
            The subscriber node initiating the session. This proxy is never null.
        session : SubscriberSessionPrx | None
            The subscriber session being created. This proxy is never null.
        fromRelay : bool
            Indicates whether the session is being created from a relay node.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        SessionCreationException
            Thrown when the session cannot be created.
        """
        return Node._op_createSession.invoke(self, ((subscriber, session, fromRelay), context))

    def createSessionAsync(self, subscriber: NodePrx | None, session: SubscriberSessionPrx | None, fromRelay: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Initiates the creation of a subscriber session with a node. The subscriber node sends this request to a
        publisher node in one of the following scenarios:
        
        - The subscriber has received a topic writer announcement from the publisher and has a matching topic
        reader.
        - The publisher node has previously sent a initiateCreateSession request.
        
        The publisher node dispatching this request then sends a confirmCreateSession request to the subscriber node
        to continue session establishment.
        
        Parameters
        ----------
        subscriber : NodePrx | None
            The subscriber node initiating the session. This proxy is never null.
        session : SubscriberSessionPrx | None
            The subscriber session being created. This proxy is never null.
        fromRelay : bool
            Indicates whether the session is being created from a relay node.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_createSession.invokeAsync(self, ((subscriber, session, fromRelay), context))

    def confirmCreateSession(self, publisher: NodePrx | None, session: PublisherSessionPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Confirm the creation of a publisher session with a node.
        
        Parameters
        ----------
        publisher : NodePrx | None
            The publisher node confirming the session. The proxy is never null.
        session : PublisherSessionPrx | None
            The publisher session being confirmed. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        SessionCreationException
            Thrown when the session cannot be created.
        """
        return Node._op_confirmCreateSession.invoke(self, ((publisher, session), context))

    def confirmCreateSessionAsync(self, publisher: NodePrx | None, session: PublisherSessionPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Confirm the creation of a publisher session with a node.
        
        Parameters
        ----------
        publisher : NodePrx | None
            The publisher node confirming the session. The proxy is never null.
        session : PublisherSessionPrx | None
            The publisher session being confirmed. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Node._op_confirmCreateSession.invokeAsync(self, ((publisher, session), context))

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
        return "::DataStormContract::Node"

IcePy.defineProxy("::DataStormContract::Node", NodePrx)

class Node(Object, ABC):

    _ice_ids: Sequence[str] = ("::DataStormContract::Node", "::Ice::Object", )
    _op_initiateCreateSession: IcePy.Operation
    _op_createSession: IcePy.Operation
    _op_confirmCreateSession: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::Node"

    @abstractmethod
    def initiateCreateSession(self, publisher: NodePrx | None, current: Current) -> None | Awaitable[None]:
        """
        Initiate the creation of a publisher session with a node, after the target node has announced a topic
        reader for which this node has a corresponding topic writer.
        
        Parameters
        ----------
        publisher : NodePrx | None
            The publisher node initiating the session. The proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        SessionCreationException
            Thrown when the session cannot be created.
        """
        pass

    @abstractmethod
    def createSession(self, subscriber: NodePrx | None, session: SubscriberSessionPrx | None, fromRelay: bool, current: Current) -> None | Awaitable[None]:
        """
        Initiates the creation of a subscriber session with a node. The subscriber node sends this request to a
        publisher node in one of the following scenarios:
        
        - The subscriber has received a topic writer announcement from the publisher and has a matching topic
        reader.
        - The publisher node has previously sent a initiateCreateSession request.
        
        The publisher node dispatching this request then sends a confirmCreateSession request to the subscriber node
        to continue session establishment.
        
        Parameters
        ----------
        subscriber : NodePrx | None
            The subscriber node initiating the session. This proxy is never null.
        session : SubscriberSessionPrx | None
            The subscriber session being created. This proxy is never null.
        fromRelay : bool
            Indicates whether the session is being created from a relay node.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        SessionCreationException
            Thrown when the session cannot be created.
        """
        pass

    @abstractmethod
    def confirmCreateSession(self, publisher: NodePrx | None, session: PublisherSessionPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Confirm the creation of a publisher session with a node.
        
        Parameters
        ----------
        publisher : NodePrx | None
            The publisher node confirming the session. The proxy is never null.
        session : PublisherSessionPrx | None
            The publisher session being confirmed. The proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        SessionCreationException
            Thrown when the session cannot be created.
        """
        pass

Node._op_initiateCreateSession = IcePy.Operation(
    "initiateCreateSession",
    "initiateCreateSession",
    OperationMode.Normal,
    None,
    (),
    (((), _DataStormContract_NodePrx_t, False, 0),),
    (),
    None,
    (_DataStormContract_SessionCreationException_t,))

Node._op_createSession = IcePy.Operation(
    "createSession",
    "createSession",
    OperationMode.Normal,
    None,
    (),
    (((), _DataStormContract_NodePrx_t, False, 0), ((), _DataStormContract_SubscriberSessionPrx_t, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    None,
    (_DataStormContract_SessionCreationException_t,))

Node._op_confirmCreateSession = IcePy.Operation(
    "confirmCreateSession",
    "confirmCreateSession",
    OperationMode.Normal,
    None,
    (),
    (((), _DataStormContract_NodePrx_t, False, 0), ((), _DataStormContract_PublisherSessionPrx_t, False, 0)),
    (),
    None,
    (_DataStormContract_SessionCreationException_t,))

__all__ = ["Node", "NodePrx", "_DataStormContract_NodePrx_t"]
