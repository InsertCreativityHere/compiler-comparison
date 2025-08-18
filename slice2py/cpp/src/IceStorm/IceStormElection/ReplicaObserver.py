# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.IdentitySeq import _Ice_IdentitySeq_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from IceStorm.SubscriberRecord import _IceStorm_SubscriberRecord_t

from IceStormElection.LogUpdate import _IceStormElection_LogUpdate_t

from IceStormElection.ObserverInconsistencyException import _IceStormElection_ObserverInconsistencyException_t

from IceStormElection.ReplicaObserver_forward import _IceStormElection_ReplicaObserverPrx_t

from IceStormElection.TopicContentSeq import _IceStormElection_TopicContentSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from IceStorm.SubscriberRecord import SubscriberRecord
    from IceStormElection.LogUpdate import LogUpdate
    from IceStormElection.TopicContent import TopicContent
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ReplicaObserverPrx(ObjectPrx):

    def init(self, llu: LogUpdate, content: Sequence[TopicContent], context: dict[str, str] | None = None) -> None:
        """
        Initialize the observer.
        
        Parameters
        ----------
        llu : LogUpdate
            The last log update seen by the master.
        content : Sequence[TopicContent]
            The topic content.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        return ReplicaObserver._op_init.invoke(self, ((llu, content), context))

    def initAsync(self, llu: LogUpdate, content: Sequence[TopicContent], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Initialize the observer.
        
        Parameters
        ----------
        llu : LogUpdate
            The last log update seen by the master.
        content : Sequence[TopicContent]
            The topic content.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_init.invokeAsync(self, ((llu, content), context))

    def createTopic(self, llu: LogUpdate, name: str, context: dict[str, str] | None = None) -> None:
        """
        Create the topic with the given name.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        name : str
            The topic name.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        return ReplicaObserver._op_createTopic.invoke(self, ((llu, name), context))

    def createTopicAsync(self, llu: LogUpdate, name: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Create the topic with the given name.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        name : str
            The topic name.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_createTopic.invokeAsync(self, ((llu, name), context))

    def destroyTopic(self, llu: LogUpdate, name: str, context: dict[str, str] | None = None) -> None:
        """
        Destroy the topic with the given name.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        name : str
            The topic name.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        return ReplicaObserver._op_destroyTopic.invoke(self, ((llu, name), context))

    def destroyTopicAsync(self, llu: LogUpdate, name: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Destroy the topic with the given name.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        name : str
            The topic name.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_destroyTopic.invokeAsync(self, ((llu, name), context))

    def addSubscriber(self, llu: LogUpdate, topic: str, record: SubscriberRecord, context: dict[str, str] | None = None) -> None:
        """
        Add a subscriber to a topic.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        topic : str
            The topic name to which to add the subscriber.
        record : SubscriberRecord
            The subscriber information.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        return ReplicaObserver._op_addSubscriber.invoke(self, ((llu, topic, record), context))

    def addSubscriberAsync(self, llu: LogUpdate, topic: str, record: SubscriberRecord, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Add a subscriber to a topic.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        topic : str
            The topic name to which to add the subscriber.
        record : SubscriberRecord
            The subscriber information.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_addSubscriber.invokeAsync(self, ((llu, topic, record), context))

    def removeSubscriber(self, llu: LogUpdate, topic: str, subscribers: Sequence[Identity], context: dict[str, str] | None = None) -> None:
        """
        Remove a subscriber from a topic.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        topic : str
            The topic name.
        subscribers : Sequence[Identity]
            The identities of the subscribers to remove.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        return ReplicaObserver._op_removeSubscriber.invoke(self, ((llu, topic, subscribers), context))

    def removeSubscriberAsync(self, llu: LogUpdate, topic: str, subscribers: Sequence[Identity], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Remove a subscriber from a topic.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        topic : str
            The topic name.
        subscribers : Sequence[Identity]
            The identities of the subscribers to remove.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ReplicaObserver._op_removeSubscriber.invokeAsync(self, ((llu, topic, subscribers), context))

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
        return "::IceStormElection::ReplicaObserver"

IcePy.defineProxy("::IceStormElection::ReplicaObserver", ReplicaObserverPrx)

class ReplicaObserver(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceStormElection::ReplicaObserver", )
    _op_init: IcePy.Operation
    _op_createTopic: IcePy.Operation
    _op_destroyTopic: IcePy.Operation
    _op_addSubscriber: IcePy.Operation
    _op_removeSubscriber: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStormElection::ReplicaObserver"

    @abstractmethod
    def init(self, llu: LogUpdate, content: list[TopicContent], current: Current) -> None | Awaitable[None]:
        """
        Initialize the observer.
        
        Parameters
        ----------
        llu : LogUpdate
            The last log update seen by the master.
        content : list[TopicContent]
            The topic content.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        pass

    @abstractmethod
    def createTopic(self, llu: LogUpdate, name: str, current: Current) -> None | Awaitable[None]:
        """
        Create the topic with the given name.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        name : str
            The topic name.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        pass

    @abstractmethod
    def destroyTopic(self, llu: LogUpdate, name: str, current: Current) -> None | Awaitable[None]:
        """
        Destroy the topic with the given name.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        name : str
            The topic name.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        pass

    @abstractmethod
    def addSubscriber(self, llu: LogUpdate, topic: str, record: SubscriberRecord, current: Current) -> None | Awaitable[None]:
        """
        Add a subscriber to a topic.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        topic : str
            The topic name to which to add the subscriber.
        record : SubscriberRecord
            The subscriber information.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        pass

    @abstractmethod
    def removeSubscriber(self, llu: LogUpdate, topic: str, subscribers: list[Identity], current: Current) -> None | Awaitable[None]:
        """
        Remove a subscriber from a topic.
        
        Parameters
        ----------
        llu : LogUpdate
            The log update token.
        topic : str
            The topic name.
        subscribers : list[Identity]
            The identities of the subscribers to remove.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        ObserverInconsistencyException
            Raised if an inconsistency was detected.
        """
        pass

ReplicaObserver._op_init = IcePy.Operation(
    "init",
    "init",
    OperationMode.Normal,
    None,
    (),
    (((), _IceStormElection_LogUpdate_t, False, 0), ((), _IceStormElection_TopicContentSeq_t, False, 0)),
    (),
    None,
    (_IceStormElection_ObserverInconsistencyException_t,))

ReplicaObserver._op_createTopic = IcePy.Operation(
    "createTopic",
    "createTopic",
    OperationMode.Normal,
    None,
    (),
    (((), _IceStormElection_LogUpdate_t, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    (_IceStormElection_ObserverInconsistencyException_t,))

ReplicaObserver._op_destroyTopic = IcePy.Operation(
    "destroyTopic",
    "destroyTopic",
    OperationMode.Normal,
    None,
    (),
    (((), _IceStormElection_LogUpdate_t, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    (_IceStormElection_ObserverInconsistencyException_t,))

ReplicaObserver._op_addSubscriber = IcePy.Operation(
    "addSubscriber",
    "addSubscriber",
    OperationMode.Normal,
    None,
    (),
    (((), _IceStormElection_LogUpdate_t, False, 0), ((), IcePy._t_string, False, 0), ((), _IceStorm_SubscriberRecord_t, False, 0)),
    (),
    None,
    (_IceStormElection_ObserverInconsistencyException_t,))

ReplicaObserver._op_removeSubscriber = IcePy.Operation(
    "removeSubscriber",
    "removeSubscriber",
    OperationMode.Normal,
    None,
    (),
    (((), _IceStormElection_LogUpdate_t, False, 0), ((), IcePy._t_string, False, 0), ((), _Ice_IdentitySeq_t, False, 0)),
    (),
    None,
    (_IceStormElection_ObserverInconsistencyException_t,))

__all__ = ["ReplicaObserver", "ReplicaObserverPrx", "_IceStormElection_ReplicaObserverPrx_t"]
