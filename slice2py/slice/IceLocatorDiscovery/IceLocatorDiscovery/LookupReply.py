# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Locator_forward import _Ice_LocatorPrx_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from IceLocatorDiscovery.LookupReply_forward import _IceLocatorDiscovery_LookupReplyPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Locator import LocatorPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class LookupReplyPrx(ObjectPrx):

    def foundLocator(self, prx: LocatorPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Provides a reply to a :meth:`IceLocatorDiscovery.LookupPrx.findLocator` request.
        
        Parameters
        ----------
        prx : LocatorPrx | None
            The proxy of the locator.
        context : dict[str, str]
            The request context for the invocation.
        """
        return LookupReply._op_foundLocator.invoke(self, ((prx, ), context))

    def foundLocatorAsync(self, prx: LocatorPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Provides a reply to a :meth:`IceLocatorDiscovery.LookupPrx.findLocator` request.
        
        Parameters
        ----------
        prx : LocatorPrx | None
            The proxy of the locator.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return LookupReply._op_foundLocator.invokeAsync(self, ((prx, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> LookupReplyPrx | None:
        return checkedCast(LookupReplyPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[LookupReplyPrx | None ]:
        return checkedCastAsync(LookupReplyPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> LookupReplyPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> LookupReplyPrx | None:
        return uncheckedCast(LookupReplyPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceLocatorDiscovery::LookupReply"

IcePy.defineProxy("::IceLocatorDiscovery::LookupReply", LookupReplyPrx)

class LookupReply(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceLocatorDiscovery::LookupReply", )
    _op_foundLocator: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceLocatorDiscovery::LookupReply"

    @abstractmethod
    def foundLocator(self, prx: LocatorPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Provides a reply to a :meth:`IceLocatorDiscovery.LookupPrx.findLocator` request.
        
        Parameters
        ----------
        prx : LocatorPrx | None
            The proxy of the locator.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

LookupReply._op_foundLocator = IcePy.Operation(
    "foundLocator",
    "foundLocator",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_LocatorPrx_t, False, 0),),
    (),
    None,
    ())

__all__ = ["LookupReply", "LookupReplyPrx", "_IceLocatorDiscovery_LookupReplyPrx_t"]
