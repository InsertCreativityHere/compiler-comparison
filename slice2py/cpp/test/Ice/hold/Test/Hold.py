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

from Test.Hold_forward import _Test_HoldPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class HoldPrx(ObjectPrx):

    def putOnHold(self, delay: int, context: dict[str, str] | None = None) -> None:
        """
        Puts the adapter on hold, and optionally reactivates it.
        
        Parameters
        ----------
        delay : int
            When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
            immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
            milliseconds, puts the adapter on hold and then immediately reactivates it.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Hold._op_putOnHold.invoke(self, ((delay, ), context))

    def putOnHoldAsync(self, delay: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Puts the adapter on hold, and optionally reactivates it.
        
        Parameters
        ----------
        delay : int
            When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
            immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
            milliseconds, puts the adapter on hold and then immediately reactivates it.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Hold._op_putOnHold.invokeAsync(self, ((delay, ), context))

    def waitForHold(self, context: dict[str, str] | None = None) -> None:
        """
        Starts a background task that calls waitForHold and activate on the adapter.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return Hold._op_waitForHold.invoke(self, ((), context))

    def waitForHoldAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Starts a background task that calls waitForHold and activate on the adapter.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Hold._op_waitForHold.invokeAsync(self, ((), context))

    def setOneway(self, value: int, expected: int, context: dict[str, str] | None = None) -> None:
        """
        Saves value as the last value.
        
        Parameters
        ----------
        value : int
            The new value.
        expected : int
            The current value as expected by the caller.
        context : dict[str, str]
            The request context for the invocation.
        """
        return Hold._op_setOneway.invoke(self, ((value, expected), context))

    def setOnewayAsync(self, value: int, expected: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Saves value as the last value.
        
        Parameters
        ----------
        value : int
            The new value.
        expected : int
            The current value as expected by the caller.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Hold._op_setOneway.invokeAsync(self, ((value, expected), context))

    def set(self, value: int, delay: int, context: dict[str, str] | None = None) -> int:
        """
        Saves value as the last value after a delay.
        
        Parameters
        ----------
        value : int
            The new value.
        delay : int
            The delay in milliseconds.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        int
            The previous value.
        """
        return Hold._op_set.invoke(self, ((value, delay), context))

    def setAsync(self, value: int, delay: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        """
        Saves value as the last value after a delay.
        
        Parameters
        ----------
        value : int
            The new value.
        delay : int
            The delay in milliseconds.
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[int]
            The previous value.
        """
        return Hold._op_set.invokeAsync(self, ((value, delay), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        """
        Shuts down the server.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        """
        return Hold._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        """
        Shuts down the server.
        
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[None]
            An awaitable that is completed when the invocation completes.
        """
        return Hold._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> HoldPrx | None:
        return checkedCast(HoldPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[HoldPrx | None ]:
        return checkedCastAsync(HoldPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> HoldPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> HoldPrx | None:
        return uncheckedCast(HoldPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Hold"

IcePy.defineProxy("::Test::Hold", HoldPrx)

class Hold(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Hold", )
    _op_putOnHold: IcePy.Operation
    _op_waitForHold: IcePy.Operation
    _op_setOneway: IcePy.Operation
    _op_set: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Hold"

    @abstractmethod
    def putOnHold(self, delay: int, current: Current) -> None | Awaitable[None]:
        """
        Puts the adapter on hold, and optionally reactivates it.
        
        Parameters
        ----------
        delay : int
            When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
            immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
            milliseconds, puts the adapter on hold and then immediately reactivates it.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def waitForHold(self, current: Current) -> None | Awaitable[None]:
        """
        Starts a background task that calls waitForHold and activate on the adapter.
        
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
    def setOneway(self, value: int, expected: int, current: Current) -> None | Awaitable[None]:
        """
        Saves value as the last value.
        
        Parameters
        ----------
        value : int
            The new value.
        expected : int
            The current value as expected by the caller.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        """
        pass

    @abstractmethod
    def set(self, value: int, delay: int, current: Current) -> int | Awaitable[int]:
        """
        Saves value as the last value after a delay.
        
        Parameters
        ----------
        value : int
            The new value.
        delay : int
            The delay in milliseconds.
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        int | Awaitable[int]
            The previous value.
        """
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        """
        Shuts down the server.
        
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

Hold._op_putOnHold = IcePy.Operation(
    "putOnHold",
    "putOnHold",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

Hold._op_waitForHold = IcePy.Operation(
    "waitForHold",
    "waitForHold",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Hold._op_setOneway = IcePy.Operation(
    "setOneway",
    "setOneway",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    ())

Hold._op_set = IcePy.Operation(
    "set",
    "set",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    ((), IcePy._t_int, False, 0),
    ())

Hold._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["Hold", "HoldPrx", "_Test_HoldPrx_t"]
