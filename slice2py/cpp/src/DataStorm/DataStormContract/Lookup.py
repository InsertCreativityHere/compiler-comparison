# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.Lookup_forward import _DataStormContract_LookupPrx_t

from DataStormContract.Node_forward import _DataStormContract_NodePrx_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Ice.StringSeq import _Ice_StringSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from DataStormContract.Node import NodePrx
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class LookupPrx(ObjectPrx):

    def announceTopicReader(self, topic: str, subscriber: NodePrx | None, context: dict[str, str] | None = None) -> None:
        """
        Announce a topic reader.
        
        Parameters
        ----------
        topic : str
            The name of the topic.
        subscriber : NodePrx | None
            The node reading the topic. The subscriber proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Lookup._op_announceTopicReader.invoke(self, ((topic, subscriber), context))

    def announceTopicReaderAsync(self, topic: str, subscriber: NodePrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Announce a topic reader.
        
        Parameters
        ----------
        topic : str
            The name of the topic.
        subscriber : NodePrx | None
            The node reading the topic. The subscriber proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Lookup._op_announceTopicReader.invokeAsync(self, ((topic, subscriber), context))

    def announceTopicWriter(self, topic: str, node: NodePrx | None, context: dict[str, str] | None = None) -> None:
        """
        Announce a topic writer.
        
        Parameters
        ----------
        topic : str
            The name of the topic.
        node : NodePrx | None
            The node writing the topic. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Lookup._op_announceTopicWriter.invoke(self, ((topic, node), context))

    def announceTopicWriterAsync(self, topic: str, node: NodePrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Announce a topic writer.
        
        Parameters
        ----------
        topic : str
            The name of the topic.
        node : NodePrx | None
            The node writing the topic. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Lookup._op_announceTopicWriter.invokeAsync(self, ((topic, node), context))

    def announceTopics(self, readers: Sequence[str], writers: Sequence[str], node: NodePrx | None, context: dict[str, str] | None = None) -> None:
        """
        Announce a set of topic readers and writers.
        
        Parameters
        ----------
        readers : Sequence[str]
            A sequence of topic names for readers.
        writers : Sequence[str]
            A sequence of topic names for writers.
        node : NodePrx | None
            The node reading or writing the topics. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Lookup._op_announceTopics.invoke(self, ((readers, writers, node), context))

    def announceTopicsAsync(self, readers: Sequence[str], writers: Sequence[str], node: NodePrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Announce a set of topic readers and writers.
        
        Parameters
        ----------
        readers : Sequence[str]
            A sequence of topic names for readers.
        writers : Sequence[str]
            A sequence of topic names for writers.
        node : NodePrx | None
            The node reading or writing the topics. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Lookup._op_announceTopics.invokeAsync(self, ((readers, writers, node), context))

    def createSession(self, node: NodePrx | None, context: dict[str, str] | None = None) -> NodePrx | None:
        """
        Establish a connection between this node and the caller node.
        
        Parameters
        ----------
        node : NodePrx | None
            The node initiating the connection. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        NodePrx | None
            A proxy to this node. The proxy is never null.
        """
        return Lookup._op_createSession.invoke(self, ((node, ), context))

    def createSessionAsync(self, node: NodePrx | None, context: dict[str, str] | None = None) -> Awaitable[NodePrx | None]:
        """
        Establish a connection between this node and the caller node.
        
        Parameters
        ----------
        node : NodePrx | None
            The node initiating the connection. The proxy is never null.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[NodePrx | None]
            A proxy to this node. The proxy is never null.
        """
        return Lookup._op_createSession.invokeAsync(self, ((node, ), context))

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
        return "::DataStormContract::Lookup"

IcePy.defineProxy("::DataStormContract::Lookup", LookupPrx)

class Lookup(Object, ABC):

    _ice_ids: Sequence[str] = ("::DataStormContract::Lookup", "::Ice::Object", )
    _op_announceTopicReader: IcePy.Operation
    _op_announceTopicWriter: IcePy.Operation
    _op_announceTopics: IcePy.Operation
    _op_createSession: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::Lookup"

    @abstractmethod
    def announceTopicReader(self, topic: str, subscriber: NodePrx | None, current: Current) -> None | Awaitable[None]:
        """
        Announce a topic reader.
        
        Parameters
        ----------
        topic : str
            The name of the topic.
        subscriber : NodePrx | None
            The node reading the topic. The subscriber proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def announceTopicWriter(self, topic: str, node: NodePrx | None, current: Current) -> None | Awaitable[None]:
        """
        Announce a topic writer.
        
        Parameters
        ----------
        topic : str
            The name of the topic.
        node : NodePrx | None
            The node writing the topic. The proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def announceTopics(self, readers: list[str], writers: list[str], node: NodePrx | None, current: Current) -> None | Awaitable[None]:
        """
        Announce a set of topic readers and writers.
        
        Parameters
        ----------
        readers : list[str]
            A sequence of topic names for readers.
        writers : list[str]
            A sequence of topic names for writers.
        node : NodePrx | None
            The node reading or writing the topics. The proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def createSession(self, node: NodePrx | None, current: Current) -> NodePrx | None | Awaitable[NodePrx | None]:
        """
        Establish a connection between this node and the caller node.
        
        Parameters
        ----------
        node : NodePrx | None
            The node initiating the connection. The proxy is never null.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        NodePrx | None | Awaitable[NodePrx | None]
            A proxy to this node. The proxy is never null.
        """
        pass

Lookup._op_announceTopicReader = IcePy.Operation(
    "announceTopicReader",
    "announceTopicReader",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), _DataStormContract_NodePrx_t, False, 0)),
    (),
    None,
    ())

Lookup._op_announceTopicWriter = IcePy.Operation(
    "announceTopicWriter",
    "announceTopicWriter",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), _DataStormContract_NodePrx_t, False, 0)),
    (),
    None,
    ())

Lookup._op_announceTopics = IcePy.Operation(
    "announceTopics",
    "announceTopics",
    OperationMode.Idempotent,
    None,
    (),
    (((), _Ice_StringSeq_t, False, 0), ((), _Ice_StringSeq_t, False, 0), ((), _DataStormContract_NodePrx_t, False, 0)),
    (),
    None,
    ())

Lookup._op_createSession = IcePy.Operation(
    "createSession",
    "createSession",
    OperationMode.Normal,
    None,
    (),
    (((), _DataStormContract_NodePrx_t, False, 0),),
    (),
    ((), _DataStormContract_NodePrx_t, False, 0),
    ())

__all__ = ["Lookup", "LookupPrx", "_DataStormContract_LookupPrx_t"]
