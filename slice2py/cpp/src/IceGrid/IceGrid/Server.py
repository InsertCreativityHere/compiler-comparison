# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Ice.Process_forward import _Ice_ProcessPrx_t

from Ice.StringSeq import _Ice_StringSeq_t

from IceGrid.BadSignalException import _IceGrid_BadSignalException_t

from IceGrid.DeploymentException import _IceGrid_DeploymentException_t

from IceGrid.FileNotAvailableException import _IceGrid_FileNotAvailableException_t

from IceGrid.FileReader import FileReader
from IceGrid.FileReader import FileReaderPrx

from IceGrid.InternalServerDescriptor_forward import _IceGrid_InternalServerDescriptor_t

from IceGrid.ServerStartException import _IceGrid_ServerStartException_t

from IceGrid.ServerState import _IceGrid_ServerState_t

from IceGrid.ServerStopException import _IceGrid_ServerStopException_t

from IceGrid.Server_forward import _IceGrid_ServerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from Ice.Process import ProcessPrx
    from IceGrid.InternalServerDescriptor import InternalServerDescriptor
    from IceGrid.ServerState import ServerState
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ServerPrx(FileReaderPrx):

    def start(self, context: dict[str, str] | None = None) -> None:
        """
        Start the server.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return Server._op_start.invoke(self, ((), context))

    def startAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Start the server.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Server._op_start.invokeAsync(self, ((), context))

    def stop(self, context: dict[str, str] | None = None) -> None:
        """
        Stop the server. This method returns only when the server is deactivated. If the server doesn't stop after a
        configurable amount of time, it will be killed.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return Server._op_stop.invoke(self, ((), context))

    def stopAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Stop the server. This method returns only when the server is deactivated. If the server doesn't stop after a
        configurable amount of time, it will be killed.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Server._op_stop.invokeAsync(self, ((), context))

    def checkUpdate(self, svr: InternalServerDescriptor | None, noRestart: bool, context: dict[str, str] | None = None) -> bool:
        """
        Check if the given server can be loaded on this node.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        noRestart : bool
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        bool
            ``true`` if the server is inactive.
        
        Raises
        ------
        DeploymentException
            Raised if the server can't be updated.
        """
        return Server._op_checkUpdate.invoke(self, ((svr, noRestart), context))

    def checkUpdateAsync(self, svr: InternalServerDescriptor | None, noRestart: bool, context: dict[str, str] | None = None) -> Awaitable[bool]:
        """
        Check if the given server can be loaded on this node.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        noRestart : bool
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[bool]
            ``true`` if the server is inactive.
        """
        return Server._op_checkUpdate.invokeAsync(self, ((svr, noRestart), context))

    def setEnabled(self, enable: bool, context: dict[str, str] | None = None) -> None:
        """
        Enable or disable the server.
        
        Parameters
        ----------
        enable : bool
        context : dict[str, str]
            The request context for the invocation.
        """
        return Server._op_setEnabled.invoke(self, ((enable, ), context))

    def setEnabledAsync(self, enable: bool, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Enable or disable the server.
        
        Parameters
        ----------
        enable : bool
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Server._op_setEnabled.invokeAsync(self, ((enable, ), context))

    def isEnabled(self, context: dict[str, str] | None = None) -> bool:
        """
        Check if the server is enabled.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        bool
        """
        return Server._op_isEnabled.invoke(self, ((), context))

    def isEnabledAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        """
        Check if the server is enabled.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[bool]
        """
        return Server._op_isEnabled.invokeAsync(self, ((), context))

    def sendSignal(self, signal: str, context: dict[str, str] | None = None) -> None:
        """
        Send signal to the server
        
        Parameters
        ----------
        signal : str
        context : dict[str, str]
            The request context for the invocation.
        """
        return Server._op_sendSignal.invoke(self, ((signal, ), context))

    def sendSignalAsync(self, signal: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Send signal to the server
        
        Parameters
        ----------
        signal : str
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Server._op_sendSignal.invokeAsync(self, ((signal, ), context))

    def writeMessage(self, message: str, fd: int, context: dict[str, str] | None = None) -> None:
        """
        Write message on servers' stdout or stderr.
        
        Parameters
        ----------
        message : str
        fd : int
        context : dict[str, str]
            The request context for the invocation.
        """
        return Server._op_writeMessage.invoke(self, ((message, fd), context))

    def writeMessageAsync(self, message: str, fd: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Write message on servers' stdout or stderr.
        
        Parameters
        ----------
        message : str
        fd : int
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Server._op_writeMessage.invokeAsync(self, ((message, fd), context))

    def getState(self, context: dict[str, str] | None = None) -> ServerState:
        """
        Return the server state.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        ServerState
            The server state.
        """
        return Server._op_getState.invoke(self, ((), context))

    def getStateAsync(self, context: dict[str, str] | None = None) -> Awaitable[ServerState]:
        """
        Return the server state.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[ServerState]
            The server state.
        """
        return Server._op_getState.invokeAsync(self, ((), context))

    def getPid(self, context: dict[str, str] | None = None) -> int:
        """
        Get the server pid. Note that the value returned by this method is system dependant. On Unix operating systems,
        it's the pid value returned by the fork() system call and converted to an integer.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        int
        """
        return Server._op_getPid.invoke(self, ((), context))

    def getPidAsync(self, context: dict[str, str] | None = None) -> Awaitable[int]:
        """
        Get the server pid. Note that the value returned by this method is system dependant. On Unix operating systems,
        it's the pid value returned by the fork() system call and converted to an integer.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[int]
        """
        return Server._op_getPid.invokeAsync(self, ((), context))

    def setProcess(self, proc: ProcessPrx | None, context: dict[str, str] | None = None) -> None:
        """
        Set the process proxy.
        
        Parameters
        ----------
        proc : ProcessPrx | None
        context : dict[str, str]
            The request context for the invocation.
        """
        return Server._op_setProcess.invoke(self, ((proc, ), context))

    def setProcessAsync(self, proc: ProcessPrx | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Set the process proxy.
        
        Parameters
        ----------
        proc : ProcessPrx | None
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Server._op_setProcess.invokeAsync(self, ((proc, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ServerPrx | None:
        return checkedCast(ServerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ServerPrx | None ]:
        return checkedCastAsync(ServerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ServerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ServerPrx | None:
        return uncheckedCast(ServerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::Server"

IcePy.defineProxy("::IceGrid::Server", ServerPrx)

class Server(FileReader, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::FileReader", "::IceGrid::Server", )
    _op_start: IcePy.Operation
    _op_stop: IcePy.Operation
    _op_checkUpdate: IcePy.Operation
    _op_setEnabled: IcePy.Operation
    _op_isEnabled: IcePy.Operation
    _op_sendSignal: IcePy.Operation
    _op_writeMessage: IcePy.Operation
    _op_getState: IcePy.Operation
    _op_getPid: IcePy.Operation
    _op_setProcess: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::Server"

    @abstractmethod
    def start(self, current: Current) -> None | Awaitable[None]:
        """
        Start the server.
        
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

    @abstractmethod
    def stop(self, current: Current) -> None | Awaitable[None]:
        """
        Stop the server. This method returns only when the server is deactivated. If the server doesn't stop after a
        configurable amount of time, it will be killed.
        
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

    @abstractmethod
    def checkUpdate(self, svr: InternalServerDescriptor | None, noRestart: bool, current: Current) -> bool | Awaitable[bool]:
        """
        Check if the given server can be loaded on this node.
        
        Parameters
        ----------
        svr : InternalServerDescriptor | None
        noRestart : bool
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        bool | Awaitable[bool]
            ``true`` if the server is inactive.
        
        Raises
        ------
        DeploymentException
            Raised if the server can't be updated.
        """
        pass

    @abstractmethod
    def setEnabled(self, enable: bool, current: Current) -> None | Awaitable[None]:
        """
        Enable or disable the server.
        
        Parameters
        ----------
        enable : bool
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def isEnabled(self, current: Current) -> bool | Awaitable[bool]:
        """
        Check if the server is enabled.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        bool | Awaitable[bool]
        """
        pass

    @abstractmethod
    def sendSignal(self, signal: str, current: Current) -> None | Awaitable[None]:
        """
        Send signal to the server
        
        Parameters
        ----------
        signal : str
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def writeMessage(self, message: str, fd: int, current: Current) -> None | Awaitable[None]:
        """
        Write message on servers' stdout or stderr.
        
        Parameters
        ----------
        message : str
        fd : int
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def getState(self, current: Current) -> ServerState | Awaitable[ServerState]:
        """
        Return the server state.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        ServerState | Awaitable[ServerState]
            The server state.
        """
        pass

    @abstractmethod
    def getPid(self, current: Current) -> int | Awaitable[int]:
        """
        Get the server pid. Note that the value returned by this method is system dependant. On Unix operating systems,
        it's the pid value returned by the fork() system call and converted to an integer.
        
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        int | Awaitable[int]
        """
        pass

    @abstractmethod
    def setProcess(self, proc: ProcessPrx | None, current: Current) -> None | Awaitable[None]:
        """
        Set the process proxy.
        
        Parameters
        ----------
        proc : ProcessPrx | None
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

Server._op_start = IcePy.Operation(
    "start",
    "start",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_IceGrid_ServerStartException_t,))

Server._op_stop = IcePy.Operation(
    "stop",
    "stop",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_IceGrid_ServerStopException_t,))

Server._op_checkUpdate = IcePy.Operation(
    "checkUpdate",
    "checkUpdate",
    OperationMode.Normal,
    None,
    (),
    (((), _IceGrid_InternalServerDescriptor_t, False, 0), ((), IcePy._t_bool, False, 0)),
    (),
    ((), IcePy._t_bool, False, 0),
    (_IceGrid_DeploymentException_t,))

Server._op_setEnabled = IcePy.Operation(
    "setEnabled",
    "setEnabled",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_bool, False, 0),),
    (),
    None,
    ())

Server._op_isEnabled = IcePy.Operation(
    "isEnabled",
    "isEnabled",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

Server._op_sendSignal = IcePy.Operation(
    "sendSignal",
    "sendSignal",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    (_IceGrid_BadSignalException_t,))

Server._op_writeMessage = IcePy.Operation(
    "writeMessage",
    "writeMessage",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    ())

Server._op_getState = IcePy.Operation(
    "getState",
    "getState",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), _IceGrid_ServerState_t, False, 0),
    ())

Server._op_getPid = IcePy.Operation(
    "getPid",
    "getPid",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    ((), IcePy._t_int, False, 0),
    ())

Server._op_setProcess = IcePy.Operation(
    "setProcess",
    "setProcess",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ProcessPrx_t, False, 0),),
    (),
    None,
    ())

__all__ = ["Server", "ServerPrx", "_IceGrid_ServerPrx_t"]
