# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Ice.OperationMode import OperationMode

from IceGrid.AdapterActiveException import _IceGrid_AdapterActiveException_t

from IceGrid.AdapterNotActiveException import _IceGrid_AdapterNotActiveException_t

from IceGrid.Adapter_forward import _IceGrid_AdapterPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class AdapterPrx(ObjectPrx):

    def activate(self, context: dict[str, str] | None = None) -> ObjectPrx | None:
        """
        Activate this adapter. If this adapter can be activated, this will activate the adapter and return the direct
        proxy of the adapter once it's active. If this adapter can be activated on demand, this will return 0 if the
        adapter is inactive or the adapter direct proxy it's active.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        ObjectPrx | None
        """
        return Adapter._op_activate.invoke(self, ((), context))

    def activateAsync(self, context: dict[str, str] | None = None) -> Awaitable[ObjectPrx | None]:
        """
        Activate this adapter. If this adapter can be activated, this will activate the adapter and return the direct
        proxy of the adapter once it's active. If this adapter can be activated on demand, this will return 0 if the
        adapter is inactive or the adapter direct proxy it's active.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[ObjectPrx | None]
        """
        return Adapter._op_activate.invokeAsync(self, ((), context))

    def getDirectProxy(self, context: dict[str, str] | None = None) -> ObjectPrx | None:
        """
        Get the adapter direct proxy. The adapter direct proxy is a proxy created with the object adapter. The proxy
        contains the last known adapter endpoints.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        ObjectPrx | None
            A direct proxy containing the last known adapter endpoints if the adapter is already active.
        """
        return Adapter._op_getDirectProxy.invoke(self, ((), context))

    def getDirectProxyAsync(self, context: dict[str, str] | None = None) -> Awaitable[ObjectPrx | None]:
        """
        Get the adapter direct proxy. The adapter direct proxy is a proxy created with the object adapter. The proxy
        contains the last known adapter endpoints.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[ObjectPrx | None]
            A direct proxy containing the last known adapter endpoints if the adapter is already active.
        """
        return Adapter._op_getDirectProxy.invokeAsync(self, ((), context))

    def setDirectProxy(self, proxy: ObjectPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Set the direct proxy for this adapter.
        
        Parameters
        ----------
        proxy : ObjectPrx | None
            The direct proxy. The direct proxy should be created with the object adapter and should contain the
            object adapter endpoints.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        AdapterActiveException
            The adapter is already active. It's not possible to override the direct proxy of
            an active adapter.
        """
        return Adapter._op_setDirectProxy.invoke(self, ((proxy, ), context))

    def setDirectProxyAsync(self, proxy: ObjectPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Set the direct proxy for this adapter.
        
        Parameters
        ----------
        proxy : ObjectPrx | None
            The direct proxy. The direct proxy should be created with the object adapter and should contain the
            object adapter endpoints.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Adapter._op_setDirectProxy.invokeAsync(self, ((proxy, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> AdapterPrx | None:
        return checkedCast(AdapterPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[AdapterPrx | None ]:
        return checkedCastAsync(AdapterPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> AdapterPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> AdapterPrx | None:
        return uncheckedCast(AdapterPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::Adapter"

IcePy.defineProxy("::IceGrid::Adapter", AdapterPrx)

class Adapter(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::Adapter", )
    _op_activate: IcePy.Operation
    _op_getDirectProxy: IcePy.Operation
    _op_setDirectProxy: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::Adapter"

    @abstractmethod
    def activate(self, current: Current) -> ObjectPrx | None | Awaitable[ObjectPrx | None]:
        """
        Activate this adapter. If this adapter can be activated, this will activate the adapter and return the direct
        proxy of the adapter once it's active. If this adapter can be activated on demand, this will return 0 if the
        adapter is inactive or the adapter direct proxy it's active.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        ObjectPrx | None | Awaitable[ObjectPrx | None]
        """
        pass

    @abstractmethod
    def getDirectProxy(self, current: Current) -> ObjectPrx | None | Awaitable[ObjectPrx | None]:
        """
        Get the adapter direct proxy. The adapter direct proxy is a proxy created with the object adapter. The proxy
        contains the last known adapter endpoints.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        ObjectPrx | None | Awaitable[ObjectPrx | None]
            A direct proxy containing the last known adapter endpoints if the adapter is already active.
        """
        pass

    @abstractmethod
    def setDirectProxy(self, proxy: ObjectPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Set the direct proxy for this adapter.
        
        Parameters
        ----------
        proxy : ObjectPrx | None
            The direct proxy. The direct proxy should be created with the object adapter and should contain the
            object adapter endpoints.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        AdapterActiveException
            The adapter is already active. It's not possible to override the direct proxy of
            an active adapter.
        """
        pass

Adapter._op_activate = IcePy.Operation(
    "activate",
    "activate",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_ObjectPrx_t, False, 0),
    ())

Adapter._op_getDirectProxy = IcePy.Operation(
    "getDirectProxy",
    "getDirectProxy",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _Ice_ObjectPrx_t, False, 0),
    (_IceGrid_AdapterNotActiveException_t,))

Adapter._op_setDirectProxy = IcePy.Operation(
    "setDirectProxy",
    "setDirectProxy",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ObjectPrx_t, False, 0),),
    (),
    None,
    (_IceGrid_AdapterActiveException_t,))

__all__ = ["Adapter", "AdapterPrx", "_IceGrid_AdapterPrx_t"]
