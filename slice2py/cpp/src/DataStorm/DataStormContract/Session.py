# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.DataSamplesSeq import _DataStormContract_DataSamplesSeq_t

from DataStormContract.ElementInfoSeq import _DataStormContract_ElementInfoSeq_t

from DataStormContract.ElementSpecAckSeq import _DataStormContract_ElementSpecAckSeq_t

from DataStormContract.ElementSpecSeq import _DataStormContract_ElementSpecSeq_t

from DataStormContract.Session_forward import _DataStormContract_SessionPrx_t

from DataStormContract.TopicInfoSeq import _DataStormContract_TopicInfoSeq_t

from DataStormContract.TopicSpec import _DataStormContract_TopicSpec_t

from Ice.LongSeq import _Ice_LongSeq_t

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
    from DataStormContract.DataSamples import DataSamples
    from DataStormContract.ElementInfo import ElementInfo
    from DataStormContract.ElementSpec import ElementSpec
    from DataStormContract.ElementSpecAck import ElementSpecAck
    from DataStormContract.TopicInfo import TopicInfo
    from DataStormContract.TopicSpec import TopicSpec
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class SessionPrx(ObjectPrx):

    def announceTopics(self, topics: Sequence[TopicInfo], initialize: bool, context: dict[str, str] | None = None) -> None:
        """
        Announces topics to the peer during session establishment or when adding new topics.
        
        - During session establishment, announces existing topics.
        - For established sessions, announces newly added topics.
        
        A publisher session announces the topics it writes, and a subscriber session announces the topics it reads.
        
        The receiving peer invokes attachTopic for topics it is interested in.
        
        Parameters
        ----------
        topics : Sequence[TopicInfo]
            The sequence of topics to announce.
        initialize : bool
            Currently unused.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_announceTopics.invoke(self, ((topics, initialize), context))

    def announceTopicsAsync(self, topics: Sequence[TopicInfo], initialize: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Announces topics to the peer during session establishment or when adding new topics.
        
        - During session establishment, announces existing topics.
        - For established sessions, announces newly added topics.
        
        A publisher session announces the topics it writes, and a subscriber session announces the topics it reads.
        
        The receiving peer invokes attachTopic for topics it is interested in.
        
        Parameters
        ----------
        topics : Sequence[TopicInfo]
            The sequence of topics to announce.
        initialize : bool
            Currently unused.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_announceTopics.invokeAsync(self, ((topics, initialize), context))

    def attachTopic(self, topic: TopicSpec, context: dict[str, str] | None = None) -> None:
        """
        This operation is invoked if the session is interested in the announced topic. Which occurs when:
        
        - The session has a reader for a topic that the peer writes, or
        - The session has a writer for a topic that the peer reads.
        
        Parameters
        ----------
        topic : TopicSpec
            The TopicSpec describing the topic to attach.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_attachTopic.invoke(self, ((topic, ), context))

    def attachTopicAsync(self, topic: TopicSpec, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        This operation is invoked if the session is interested in the announced topic. Which occurs when:
        
        - The session has a reader for a topic that the peer writes, or
        - The session has a writer for a topic that the peer reads.
        
        Parameters
        ----------
        topic : TopicSpec
            The TopicSpec describing the topic to attach.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_attachTopic.invokeAsync(self, ((topic, ), context))

    def detachTopic(self, topicId: int, context: dict[str, str] | None = None) -> None:
        """
        Detaches a topic from the session, typically called when the topic is destroyed.
        
        This operation is invoked by the topic on listener sessions during its destruction.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to detach.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_detachTopic.invoke(self, ((topicId, ), context))

    def detachTopicAsync(self, topicId: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Detaches a topic from the session, typically called when the topic is destroyed.
        
        This operation is invoked by the topic on listener sessions during its destruction.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to detach.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_detachTopic.invokeAsync(self, ((topicId, ), context))

    def attachTags(self, topicId: int, tags: Sequence[ElementInfo], initialize: bool, context: dict[str, str] | None = None) -> None:
        """
        Attaches the specified tags to the subscriber of a topic.
        
        Tags are used to support partial update samples.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the tags will be attached.
        tags : Sequence[ElementInfo]
            The sequence of tags to attach, representing the partial update associations.
        initialize : bool
            Indicates whether the tags are being attached during session initialization.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_attachTags.invoke(self, ((topicId, tags, initialize), context))

    def attachTagsAsync(self, topicId: int, tags: Sequence[ElementInfo], initialize: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Attaches the specified tags to the subscriber of a topic.
        
        Tags are used to support partial update samples.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the tags will be attached.
        tags : Sequence[ElementInfo]
            The sequence of tags to attach, representing the partial update associations.
        initialize : bool
            Indicates whether the tags are being attached during session initialization.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_attachTags.invokeAsync(self, ((topicId, tags, initialize), context))

    def detachTags(self, topicId: int, tags: Sequence[int], context: dict[str, str] | None = None) -> None:
        """
        Detaches tags from the session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic.
        tags : Sequence[int]
            The sequence of tag identifiers to detach.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_detachTags.invoke(self, ((topicId, tags), context))

    def detachTagsAsync(self, topicId: int, tags: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Detaches tags from the session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic.
        tags : Sequence[int]
            The sequence of tag identifiers to detach.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_detachTags.invokeAsync(self, ((topicId, tags), context))

    def announceElements(self, topicId: int, elements: Sequence[ElementInfo], context: dict[str, str] | None = None) -> None:
        """
        Announces elements associated with a topic to the peer.
        
        This operation informs the peer about new data readers or data writers associated with the specified topic.
        The receiving peer will invoke ``attachElements`` for any elements it is interested in.
        
        - A publisher session announces its data writers.
        - A subscriber session announces its data readers.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[ElementInfo]
            The sequence of elements to announce, representing the data readers or data writers.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_announceElements.invoke(self, ((topicId, elements), context))

    def announceElementsAsync(self, topicId: int, elements: Sequence[ElementInfo], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Announces elements associated with a topic to the peer.
        
        This operation informs the peer about new data readers or data writers associated with the specified topic.
        The receiving peer will invoke ``attachElements`` for any elements it is interested in.
        
        - A publisher session announces its data writers.
        - A subscriber session announces its data readers.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[ElementInfo]
            The sequence of elements to announce, representing the data readers or data writers.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_announceElements.invokeAsync(self, ((topicId, elements), context))

    def attachElements(self, topicId: int, elements: Sequence[ElementSpec], initialize: bool, context: dict[str, str] | None = None) -> None:
        """
        Attaches the specified elements to the subscribers of a topic.
        
        This operation associates the provided elements, such as keys or filters, with the subscribers of the given
        topic.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[ElementSpec]
            The sequence of ``ElementSpec`` objects representing the elements to attach.
        initialize : bool
            Indicates whether the elements are being attached during session initialization.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_attachElements.invoke(self, ((topicId, elements, initialize), context))

    def attachElementsAsync(self, topicId: int, elements: Sequence[ElementSpec], initialize: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Attaches the specified elements to the subscribers of a topic.
        
        This operation associates the provided elements, such as keys or filters, with the subscribers of the given
        topic.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[ElementSpec]
            The sequence of ``ElementSpec`` objects representing the elements to attach.
        initialize : bool
            Indicates whether the elements are being attached during session initialization.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_attachElements.invokeAsync(self, ((topicId, elements, initialize), context))

    def attachElementsAck(self, topicId: int, elements: Sequence[ElementSpecAck], context: dict[str, str] | None = None) -> None:
        """
        Acknowledges the attachment of elements to the session in response to a previous attachElements request.
        
        This method confirms that the specified elements, such as keys or filters, have been successfully attached
        to the session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[ElementSpecAck]
            A sequence of ``ElementSpecAck`` objects representing the confirmed attachments.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_attachElementsAck.invoke(self, ((topicId, elements), context))

    def attachElementsAckAsync(self, topicId: int, elements: Sequence[ElementSpecAck], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Acknowledges the attachment of elements to the session in response to a previous attachElements request.
        
        This method confirms that the specified elements, such as keys or filters, have been successfully attached
        to the session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[ElementSpecAck]
            A sequence of ``ElementSpecAck`` objects representing the confirmed attachments.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_attachElementsAck.invokeAsync(self, ((topicId, elements), context))

    def detachElements(self, topicId: int, elements: Sequence[int], context: dict[str, str] | None = None) -> None:
        """
        Instructs the peer to detach specific elements associated with a topic.
        
        This operation is invoked when the specified elements, such as keys or filters, are no longer valid
        and should be removed from the peer's session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[int]
            A sequence of element identifiers representing the keys or filters to detach.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_detachElements.invoke(self, ((topicId, elements), context))

    def detachElementsAsync(self, topicId: int, elements: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Instructs the peer to detach specific elements associated with a topic.
        
        This operation is invoked when the specified elements, such as keys or filters, are no longer valid
        and should be removed from the peer's session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : Sequence[int]
            A sequence of element identifiers representing the keys or filters to detach.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_detachElements.invokeAsync(self, ((topicId, elements), context))

    def initSamples(self, topicId: int, samples: Sequence[DataSamples], context: dict[str, str] | None = None) -> None:
        """
        Initializes the subscriber with the publisher queued samples for a topic during session establishment.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic.
        samples : Sequence[DataSamples]
            A sequence of ``DataSamples`` containing the queued samples to initialize the subscriber.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_initSamples.invoke(self, ((topicId, samples), context))

    def initSamplesAsync(self, topicId: int, samples: Sequence[DataSamples], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Initializes the subscriber with the publisher queued samples for a topic during session establishment.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic.
        samples : Sequence[DataSamples]
            A sequence of ``DataSamples`` containing the queued samples to initialize the subscriber.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_initSamples.invokeAsync(self, ((topicId, samples), context))

    def disconnected(self, context: dict[str, str] | None = None) -> None:
        """
        Notifies the peer that the session is being disconnected.
        
        For sessions established through a relay node, this operation is invoked by the relay node if the connection
        between the relay node and the target node is lost.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return Session._op_disconnected.invoke(self, ((), context))

    def disconnectedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Notifies the peer that the session is being disconnected.
        
        For sessions established through a relay node, this operation is invoked by the relay node if the connection
        between the relay node and the target node is lost.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Session._op_disconnected.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> SessionPrx | None:
        return checkedCast(SessionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[SessionPrx | None ]:
        return checkedCastAsync(SessionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> SessionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> SessionPrx | None:
        return uncheckedCast(SessionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::Session"

IcePy.defineProxy("::DataStormContract::Session", SessionPrx)

class Session(Object, ABC):

    _ice_ids: Sequence[str] = ("::DataStormContract::Session", "::Ice::Object", )
    _op_announceTopics: IcePy.Operation
    _op_attachTopic: IcePy.Operation
    _op_detachTopic: IcePy.Operation
    _op_attachTags: IcePy.Operation
    _op_detachTags: IcePy.Operation
    _op_announceElements: IcePy.Operation
    _op_attachElements: IcePy.Operation
    _op_attachElementsAck: IcePy.Operation
    _op_detachElements: IcePy.Operation
    _op_initSamples: IcePy.Operation
    _op_disconnected: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::Session"

    @abstractmethod
    def announceTopics(self, topics: list[TopicInfo], initialize: bool, current: Current) -> None | Awaitable[None]:
        """
        Announces topics to the peer during session establishment or when adding new topics.
        
        - During session establishment, announces existing topics.
        - For established sessions, announces newly added topics.
        
        A publisher session announces the topics it writes, and a subscriber session announces the topics it reads.
        
        The receiving peer invokes attachTopic for topics it is interested in.
        
        Parameters
        ----------
        topics : list[TopicInfo]
            The sequence of topics to announce.
        initialize : bool
            Currently unused.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def attachTopic(self, topic: TopicSpec, current: Current) -> None | Awaitable[None]:
        """
        This operation is invoked if the session is interested in the announced topic. Which occurs when:
        
        - The session has a reader for a topic that the peer writes, or
        - The session has a writer for a topic that the peer reads.
        
        Parameters
        ----------
        topic : TopicSpec
            The TopicSpec describing the topic to attach.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def detachTopic(self, topicId: int, current: Current) -> None | Awaitable[None]:
        """
        Detaches a topic from the session, typically called when the topic is destroyed.
        
        This operation is invoked by the topic on listener sessions during its destruction.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to detach.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def attachTags(self, topicId: int, tags: list[ElementInfo], initialize: bool, current: Current) -> None | Awaitable[None]:
        """
        Attaches the specified tags to the subscriber of a topic.
        
        Tags are used to support partial update samples.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the tags will be attached.
        tags : list[ElementInfo]
            The sequence of tags to attach, representing the partial update associations.
        initialize : bool
            Indicates whether the tags are being attached during session initialization.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def detachTags(self, topicId: int, tags: list[int], current: Current) -> None | Awaitable[None]:
        """
        Detaches tags from the session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic.
        tags : list[int]
            The sequence of tag identifiers to detach.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def announceElements(self, topicId: int, elements: list[ElementInfo], current: Current) -> None | Awaitable[None]:
        """
        Announces elements associated with a topic to the peer.
        
        This operation informs the peer about new data readers or data writers associated with the specified topic.
        The receiving peer will invoke ``attachElements`` for any elements it is interested in.
        
        - A publisher session announces its data writers.
        - A subscriber session announces its data readers.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : list[ElementInfo]
            The sequence of elements to announce, representing the data readers or data writers.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def attachElements(self, topicId: int, elements: list[ElementSpec], initialize: bool, current: Current) -> None | Awaitable[None]:
        """
        Attaches the specified elements to the subscribers of a topic.
        
        This operation associates the provided elements, such as keys or filters, with the subscribers of the given
        topic.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : list[ElementSpec]
            The sequence of ``ElementSpec`` objects representing the elements to attach.
        initialize : bool
            Indicates whether the elements are being attached during session initialization.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def attachElementsAck(self, topicId: int, elements: list[ElementSpecAck], current: Current) -> None | Awaitable[None]:
        """
        Acknowledges the attachment of elements to the session in response to a previous attachElements request.
        
        This method confirms that the specified elements, such as keys or filters, have been successfully attached
        to the session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : list[ElementSpecAck]
            A sequence of ``ElementSpecAck`` objects representing the confirmed attachments.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def detachElements(self, topicId: int, elements: list[int], current: Current) -> None | Awaitable[None]:
        """
        Instructs the peer to detach specific elements associated with a topic.
        
        This operation is invoked when the specified elements, such as keys or filters, are no longer valid
        and should be removed from the peer's session.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the elements belong.
        elements : list[int]
            A sequence of element identifiers representing the keys or filters to detach.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def initSamples(self, topicId: int, samples: list[DataSamples], current: Current) -> None | Awaitable[None]:
        """
        Initializes the subscriber with the publisher queued samples for a topic during session establishment.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic.
        samples : list[DataSamples]
            A sequence of ``DataSamples`` containing the queued samples to initialize the subscriber.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def disconnected(self, current: Current) -> None | Awaitable[None]:
        """
        Notifies the peer that the session is being disconnected.
        
        For sessions established through a relay node, this operation is invoked by the relay node if the connection
        between the relay node and the target node is lost.
        
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

Session._op_announceTopics = IcePy.Operation(
    "announceTopics",
    "announceTopics",
    OperationMode.Normal,
    None,
    (),
    (((), _DataStormContract_TopicInfoSeq_t, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    None,
    ())

Session._op_attachTopic = IcePy.Operation(
    "attachTopic",
    "attachTopic",
    OperationMode.Normal,
    None,
    (),
    (((), _DataStormContract_TopicSpec_t, False, 0),),
    (),
    None,
    ())

Session._op_detachTopic = IcePy.Operation(
    "detachTopic",
    "detachTopic",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0),),
    (),
    None,
    ())

Session._op_attachTags = IcePy.Operation(
    "attachTags",
    "attachTags",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), _DataStormContract_ElementInfoSeq_t, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    None,
    ())

Session._op_detachTags = IcePy.Operation(
    "detachTags",
    "detachTags",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), _Ice_LongSeq_t, False, 0)),
    (),
    None,
    ())

Session._op_announceElements = IcePy.Operation(
    "announceElements",
    "announceElements",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), _DataStormContract_ElementInfoSeq_t, False, 0)),
    (),
    None,
    ())

Session._op_attachElements = IcePy.Operation(
    "attachElements",
    "attachElements",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), _DataStormContract_ElementSpecSeq_t, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    None,
    ())

Session._op_attachElementsAck = IcePy.Operation(
    "attachElementsAck",
    "attachElementsAck",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), _DataStormContract_ElementSpecAckSeq_t, False, 0)),
    (),
    None,
    ())

Session._op_detachElements = IcePy.Operation(
    "detachElements",
    "detachElements",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), _Ice_LongSeq_t, False, 0)),
    (),
    None,
    ())

Session._op_initSamples = IcePy.Operation(
    "initSamples",
    "initSamples",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), _DataStormContract_DataSamplesSeq_t, False, 0)),
    (),
    None,
    ())

Session._op_disconnected = IcePy.Operation(
    "disconnected",
    "disconnected",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Session", "SessionPrx", "_DataStormContract_SessionPrx_t"]
