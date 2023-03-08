# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `ACMTest.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def sleep(self, seconds, context=None):
            return _M_Test.TestIntf._op_sleep.invoke(self, ((seconds, ), context))

        def sleepAsync(self, seconds, context=None):
            return _M_Test.TestIntf._op_sleep.invokeAsync(self, ((seconds, ), context))

        def begin_sleep(self, seconds, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_sleep.begin(self, ((seconds, ), _response, _ex, _sent, context))

        def end_sleep(self, _r):
            return _M_Test.TestIntf._op_sleep.end(self, _r)

        def sleepAndHold(self, seconds, context=None):
            return _M_Test.TestIntf._op_sleepAndHold.invoke(self, ((seconds, ), context))

        def sleepAndHoldAsync(self, seconds, context=None):
            return _M_Test.TestIntf._op_sleepAndHold.invokeAsync(self, ((seconds, ), context))

        def begin_sleepAndHold(self, seconds, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_sleepAndHold.begin(self, ((seconds, ), _response, _ex, _sent, context))

        def end_sleepAndHold(self, _r):
            return _M_Test.TestIntf._op_sleepAndHold.end(self, _r)

        def interruptSleep(self, context=None):
            return _M_Test.TestIntf._op_interruptSleep.invoke(self, ((), context))

        def interruptSleepAsync(self, context=None):
            return _M_Test.TestIntf._op_interruptSleep.invokeAsync(self, ((), context))

        def begin_interruptSleep(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_interruptSleep.begin(self, ((), _response, _ex, _sent, context))

        def end_interruptSleep(self, _r):
            return _M_Test.TestIntf._op_interruptSleep.end(self, _r)

        def startHeartbeatCount(self, context=None):
            return _M_Test.TestIntf._op_startHeartbeatCount.invoke(self, ((), context))

        def startHeartbeatCountAsync(self, context=None):
            return _M_Test.TestIntf._op_startHeartbeatCount.invokeAsync(self, ((), context))

        def begin_startHeartbeatCount(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_startHeartbeatCount.begin(self, ((), _response, _ex, _sent, context))

        def end_startHeartbeatCount(self, _r):
            return _M_Test.TestIntf._op_startHeartbeatCount.end(self, _r)

        def waitForHeartbeatCount(self, count, context=None):
            return _M_Test.TestIntf._op_waitForHeartbeatCount.invoke(self, ((count, ), context))

        def waitForHeartbeatCountAsync(self, count, context=None):
            return _M_Test.TestIntf._op_waitForHeartbeatCount.invokeAsync(self, ((count, ), context))

        def begin_waitForHeartbeatCount(self, count, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_waitForHeartbeatCount.begin(self, ((count, ), _response, _ex, _sent, context))

        def end_waitForHeartbeatCount(self, _r):
            return _M_Test.TestIntf._op_waitForHeartbeatCount.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.TestIntfPrx.ice_checkedCast(proxy, '::Test::TestIntf', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.TestIntfPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::TestIntf'
    _M_Test._t_TestIntfPrx = IcePy.defineProxy('::Test::TestIntf', TestIntfPrx)

    _M_Test.TestIntfPrx = TestIntfPrx
    del TestIntfPrx

    _M_Test.TestIntf = Ice.createTempClass()
    class TestIntf(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::TestIntf')

        def ice_id(self, current=None):
            return '::Test::TestIntf'

        @staticmethod
        def ice_staticId():
            return '::Test::TestIntf'

        def sleep(self, seconds, current=None):
            raise NotImplementedError("servant method 'sleep' not implemented")

        def sleepAndHold(self, seconds, current=None):
            raise NotImplementedError("servant method 'sleepAndHold' not implemented")

        def interruptSleep(self, current=None):
            raise NotImplementedError("servant method 'interruptSleep' not implemented")

        def startHeartbeatCount(self, current=None):
            raise NotImplementedError("servant method 'startHeartbeatCount' not implemented")

        def waitForHeartbeatCount(self, count, current=None):
            raise NotImplementedError("servant method 'waitForHeartbeatCount' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_sleep = IcePy.Operation('sleep', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    TestIntf._op_sleepAndHold = IcePy.Operation('sleepAndHold', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    TestIntf._op_interruptSleep = IcePy.Operation('interruptSleep', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_startHeartbeatCount = IcePy.Operation('startHeartbeatCount', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_waitForHeartbeatCount = IcePy.Operation('waitForHeartbeatCount', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

_M_Test._t_RemoteObjectAdapter = IcePy.defineValue('::Test::RemoteObjectAdapter', Ice.Value, -1, (), False, True, None, ())

if 'RemoteObjectAdapterPrx' not in _M_Test.__dict__:
    _M_Test.RemoteObjectAdapterPrx = Ice.createTempClass()
    class RemoteObjectAdapterPrx(Ice.ObjectPrx):

        def getTestIntf(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_getTestIntf.invoke(self, ((), context))

        def getTestIntfAsync(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_getTestIntf.invokeAsync(self, ((), context))

        def begin_getTestIntf(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteObjectAdapter._op_getTestIntf.begin(self, ((), _response, _ex, _sent, context))

        def end_getTestIntf(self, _r):
            return _M_Test.RemoteObjectAdapter._op_getTestIntf.end(self, _r)

        def activate(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_activate.invoke(self, ((), context))

        def activateAsync(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_activate.invokeAsync(self, ((), context))

        def begin_activate(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteObjectAdapter._op_activate.begin(self, ((), _response, _ex, _sent, context))

        def end_activate(self, _r):
            return _M_Test.RemoteObjectAdapter._op_activate.end(self, _r)

        def hold(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_hold.invoke(self, ((), context))

        def holdAsync(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_hold.invokeAsync(self, ((), context))

        def begin_hold(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteObjectAdapter._op_hold.begin(self, ((), _response, _ex, _sent, context))

        def end_hold(self, _r):
            return _M_Test.RemoteObjectAdapter._op_hold.end(self, _r)

        def deactivate(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_deactivate.invoke(self, ((), context))

        def deactivateAsync(self, context=None):
            return _M_Test.RemoteObjectAdapter._op_deactivate.invokeAsync(self, ((), context))

        def begin_deactivate(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteObjectAdapter._op_deactivate.begin(self, ((), _response, _ex, _sent, context))

        def end_deactivate(self, _r):
            return _M_Test.RemoteObjectAdapter._op_deactivate.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.RemoteObjectAdapterPrx.ice_checkedCast(proxy, '::Test::RemoteObjectAdapter', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.RemoteObjectAdapterPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::RemoteObjectAdapter'
    _M_Test._t_RemoteObjectAdapterPrx = IcePy.defineProxy('::Test::RemoteObjectAdapter', RemoteObjectAdapterPrx)

    _M_Test.RemoteObjectAdapterPrx = RemoteObjectAdapterPrx
    del RemoteObjectAdapterPrx

    _M_Test.RemoteObjectAdapter = Ice.createTempClass()
    class RemoteObjectAdapter(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::RemoteObjectAdapter')

        def ice_id(self, current=None):
            return '::Test::RemoteObjectAdapter'

        @staticmethod
        def ice_staticId():
            return '::Test::RemoteObjectAdapter'

        def getTestIntf(self, current=None):
            raise NotImplementedError("servant method 'getTestIntf' not implemented")

        def activate(self, current=None):
            raise NotImplementedError("servant method 'activate' not implemented")

        def hold(self, current=None):
            raise NotImplementedError("servant method 'hold' not implemented")

        def deactivate(self, current=None):
            raise NotImplementedError("servant method 'deactivate' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_RemoteObjectAdapterDisp)

        __repr__ = __str__

    _M_Test._t_RemoteObjectAdapterDisp = IcePy.defineClass('::Test::RemoteObjectAdapter', RemoteObjectAdapter, (), None, ())
    RemoteObjectAdapter._ice_type = _M_Test._t_RemoteObjectAdapterDisp

    RemoteObjectAdapter._op_getTestIntf = IcePy.Operation('getTestIntf', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test._t_TestIntfPrx, False, 0), ())
    RemoteObjectAdapter._op_activate = IcePy.Operation('activate', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    RemoteObjectAdapter._op_hold = IcePy.Operation('hold', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    RemoteObjectAdapter._op_deactivate = IcePy.Operation('deactivate', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.RemoteObjectAdapter = RemoteObjectAdapter
    del RemoteObjectAdapter

_M_Test._t_RemoteCommunicator = IcePy.defineValue('::Test::RemoteCommunicator', Ice.Value, -1, (), False, True, None, ())

if 'RemoteCommunicatorPrx' not in _M_Test.__dict__:
    _M_Test.RemoteCommunicatorPrx = Ice.createTempClass()
    class RemoteCommunicatorPrx(Ice.ObjectPrx):

        def createObjectAdapter(self, acmTimeout, close, heartbeat, context=None):
            return _M_Test.RemoteCommunicator._op_createObjectAdapter.invoke(self, ((acmTimeout, close, heartbeat), context))

        def createObjectAdapterAsync(self, acmTimeout, close, heartbeat, context=None):
            return _M_Test.RemoteCommunicator._op_createObjectAdapter.invokeAsync(self, ((acmTimeout, close, heartbeat), context))

        def begin_createObjectAdapter(self, acmTimeout, close, heartbeat, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_createObjectAdapter.begin(self, ((acmTimeout, close, heartbeat), _response, _ex, _sent, context))

        def end_createObjectAdapter(self, _r):
            return _M_Test.RemoteCommunicator._op_createObjectAdapter.end(self, _r)

        def shutdown(self, context=None):
            return _M_Test.RemoteCommunicator._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.RemoteCommunicator._op_shutdown.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.RemoteCommunicatorPrx.ice_checkedCast(proxy, '::Test::RemoteCommunicator', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.RemoteCommunicatorPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::RemoteCommunicator'
    _M_Test._t_RemoteCommunicatorPrx = IcePy.defineProxy('::Test::RemoteCommunicator', RemoteCommunicatorPrx)

    _M_Test.RemoteCommunicatorPrx = RemoteCommunicatorPrx
    del RemoteCommunicatorPrx

    _M_Test.RemoteCommunicator = Ice.createTempClass()
    class RemoteCommunicator(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::RemoteCommunicator')

        def ice_id(self, current=None):
            return '::Test::RemoteCommunicator'

        @staticmethod
        def ice_staticId():
            return '::Test::RemoteCommunicator'

        def createObjectAdapter(self, acmTimeout, close, heartbeat, current=None):
            raise NotImplementedError("servant method 'createObjectAdapter' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_RemoteCommunicatorDisp)

        __repr__ = __str__

    _M_Test._t_RemoteCommunicatorDisp = IcePy.defineClass('::Test::RemoteCommunicator', RemoteCommunicator, (), None, ())
    RemoteCommunicator._ice_type = _M_Test._t_RemoteCommunicatorDisp

    RemoteCommunicator._op_createObjectAdapter = IcePy.Operation('createObjectAdapter', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), ((), _M_Test._t_RemoteObjectAdapterPrx, False, 0), ())
    RemoteCommunicator._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.RemoteCommunicator = RemoteCommunicator
    del RemoteCommunicator

# End of module Test
