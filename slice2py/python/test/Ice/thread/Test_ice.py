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
import Ice.PropertyDict_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'TestIntf' not in _M_Test.__dict__:
    _M_Test._t_TestIntfPrx = IcePy.declareProxy('::Test::TestIntf')

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = None
    class TestIntfPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new TestIntfPrx proxy
            
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

        def sleep(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invoke(self, ((ms, ), context))

        def sleepAsync(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invokeAsync(self, ((ms, ), context))

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

    _M_Test.TestIntf = None
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

    TestIntf._op_sleep = IcePy.Operation('sleep', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

if 'RemoteCommunicator' not in _M_Test.__dict__:
    _M_Test._t_RemoteCommunicatorPrx = IcePy.declareProxy('::Test::RemoteCommunicator')

if 'RemoteCommunicatorPrx' not in _M_Test.__dict__:
    _M_Test.RemoteCommunicatorPrx = None
    class RemoteCommunicatorPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new RemoteCommunicatorPrx proxy
            
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

        def getObject(self, context=None):
            return _M_Test.RemoteCommunicator._op_getObject.invoke(self, ((), context))

        def getObjectAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getObject.invokeAsync(self, ((), context))

        def getThreadStartCount(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStartCount.invoke(self, ((), context))

        def getThreadStartCountAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStartCount.invokeAsync(self, ((), context))

        def getThreadStopCount(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStopCount.invoke(self, ((), context))

        def getThreadStopCountAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_getThreadStopCount.invokeAsync(self, ((), context))

        def destroy(self, context=None):
            return _M_Test.RemoteCommunicator._op_destroy.invoke(self, ((), context))

        def destroyAsync(self, context=None):
            return _M_Test.RemoteCommunicator._op_destroy.invokeAsync(self, ((), context))

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

    _M_Test.RemoteCommunicator = None
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

        def getThreadStartCount(self, current=None):
            raise NotImplementedError("servant method 'getThreadStartCount' not implemented")

        def getThreadStopCount(self, current=None):
            raise NotImplementedError("servant method 'getThreadStopCount' not implemented")

        def destroy(self, current=None):
            raise NotImplementedError("servant method 'destroy' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_RemoteCommunicatorDisp)

        __repr__ = __str__

    RemoteCommunicator._op_getObject = IcePy.Operation('getObject', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test._t_TestIntfPrx, False, 0), ())
    RemoteCommunicator._op_getThreadStartCount = IcePy.Operation('getThreadStartCount', Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    RemoteCommunicator._op_getThreadStopCount = IcePy.Operation('getThreadStopCount', Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    RemoteCommunicator._op_destroy = IcePy.Operation('destroy', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.RemoteCommunicator = RemoteCommunicator
    del RemoteCommunicator

if 'RemoteCommunicatorFactory' not in _M_Test.__dict__:
    _M_Test._t_RemoteCommunicatorFactoryPrx = IcePy.declareProxy('::Test::RemoteCommunicatorFactory')

if 'RemoteCommunicatorFactoryPrx' not in _M_Test.__dict__:
    _M_Test.RemoteCommunicatorFactoryPrx = None
    class RemoteCommunicatorFactoryPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new RemoteCommunicatorFactoryPrx proxy
            
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

        def createCommunicator(self, props, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_createCommunicator.invoke(self, ((props, ), context))

        def createCommunicatorAsync(self, props, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_createCommunicator.invokeAsync(self, ((props, ), context))

        def shutdown(self, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.RemoteCommunicatorFactory._op_shutdown.invokeAsync(self, ((), context))

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

    _M_Test.RemoteCommunicatorFactory = None
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

    RemoteCommunicatorFactory._op_createCommunicator = IcePy.Operation('createCommunicator', Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_PropertyDict, False, 0),), (), ((), _M_Test._t_RemoteCommunicatorPrx, False, 0), ())
    RemoteCommunicatorFactory._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.RemoteCommunicatorFactory = RemoteCommunicatorFactory
    del RemoteCommunicatorFactory

# End of module Test
