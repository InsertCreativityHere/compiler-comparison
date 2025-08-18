# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.DataSample import _DataStormContract_DataSample_t

from DataStormContract.DataSamplesSeq import _DataStormContract_DataSamplesSeq_t

from DataStormContract.ElementInfoSeq import _DataStormContract_ElementInfoSeq_t

from DataStormContract.ElementSpecAckSeq import _DataStormContract_ElementSpecAckSeq_t

from DataStormContract.ElementSpecSeq import _DataStormContract_ElementSpecSeq_t

from DataStormContract.Session import Session
from DataStormContract.Session import SessionPrx

from DataStormContract.SubscriberSession_forward import _DataStormContract_SubscriberSessionPrx_t

from DataStormContract.TopicInfoSeq import _DataStormContract_TopicInfoSeq_t

from DataStormContract.TopicSpec import _DataStormContract_TopicSpec_t

from Ice.LongSeq import _Ice_LongSeq_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from DataStormContract.DataSample import DataSample
    from DataStormContract.DataSamples import DataSamples
    from DataStormContract.ElementInfo import ElementInfo
    from DataStormContract.ElementSpec import ElementSpec
    from DataStormContract.ElementSpecAck import ElementSpecAck
    from DataStormContract.TopicInfo import TopicInfo
    from DataStormContract.TopicSpec import TopicSpec
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class SubscriberSessionPrx(SessionPrx):

    def s(self, topicId: int, elementId: int, sample: DataSample, context: dict[str, str] | None = None) -> None:
        """
        Queue a sample with the subscribers of the topic element.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the sample belong.
        elementId : int
            The unique identifier for the element to which the sample belong.
        sample : DataSample
            The sample to queue.
        context : dict[str, str]
            The request context for the invocation.
        """
        return SubscriberSession._op_s.invoke(self, ((topicId, elementId, sample), context))

    def sAsync(self, topicId: int, elementId: int, sample: DataSample, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Queue a sample with the subscribers of the topic element.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the sample belong.
        elementId : int
            The unique identifier for the element to which the sample belong.
        sample : DataSample
            The sample to queue.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return SubscriberSession._op_s.invokeAsync(self, ((topicId, elementId, sample), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> SubscriberSessionPrx | None:
        return checkedCast(SubscriberSessionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[SubscriberSessionPrx | None ]:
        return checkedCastAsync(SubscriberSessionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> SubscriberSessionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> SubscriberSessionPrx | None:
        return uncheckedCast(SubscriberSessionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::SubscriberSession"

IcePy.defineProxy("::DataStormContract::SubscriberSession", SubscriberSessionPrx)

class SubscriberSession(Session, ABC):

    _ice_ids: Sequence[str] = ("::DataStormContract::Session", "::DataStormContract::SubscriberSession", "::Ice::Object", )
    _op_s: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::SubscriberSession"

    @abstractmethod
    def s(self, topicId: int, elementId: int, sample: DataSample, current: Current) -> None | Awaitable[None]:
        """
        Queue a sample with the subscribers of the topic element.
        
        Parameters
        ----------
        topicId : int
            The unique identifier for the topic to which the sample belong.
        elementId : int
            The unique identifier for the element to which the sample belong.
        sample : DataSample
            The sample to queue.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

SubscriberSession._op_s = IcePy.Operation(
    "s",
    "s",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_long, False, 0), ((), IcePy._t_long, False, 0), ((), _DataStormContract_DataSample_t, False, 0)),
    (),
    None,
    ())

__all__ = ["SubscriberSession", "SubscriberSessionPrx", "_DataStormContract_SubscriberSessionPrx_t"]
