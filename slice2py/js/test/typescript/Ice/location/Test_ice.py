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
import Ice.Locator_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_TestLocatorRegistry = IcePy.defineValue('::Test::TestLocatorRegistry', Ice.Value, -1, (), False, True, None, ())

if 'TestLocatorRegistryPrx' not in _M_Test.__dict__:
    _M_Test.TestLocatorRegistryPrx = Ice.createTempClass()
    class TestLocatorRegistryPrx(_M_Ice.LocatorRegistryPrx):

        def addObject(self, obj, context=None):
            return _M_Test.TestLocatorRegistry._op_addObject.invoke(self, ((obj, ), context))

        def addObjectAsync(self, obj, context=None):
            return _M_Test.TestLocatorRegistry._op_addObject.invokeAsync(self, ((obj, ), context))

        def begin_addObject(self, obj, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestLocatorRegistry._op_addObject.begin(self, ((obj, ), _response, _ex, _sent, context))

        def end_addObject(self, _r):
            return _M_Test.TestLocatorRegistry._op_addObject.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.TestLocatorRegistryPrx.ice_checkedCast(proxy, '::Test::TestLocatorRegistry', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.TestLocatorRegistryPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::TestLocatorRegistry'
    _M_Test._t_TestLocatorRegistryPrx = IcePy.defineProxy('::Test::TestLocatorRegistry', TestLocatorRegistryPrx)

    _M_Test.TestLocatorRegistryPrx = TestLocatorRegistryPrx
    del TestLocatorRegistryPrx

    _M_Test.TestLocatorRegistry = Ice.createTempClass()
    class TestLocatorRegistry(_M_Ice.LocatorRegistry):

        def ice_ids(self, current=None):
            return ('::Ice::LocatorRegistry', '::Ice::Object', '::Test::TestLocatorRegistry')

        def ice_id(self, current=None):
            return '::Test::TestLocatorRegistry'

        @staticmethod
        def ice_staticId():
            return '::Test::TestLocatorRegistry'

        def addObject(self, obj, current=None):
            raise NotImplementedError("servant method 'addObject' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestLocatorRegistryDisp)

        __repr__ = __str__

    _M_Test._t_TestLocatorRegistryDisp = IcePy.defineClass('::Test::TestLocatorRegistry', TestLocatorRegistry, (), None, (_M_Ice._t_LocatorRegistryDisp,))
    TestLocatorRegistry._ice_type = _M_Test._t_TestLocatorRegistryDisp

    TestLocatorRegistry._op_addObject = IcePy.Operation('addObject', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_ObjectPrx, False, 0),), (), None, ())

    _M_Test.TestLocatorRegistry = TestLocatorRegistry
    del TestLocatorRegistry

_M_Test._t_TestLocator = IcePy.defineValue('::Test::TestLocator', Ice.Value, -1, (), False, True, None, ())

if 'TestLocatorPrx' not in _M_Test.__dict__:
    _M_Test.TestLocatorPrx = Ice.createTempClass()
    class TestLocatorPrx(_M_Ice.LocatorPrx):

        def getRequestCount(self, context=None):
            return _M_Test.TestLocator._op_getRequestCount.invoke(self, ((), context))

        def getRequestCountAsync(self, context=None):
            return _M_Test.TestLocator._op_getRequestCount.invokeAsync(self, ((), context))

        def begin_getRequestCount(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestLocator._op_getRequestCount.begin(self, ((), _response, _ex, _sent, context))

        def end_getRequestCount(self, _r):
            return _M_Test.TestLocator._op_getRequestCount.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.TestLocatorPrx.ice_checkedCast(proxy, '::Test::TestLocator', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.TestLocatorPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::TestLocator'
    _M_Test._t_TestLocatorPrx = IcePy.defineProxy('::Test::TestLocator', TestLocatorPrx)

    _M_Test.TestLocatorPrx = TestLocatorPrx
    del TestLocatorPrx

    _M_Test.TestLocator = Ice.createTempClass()
    class TestLocator(_M_Ice.Locator):

        def ice_ids(self, current=None):
            return ('::Ice::Locator', '::Ice::Object', '::Test::TestLocator')

        def ice_id(self, current=None):
            return '::Test::TestLocator'

        @staticmethod
        def ice_staticId():
            return '::Test::TestLocator'

        def getRequestCount(self, current=None):
            raise NotImplementedError("servant method 'getRequestCount' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestLocatorDisp)

        __repr__ = __str__

    _M_Test._t_TestLocatorDisp = IcePy.defineClass('::Test::TestLocator', TestLocator, (), None, (_M_Ice._t_LocatorDisp,))
    TestLocator._ice_type = _M_Test._t_TestLocatorDisp

    TestLocator._op_getRequestCount = IcePy.Operation('getRequestCount', Ice.OperationMode.Idempotent, Ice.OperationMode.Idempotent, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())

    _M_Test.TestLocator = TestLocator
    del TestLocator

_M_Test._t_ServerManager = IcePy.defineValue('::Test::ServerManager', Ice.Value, -1, (), False, True, None, ())

if 'ServerManagerPrx' not in _M_Test.__dict__:
    _M_Test.ServerManagerPrx = Ice.createTempClass()
    class ServerManagerPrx(Ice.ObjectPrx):

        def startServer(self, context=None):
            return _M_Test.ServerManager._op_startServer.invoke(self, ((), context))

        def startServerAsync(self, context=None):
            return _M_Test.ServerManager._op_startServer.invokeAsync(self, ((), context))

        def begin_startServer(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.ServerManager._op_startServer.begin(self, ((), _response, _ex, _sent, context))

        def end_startServer(self, _r):
            return _M_Test.ServerManager._op_startServer.end(self, _r)

        def shutdown(self, context=None):
            return _M_Test.ServerManager._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.ServerManager._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.ServerManager._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.ServerManager._op_shutdown.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.ServerManagerPrx.ice_checkedCast(proxy, '::Test::ServerManager', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.ServerManagerPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::ServerManager'
    _M_Test._t_ServerManagerPrx = IcePy.defineProxy('::Test::ServerManager', ServerManagerPrx)

    _M_Test.ServerManagerPrx = ServerManagerPrx
    del ServerManagerPrx

    _M_Test.ServerManager = Ice.createTempClass()
    class ServerManager(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::ServerManager')

        def ice_id(self, current=None):
            return '::Test::ServerManager'

        @staticmethod
        def ice_staticId():
            return '::Test::ServerManager'

        def startServer(self, current=None):
            raise NotImplementedError("servant method 'startServer' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_ServerManagerDisp)

        __repr__ = __str__

    _M_Test._t_ServerManagerDisp = IcePy.defineClass('::Test::ServerManager', ServerManager, (), None, ())
    ServerManager._ice_type = _M_Test._t_ServerManagerDisp

    ServerManager._op_startServer = IcePy.Operation('startServer', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    ServerManager._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.ServerManager = ServerManager
    del ServerManager

_M_Test._t_Hello = IcePy.defineValue('::Test::Hello', Ice.Value, -1, (), False, True, None, ())

if 'HelloPrx' not in _M_Test.__dict__:
    _M_Test.HelloPrx = Ice.createTempClass()
    class HelloPrx(Ice.ObjectPrx):

        def sayHello(self, context=None):
            return _M_Test.Hello._op_sayHello.invoke(self, ((), context))

        def sayHelloAsync(self, context=None):
            return _M_Test.Hello._op_sayHello.invokeAsync(self, ((), context))

        def begin_sayHello(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Hello._op_sayHello.begin(self, ((), _response, _ex, _sent, context))

        def end_sayHello(self, _r):
            return _M_Test.Hello._op_sayHello.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.HelloPrx.ice_checkedCast(proxy, '::Test::Hello', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.HelloPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Hello'
    _M_Test._t_HelloPrx = IcePy.defineProxy('::Test::Hello', HelloPrx)

    _M_Test.HelloPrx = HelloPrx
    del HelloPrx

    _M_Test.Hello = Ice.createTempClass()
    class Hello(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Hello')

        def ice_id(self, current=None):
            return '::Test::Hello'

        @staticmethod
        def ice_staticId():
            return '::Test::Hello'

        def sayHello(self, current=None):
            raise NotImplementedError("servant method 'sayHello' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_HelloDisp)

        __repr__ = __str__

    _M_Test._t_HelloDisp = IcePy.defineClass('::Test::Hello', Hello, (), None, ())
    Hello._ice_type = _M_Test._t_HelloDisp

    Hello._op_sayHello = IcePy.Operation('sayHello', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Hello = Hello
    del Hello

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def shutdown(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.TestIntf._op_shutdown.end(self, _r)

        def getHello(self, context=None):
            return _M_Test.TestIntf._op_getHello.invoke(self, ((), context))

        def getHelloAsync(self, context=None):
            return _M_Test.TestIntf._op_getHello.invokeAsync(self, ((), context))

        def begin_getHello(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_getHello.begin(self, ((), _response, _ex, _sent, context))

        def end_getHello(self, _r):
            return _M_Test.TestIntf._op_getHello.end(self, _r)

        def getReplicatedHello(self, context=None):
            return _M_Test.TestIntf._op_getReplicatedHello.invoke(self, ((), context))

        def getReplicatedHelloAsync(self, context=None):
            return _M_Test.TestIntf._op_getReplicatedHello.invokeAsync(self, ((), context))

        def begin_getReplicatedHello(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_getReplicatedHello.begin(self, ((), _response, _ex, _sent, context))

        def end_getReplicatedHello(self, _r):
            return _M_Test.TestIntf._op_getReplicatedHello.end(self, _r)

        def migrateHello(self, context=None):
            return _M_Test.TestIntf._op_migrateHello.invoke(self, ((), context))

        def migrateHelloAsync(self, context=None):
            return _M_Test.TestIntf._op_migrateHello.invokeAsync(self, ((), context))

        def begin_migrateHello(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_migrateHello.begin(self, ((), _response, _ex, _sent, context))

        def end_migrateHello(self, _r):
            return _M_Test.TestIntf._op_migrateHello.end(self, _r)

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

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def getHello(self, current=None):
            raise NotImplementedError("servant method 'getHello' not implemented")

        def getReplicatedHello(self, current=None):
            raise NotImplementedError("servant method 'getReplicatedHello' not implemented")

        def migrateHello(self, current=None):
            raise NotImplementedError("servant method 'migrateHello' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_getHello = IcePy.Operation('getHello', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test._t_HelloPrx, False, 0), ())
    TestIntf._op_getReplicatedHello = IcePy.Operation('getReplicatedHello', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test._t_HelloPrx, False, 0), ())
    TestIntf._op_migrateHello = IcePy.Operation('migrateHello', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

# End of module Test
