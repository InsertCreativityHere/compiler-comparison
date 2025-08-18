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

from IceStormElection.LogUpdate import _IceStormElection_LogUpdate_t

from IceStormElection.TopicContentSeq import _IceStormElection_TopicContentSeq_t

from IceStormElection.TopicManagerSync_forward import _IceStormElection_TopicManagerSyncPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceStormElection.LogUpdate import LogUpdate
    from IceStormElection.TopicContent import TopicContent
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TopicManagerSyncPrx(ObjectPrx):

    def getContent(self, context: dict[str, str] | None = None) -> tuple[LogUpdate, list[TopicContent]]:
        """
        Retrieve the topic content.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        tuple[LogUpdate, list[TopicContent]]
        
            A tuple containing:
                - LogUpdate The last log update token.
                - list[TopicContent] The topic content.
        """
        return TopicManagerSync._op_getContent.invoke(self, ((), context))

    def getContentAsync(self, context: dict[str, str] | None = None) -> Awaitable[tuple[LogUpdate, list[TopicContent]]]:
        """
        Retrieve the topic content.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[tuple[LogUpdate, list[TopicContent]]]
        
            A tuple containing:
                - LogUpdate The last log update token.
                - list[TopicContent] The topic content.
        """
        return TopicManagerSync._op_getContent.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TopicManagerSyncPrx | None:
        return checkedCast(TopicManagerSyncPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TopicManagerSyncPrx | None ]:
        return checkedCastAsync(TopicManagerSyncPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TopicManagerSyncPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TopicManagerSyncPrx | None:
        return uncheckedCast(TopicManagerSyncPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStormElection::TopicManagerSync"

IcePy.defineProxy("::IceStormElection::TopicManagerSync", TopicManagerSyncPrx)

class TopicManagerSync(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceStormElection::TopicManagerSync", )
    _op_getContent: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStormElection::TopicManagerSync"

    @abstractmethod
    def getContent(self, current: Current) -> tuple[LogUpdate, Sequence[TopicContent]] | Awaitable[tuple[LogUpdate, Sequence[TopicContent]]]:
        """
        Retrieve the topic content.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        tuple[LogUpdate, Sequence[TopicContent]] | Awaitable[tuple[LogUpdate, Sequence[TopicContent]]]
        
            A tuple containing:
                - LogUpdate The last log update token.
                - Sequence[TopicContent] The topic content.
        """
        pass

TopicManagerSync._op_getContent = IcePy.Operation(
    "getContent",
    "getContent",
    OperationMode.Normal,
    None,
    (),
    (),
    (((), _IceStormElection_LogUpdate_t, False, 0), ((), _IceStormElection_TopicContentSeq_t, False, 0)),
    None,
    ())

__all__ = ["TopicManagerSync", "TopicManagerSyncPrx", "_IceStormElection_TopicManagerSyncPrx_t"]
