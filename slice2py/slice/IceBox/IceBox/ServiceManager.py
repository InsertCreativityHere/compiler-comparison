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

from IceBox.AlreadyStartedException import _IceBox_AlreadyStartedException_t

from IceBox.AlreadyStoppedException import _IceBox_AlreadyStoppedException_t

from IceBox.NoSuchServiceException import _IceBox_NoSuchServiceException_t

from IceBox.ServiceManager_forward import _IceBox_ServiceManagerPrx_t

from IceBox.ServiceObserver_forward import _IceBox_ServiceObserverPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from IceBox.ServiceObserver import ServiceObserverPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ServiceManagerPrx(ObjectPrx):

    def startService(self, service: str, context: dict[str, str] | None = None) -> None:
        """
        Starts a service.
        
        Parameters
        ----------
        service : str
            The service name.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        AlreadyStartedException
            Thrown when the service is already running.
        NoSuchServiceException
            Thrown when IceBox does not know a service named ``service``.
        """
        return ServiceManager._op_startService.invoke(self, ((service, ), context))

    def startServiceAsync(self, service: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Starts a service.
        
        Parameters
        ----------
        service : str
            The service name.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ServiceManager._op_startService.invokeAsync(self, ((service, ), context))

    def stopService(self, service: str, context: dict[str, str] | None = None) -> None:
        """
        Stops a service.
        
        Parameters
        ----------
        service : str
            The service name.
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        AlreadyStoppedException
            Thrown when the service is already stopped.
        NoSuchServiceException
            Thrown when IceBox does not know a service named ``service``.
        """
        return ServiceManager._op_stopService.invoke(self, ((service, ), context))

    def stopServiceAsync(self, service: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Stops a service.
        
        Parameters
        ----------
        service : str
            The service name.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ServiceManager._op_stopService.invokeAsync(self, ((service, ), context))

    def addObserver(self, observer: ServiceObserverPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Registers a new observer with this service manager.
        
        Parameters
        ----------
        observer : ServiceObserverPrx | None
            The new observer.
        context : dict[str, str]
            The request context for the invocation.
        """
        return ServiceManager._op_addObserver.invoke(self, ((observer, ), context))

    def addObserverAsync(self, observer: ServiceObserverPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Registers a new observer with this service manager.
        
        Parameters
        ----------
        observer : ServiceObserverPrx | None
            The new observer.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ServiceManager._op_addObserver.invokeAsync(self, ((observer, ), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        """
        Shuts down all services.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return ServiceManager._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Shuts down all services.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return ServiceManager._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ServiceManagerPrx | None:
        return checkedCast(ServiceManagerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ServiceManagerPrx | None ]:
        return checkedCastAsync(ServiceManagerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ServiceManagerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ServiceManagerPrx | None:
        return uncheckedCast(ServiceManagerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceBox::ServiceManager"

IcePy.defineProxy("::IceBox::ServiceManager", ServiceManagerPrx)

class ServiceManager(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceBox::ServiceManager", )
    _op_startService: IcePy.Operation
    _op_stopService: IcePy.Operation
    _op_addObserver: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceBox::ServiceManager"

    @abstractmethod
    def startService(self, service: str, current: Current) -> None | Awaitable[None]:
        """
        Starts a service.
        
        Parameters
        ----------
        service : str
            The service name.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        AlreadyStartedException
            Thrown when the service is already running.
        NoSuchServiceException
            Thrown when IceBox does not know a service named ``service``.
        """
        pass

    @abstractmethod
    def stopService(self, service: str, current: Current) -> None | Awaitable[None]:
        """
        Stops a service.
        
        Parameters
        ----------
        service : str
            The service name.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        AlreadyStoppedException
            Thrown when the service is already stopped.
        NoSuchServiceException
            Thrown when IceBox does not know a service named ``service``.
        """
        pass

    @abstractmethod
    def addObserver(self, observer: ServiceObserverPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Registers a new observer with this service manager.
        
        Parameters
        ----------
        observer : ServiceObserverPrx | None
            The new observer.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        """
        Shuts down all services.
        
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

ServiceManager._op_startService = IcePy.Operation(
    "startService",
    "startService",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    (_IceBox_AlreadyStartedException_t, _IceBox_NoSuchServiceException_t))

ServiceManager._op_stopService = IcePy.Operation(
    "stopService",
    "stopService",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    (_IceBox_AlreadyStoppedException_t, _IceBox_NoSuchServiceException_t))

ServiceManager._op_addObserver = IcePy.Operation(
    "addObserver",
    "addObserver",
    OperationMode.Normal,
    None,
    (),
    (((), _IceBox_ServiceObserverPrx_t, False, 0),),
    (),
    None,
    ())

ServiceManager._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["ServiceManager", "ServiceManagerPrx", "_IceBox_ServiceManagerPrx_t"]
