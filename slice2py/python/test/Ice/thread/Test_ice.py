# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy
import Ice.Properties_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def sleep(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invoke(self, ((ms, ), context))

        def sleepAsync(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invokeAsync(self, ((ms, ), context))

        def begin_sleep(self, ms, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_sleep.begin(self, ((ms, ), _response, _ex, _sent, context))

        def end_sleep(self, _r):
            return _M_Test.TestIntf._op_sleep.end(self, _r)

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

        def sleep(self, ms, current=None):
            raise NotImplementedError("servant method 'sleep' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_sleep = IcePy.Operation('sleep', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

_M_Test._t_RemoteCommunicator = IcePy.defineValue('::Test::RemoteCommunicator', Ice.Value, -1, (), False, True, None, ())

if 'RemoteCommunicatorPrx' not in _M_Test.__dict__:
    _M_Test.RemoteCommunicatorPrx = Ice.createTempClass()
    class RemoteCommunicatorPrx(Ice.ObjectPrx):

        def getObject(self, context=None):
            return _M_Test.RemoteCommunicator._op_getObject.invoke(self, ((), context))

        def getObjectAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getObject.invokeAsync(self, ((), context))

        def begin_getObject(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_getObject.begin(self, ((), _response, _ex, _sent, context))

        def end_getObject(self, _r):
            return _M_Test.RemoteCommunicator._op_getObject.end(self, _r)

        def getThreadHookStartCount(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadHookStartCount.invoke(self, ((), context))

        def getThreadHookStartCountAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadHookStartCount.invokeAsync(self, ((), context))

        def begin_getThreadHookStartCount(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadHookStartCount.begin(self, ((), _response, _ex, _sent, context))

        def end_getThreadHookStartCount(self, _r):
            return _M_Test.RemoteCommunicator._op_getThreadHookStartCount.end(self, _r)

        def getThreadHookStopCount(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadHookStopCount.invoke(self, ((), context))

        def getThreadHookStopCountAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadHookStopCount.invokeAsync(self, ((), context))

        def begin_getThreadHookStopCount(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadHookStopCount.begin(self, ((), _response, _ex, _sent, context))

        def end_getThreadHookStopCount(self, _r):
            return _M_Test.RemoteCommunicator._op_getThreadHookStopCount.end(self, _r)

        def getThreadStartCount(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStartCount.invoke(self, ((), context))

        def getThreadStartCountAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStartCount.invokeAsync(self, ((), context))

        def begin_getThreadStartCount(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStartCount.begin(self, ((), _response, _ex, _sent, context))

        def end_getThreadStartCount(self, _r):
            return _M_Test.RemoteCommunicator._op_getThreadStartCount.end(self, _r)

        def getThreadStopCount(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStopCount.invoke(self, ((), context))

        def getThreadStopCountAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStopCount.invokeAsync(self, ((), context))

        def begin_getThreadStopCount(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStopCount.begin(self, ((), _response, _ex, _sent, context))

        def end_getThreadStopCount(self, _r):
            return _M_Test.RemoteCommunicator._op_getThreadStopCount.end(self, _r)

        def destroy(self, context=None):
            return _M_Test.RemoteCommunicator._op_destroy.invoke(self, ((), context))

        def destroyAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_destroy.invokeAsync(self, ((), context))

        def begin_destroy(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicator._op_destroy.begin(self, ((), _response, _ex, _sent, context))

        def end_destroy(self, _r):
            return _M_Test.RemoteCommunicator._op_destroy.end(self, _r)

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

        def getObject(self, current=None):
            raise NotImplementedError("servant method 'getObject' not implemented")

        def getThreadHookStartCount(self, current=None):
            raise NotImplementedError("servant method 'getThreadHookStartCount' not implemented")

        def getThreadHookStopCount(self, current=None):
            raise NotImplementedError("servant method 'getThreadHookStopCount' not implemented")

        def getThreadStartCount(self, current=None):
            raise NotImplementedError("servant method 'getThreadStartCount' not implemented")

        def getThreadStopCount(self, current=None):
            raise NotImplementedError("servant method 'getThreadStopCount' not implemented")

        def destroy(self, current=None):
            raise NotImplementedError("servant method 'destroy' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_RemoteCommunicatorDisp)

        __repr__ = __str__

    _M_Test._t_RemoteCommunicatorDisp = IcePy.defineClass('::Test::RemoteCommunicator', RemoteCommunicator, (), None, ())
    RemoteCommunicator._ice_type = _M_Test._t_RemoteCommunicatorDisp

    RemoteCommunicator._op_getObject = IcePy.Operation('getObject', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test._t_TestIntfPrx, False, 0), ())
    RemoteCommunicator._op_getThreadHookStartCount = IcePy.Operation('getThreadHookStartCount', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    RemoteCommunicator._op_getThreadHookStopCount = IcePy.Operation('getThreadHookStopCount', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    RemoteCommunicator._op_getThreadStartCount = IcePy.Operation('getThreadStartCount', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    RemoteCommunicator._op_getThreadStopCount = IcePy.Operation('getThreadStopCount', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    RemoteCommunicator._op_destroy = IcePy.Operation('destroy', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.RemoteCommunicator = RemoteCommunicator
    del RemoteCommunicator

_M_Test._t_RemoteCommunicatorFactory = IcePy.defineValue('::Test::RemoteCommunicatorFactory', Ice.Value, -1, (), False, True, None, ())

if 'RemoteCommunicatorFactoryPrx' not in _M_Test.__dict__:
    _M_Test.RemoteCommunicatorFactoryPrx = Ice.createTempClass()
    class RemoteCommunicatorFactoryPrx(Ice.ObjectPrx):

        def createCommunicator(self, props, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_createCommunicator.invoke(self, ((props, ), context))

        def createCommunicatorAsync(self, props, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_createCommunicator.invokeAsync(self, ((props, ), context))

        def begin_createCommunicator(self, props, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_createCommunicator.begin(self, ((props, ), _response, _ex, _sent, context))

        def end_createCommunicator(self, _r):
            return _M_Test.RemoteCommunicatorFactory._op_createCommunicator.end(self, _r)

        def shutdown(self, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.RemoteCommunicatorFactory._op_shutdown.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.RemoteCommunicatorFactoryPrx.ice_checkedCast(proxy, '::Test::RemoteCommunicatorFactory', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.RemoteCommunicatorFactoryPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::RemoteCommunicatorFactory'
    _M_Test._t_RemoteCommunicatorFactoryPrx = IcePy.defineProxy('::Test::RemoteCommunicatorFactory', RemoteCommunicatorFactoryPrx)

    _M_Test.RemoteCommunicatorFactoryPrx = RemoteCommunicatorFactoryPrx
    del RemoteCommunicatorFactoryPrx

    _M_Test.RemoteCommunicatorFactory = Ice.createTempClass()
    class RemoteCommunicatorFactory(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::RemoteCommunicatorFactory')

        def ice_id(self, current=None):
            return '::Test::RemoteCommunicatorFactory'

        @staticmethod
        def ice_staticId():
            return '::Test::RemoteCommunicatorFactory'

        def createCommunicator(self, props, current=None):
            raise NotImplementedError("servant method 'createCommunicator' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_RemoteCommunicatorFactoryDisp)

        __repr__ = __str__

    _M_Test._t_RemoteCommunicatorFactoryDisp = IcePy.defineClass('::Test::RemoteCommunicatorFactory', RemoteCommunicatorFactory, (), None, ())
    RemoteCommunicatorFactory._ice_type = _M_Test._t_RemoteCommunicatorFactoryDisp

    RemoteCommunicatorFactory._op_createCommunicator = IcePy.Operation('createCommunicator', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_PropertyDict, False, 0),), (), ((), _M_Test._t_RemoteCommunicatorPrx, False, 0), ())
    RemoteCommunicatorFactory._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.RemoteCommunicatorFactory = RemoteCommunicatorFactory
    del RemoteCommunicatorFactory

# End of module Test
