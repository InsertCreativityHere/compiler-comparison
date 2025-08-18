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

from IceStorm.EventDataSeq import _IceStorm_EventDataSeq_t

from IceStorm.TopicLink_forward import _IceStorm_TopicLinkPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceStorm.EventData import EventData
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TopicLinkPrx(ObjectPrx):

    def forward(self, events: Sequence[EventData], context: dict[str, str] | None = None) -> None:
        """
        Forward a sequence of events.
        
        Parameters
        ----------
        events : Sequence[EventData]
            The events to forward.
        context : dict[str, str]
            The request context for the invocation.
        """
        return TopicLink._op_forward.invoke(self, ((events, ), context))

    def forwardAsync(self, events: Sequence[EventData], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Forward a sequence of events.
        
        Parameters
        ----------
        events : Sequence[EventData]
            The events to forward.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return TopicLink._op_forward.invokeAsync(self, ((events, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TopicLinkPrx | None:
        return checkedCast(TopicLinkPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TopicLinkPrx | None ]:
        return checkedCastAsync(TopicLinkPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TopicLinkPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TopicLinkPrx | None:
        return uncheckedCast(TopicLinkPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStorm::TopicLink"

IcePy.defineProxy("::IceStorm::TopicLink", TopicLinkPrx)

class TopicLink(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceStorm::TopicLink", )
    _op_forward: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStorm::TopicLink"

    @abstractmethod
    def forward(self, events: list[EventData], current: Current) -> None | Awaitable[None]:
        """
        Forward a sequence of events.
        
        Parameters
        ----------
        events : list[EventData]
            The events to forward.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

TopicLink._op_forward = IcePy.Operation(
    "forward",
    "forward",
    OperationMode.Normal,
    None,
    (),
    (((), _IceStorm_EventDataSeq_t, False, 0),),
    (),
    None,
    ())

__all__ = ["TopicLink", "TopicLinkPrx", "_IceStorm_TopicLinkPrx_t"]
