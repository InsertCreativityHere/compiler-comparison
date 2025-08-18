# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.IdentitySeq import _Ice_IdentitySeq_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from IceStorm.AlreadySubscribed import _IceStorm_AlreadySubscribed_t

from IceStorm.BadQoS import _IceStorm_BadQoS_t

from IceStorm.LinkExists import _IceStorm_LinkExists_t

from IceStorm.LinkInfoSeq import _IceStorm_LinkInfoSeq_t

from IceStorm.NoSuchLink import _IceStorm_NoSuchLink_t

from IceStorm.QoS import _IceStorm_QoS_t

from IceStorm.ReapWouldBlock import _IceStorm_ReapWouldBlock_t

from IceStorm.Topic import Topic
from IceStorm.Topic import TopicPrx

from IceStorm.TopicInternal_forward import _IceStorm_TopicInternalPrx_t

from IceStorm.TopicLink_forward import _IceStorm_TopicLinkPrx_t

from IceStorm.Topic_forward import _IceStorm_TopicPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from Ice.ObjectPrx import ObjectPrx
    from IceStorm.LinkInfo import LinkInfo
    from IceStorm.TopicLink import TopicLinkPrx
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class TopicInternalPrx(TopicPrx):

    def getLinkProxy(self, context: dict[str, str] | None = None) -> TopicLinkPrx | None:
        """
        Retrieve a proxy to the TopicLink interface.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        TopicLinkPrx | None
            The TopicLink for the Topic.
        """
        return TopicInternal._op_getLinkProxy.invoke(self, ((), context))

    def getLinkProxyAsync(self, context: dict[str, str] | None = None) -> Awaitable[TopicLinkPrx | None]:
        """
        Retrieve a proxy to the TopicLink interface.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[TopicLinkPrx | None]
            The TopicLink for the Topic.
        """
        return TopicInternal._op_getLinkProxy.invokeAsync(self, ((), context))

    def reap(self, id: Sequence[Identity], context: dict[str, str] | None = None) -> None:
        """
        Reap the given identities.
        
        Parameters
        ----------
        id : Sequence[Identity]
            The sequence of identities.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        ReapWouldBlock
            Raised if the reap call would block.
        """
        return TopicInternal._op_reap.invoke(self, ((id, ), context))

    def reapAsync(self, id: Sequence[Identity], context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Reap the given identities.
        
        Parameters
        ----------
        id : Sequence[Identity]
            The sequence of identities.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return TopicInternal._op_reap.invokeAsync(self, ((id, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TopicInternalPrx | None:
        return checkedCast(TopicInternalPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TopicInternalPrx | None ]:
        return checkedCastAsync(TopicInternalPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TopicInternalPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TopicInternalPrx | None:
        return uncheckedCast(TopicInternalPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStorm::TopicInternal"

IcePy.defineProxy("::IceStorm::TopicInternal", TopicInternalPrx)

class TopicInternal(Topic, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceStorm::Topic", "::IceStorm::TopicInternal", )
    _op_getLinkProxy: IcePy.Operation
    _op_reap: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceStorm::TopicInternal"

    @abstractmethod
    def getLinkProxy(self, current: Current) -> TopicLinkPrx | None | Awaitable[TopicLinkPrx | None]:
        """
        Retrieve a proxy to the TopicLink interface.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        TopicLinkPrx | None | Awaitable[TopicLinkPrx | None]
            The TopicLink for the Topic.
        """
        pass

    @abstractmethod
    def reap(self, id: list[Identity], current: Current) -> None | Awaitable[None]:
        """
        Reap the given identities.
        
        Parameters
        ----------
        id : list[Identity]
            The sequence of identities.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        ReapWouldBlock
            Raised if the reap call would block.
        """
        pass

TopicInternal._op_getLinkProxy = IcePy.Operation(
    "getLinkProxy",
    "getLinkProxy",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceStorm_TopicLinkPrx_t, False, 0),
    ())

TopicInternal._op_reap = IcePy.Operation(
    "reap",
    "reap",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_IdentitySeq_t, False, 0),),
    (),
    None,
    (_IceStorm_ReapWouldBlock_t,))

__all__ = ["TopicInternal", "TopicInternalPrx", "_IceStorm_TopicInternalPrx_t"]
