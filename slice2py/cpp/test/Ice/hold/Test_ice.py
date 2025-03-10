# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'Hold' not in _M_Test.__dict__:
    _M_Test._t_HoldPrx = IcePy.declareProxy('::Test::Hold')

if 'HoldPrx' not in _M_Test.__dict__:
    _M_Test.HoldPrx = None
    class HoldPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new HoldPrx proxy
            
            Parameters
            ----------
            communicator : Ice.Communicator
                The communicator of the new proxy.
            proxyString : str
                The string representation of the proxy.
            
            Raises
            ------
            ParseException
                Thrown when proxyString is not a valid proxy string.
            """
            super().__init__(communicator, proxyString)

        def putOnHold(self, delay, context=None):
            """
            Puts the adapter on hold, and optionally reactivates it.
            
            Parameters
            ----------
            delay : int
                When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
                immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
                milliseconds, puts the adapter on hold and then immediately reactivates it.
            context : Ice.Context
                The request context for the invocation.
            """
            return _M_Test.Hold._op_putOnHold.invoke(self, ((delay, ), context))

        def putOnHoldAsync(self, delay, context=None):
            """
            Puts the adapter on hold, and optionally reactivates it.
            
            Parameters
            ----------
            delay : int
                When less than 0, puts the adapter on hold indefinitely. When 0, puts the adapter on hold and
                immediately reactivates it. When greater than 0, starts a background task that sleeps for delay
                milliseconds, puts the adapter on hold and then immediately reactivates it.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_Test.Hold._op_putOnHold.invokeAsync(self, ((delay, ), context))

        def waitForHold(self, context=None):
            """
            Starts a background task that calls waitForHold and activate on the adapter.
            
            Parameters
            ----------
            context : Ice.Context
                The request context for the invocation.
            """
            return _M_Test.Hold._op_waitForHold.invoke(self, ((), context))

        def waitForHoldAsync(self, context=None):
            """
            Starts a background task that calls waitForHold and activate on the adapter.
            
            Parameters
            ----------
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_Test.Hold._op_waitForHold.invokeAsync(self, ((), context))

        def setOneway(self, value, expected, context=None):
            """
            Saves value as the last value.
            
            Parameters
            ----------
            value : int
                The new value.
            expected : int
                The current value as expected by the caller.
            context : Ice.Context
                The request context for the invocation.
            """
            return _M_Test.Hold._op_setOneway.invoke(self, ((value, expected), context))

        def setOnewayAsync(self, value, expected, context=None):
            """
            Saves value as the last value.
            
            Parameters
            ----------
            value : int
                The new value.
            expected : int
                The current value as expected by the caller.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_Test.Hold._op_setOneway.invokeAsync(self, ((value, expected), context))

        def set(self, value, delay, context=None):
            """
            Saves value as the last value after a delay.
            
            Parameters
            ----------
            value : int
                The new value.
            delay : int
                The delay in milliseconds.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            int
                The previous value.
            """
            return _M_Test.Hold._op_set.invoke(self, ((value, delay), context))

        def setAsync(self, value, delay, context=None):
            """
            Saves value as the last value after a delay.
            
            Parameters
            ----------
            value : int
                The new value.
            delay : int
                The delay in milliseconds.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_Test.Hold._op_set.invokeAsync(self, ((value, delay), context))

        def shutdown(self, context=None):
            """
            Shuts down the server.
            
            Parameters
            ----------
            context : Ice.Context
                The request context for the invocation.
            """
            return _M_Test.Hold._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            """
            Shuts down the server.
            
            Parameters
            ----------
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_Test.Hold._op_shutdown.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.HoldPrx.ice_checkedCast(proxy, '::Test::Hold', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.HoldPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Hold'
    _M_Test._t_HoldPrx = IcePy.defineProxy('::Test::Hold', HoldPrx)

    _M_Test.HoldPrx = HoldPrx
    del HoldPrx

    _M_Test.Hold = None
    class Hold(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Hold')

        def ice_id(self, current=None):
            return '::Test::Hold'

        @staticmethod
        def ice_staticId():
            return '::Test::Hold'

        def putOnHold(self, delay, current=None):
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
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'putOnHold' not implemented")

        def waitForHold(self, current=None):
            """
            Starts a background task that calls waitForHold and activate on the adapter.
            
            Parameters
            ----------
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'waitForHold' not implemented")

        def setOneway(self, value, expected, current=None):
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
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'setOneway' not implemented")

        def set(self, value, delay, current=None):
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
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'set' not implemented")

        def shutdown(self, current=None):
            """
            Shuts down the server.
            
            Parameters
            ----------
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_HoldDisp)

        __repr__ = __str__

    Hold._op_putOnHold = IcePy.Operation('putOnHold', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    Hold._op_waitForHold = IcePy.Operation('waitForHold', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    Hold._op_setOneway = IcePy.Operation('setOneway', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())
    Hold._op_set = IcePy.Operation('set', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), ((), IcePy._t_int, False, 0), ())
    Hold._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Hold = Hold
    del Hold

# End of module Test
