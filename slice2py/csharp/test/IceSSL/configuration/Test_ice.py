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

if 'Server' not in _M_Test.__dict__:
    _M_Test._t_ServerPrx = IcePy.declareProxy('::Test::Server')

if 'ServerPrx' not in _M_Test.__dict__:
    _M_Test.ServerPrx = None
    class ServerPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new ServerPrx proxy
            
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

        def noCert(self, context=None):
            return _M_Test.Server._op_noCert.invoke(self, ((), context))

        def noCertAsync(self, context=None):
            return _M_Test.Server._op_noCert.invokeAsync(self, ((), context))

        def checkCert(self, subjectDN, issuerDN, context=None):
            return _M_Test.Server._op_checkCert.invoke(self, ((subjectDN, issuerDN), context))

        def checkCertAsync(self, subjectDN, issuerDN, context=None):
            return _M_Test.Server._op_checkCert.invokeAsync(self, ((subjectDN, issuerDN), context))

        def checkCipher(self, cipher, context=None):
            return _M_Test.Server._op_checkCipher.invoke(self, ((cipher, ), context))

        def checkCipherAsync(self, cipher, context=None):
            return _M_Test.Server._op_checkCipher.invokeAsync(self, ((cipher, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.ServerPrx.ice_checkedCast(proxy, '::Test::Server', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.ServerPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Server'
    _M_Test._t_ServerPrx = IcePy.defineProxy('::Test::Server', ServerPrx)

    _M_Test.ServerPrx = ServerPrx
    del ServerPrx

    _M_Test.Server = None
    class Server(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Server')

        def ice_id(self, current=None):
            return '::Test::Server'

        @staticmethod
        def ice_staticId():
            return '::Test::Server'

        def noCert(self, current=None):
            raise NotImplementedError("servant method 'noCert' not implemented")

        def checkCert(self, subjectDN, issuerDN, current=None):
            raise NotImplementedError("servant method 'checkCert' not implemented")

        def checkCipher(self, cipher, current=None):
            raise NotImplementedError("servant method 'checkCipher' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_ServerDisp)

        __repr__ = __str__

    Server._op_noCert = IcePy.Operation('noCert', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Server._op_checkCert = IcePy.Operation('checkCert', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)), (), None, ())
    Server._op_checkCipher = IcePy.Operation('checkCipher', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), None, ())

    _M_Test.Server = Server
    del Server

if '_t_Properties' not in _M_Test.__dict__:
    _M_Test._t_Properties = IcePy.defineDictionary('::Test::Properties', (), IcePy._t_string, IcePy._t_string)

if 'ServerFactory' not in _M_Test.__dict__:
    _M_Test._t_ServerFactoryPrx = IcePy.declareProxy('::Test::ServerFactory')

if 'ServerFactoryPrx' not in _M_Test.__dict__:
    _M_Test.ServerFactoryPrx = None
    class ServerFactoryPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new ServerFactoryPrx proxy
            
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

        def createServer(self, props, context=None):
            return _M_Test.ServerFactory._op_createServer.invoke(self, ((props, ), context))

        def createServerAsync(self, props, context=None):
            return _M_Test.ServerFactory._op_createServer.invokeAsync(self, ((props, ), context))

        def destroyServer(self, srv, context=None):
            return _M_Test.ServerFactory._op_destroyServer.invoke(self, ((srv, ), context))

        def destroyServerAsync(self, srv, context=None):
            return _M_Test.ServerFactory._op_destroyServer.invokeAsync(self, ((srv, ), context))

        def shutdown(self, context=None):
            return _M_Test.ServerFactory._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.ServerFactory._op_shutdown.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.ServerFactoryPrx.ice_checkedCast(proxy, '::Test::ServerFactory', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.ServerFactoryPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::ServerFactory'
    _M_Test._t_ServerFactoryPrx = IcePy.defineProxy('::Test::ServerFactory', ServerFactoryPrx)

    _M_Test.ServerFactoryPrx = ServerFactoryPrx
    del ServerFactoryPrx

    _M_Test.ServerFactory = None
    class ServerFactory(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::ServerFactory')

        def ice_id(self, current=None):
            return '::Test::ServerFactory'

        @staticmethod
        def ice_staticId():
            return '::Test::ServerFactory'

        def createServer(self, props, current=None):
            raise NotImplementedError("servant method 'createServer' not implemented")

        def destroyServer(self, srv, current=None):
            raise NotImplementedError("servant method 'destroyServer' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_ServerFactoryDisp)

        __repr__ = __str__

    ServerFactory._op_createServer = IcePy.Operation('createServer', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_Properties, False, 0),), (), ((), _M_Test._t_ServerPrx, False, 0), ())
    ServerFactory._op_destroyServer = IcePy.Operation('destroyServer', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ServerPrx, False, 0),), (), None, ())
    ServerFactory._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.ServerFactory = ServerFactory
    del ServerFactory

if 'Pingable' not in _M_Test.__dict__:
    _M_Test._t_PingablePrx = IcePy.declareProxy('::Test::Pingable')

if 'PingablePrx' not in _M_Test.__dict__:
    _M_Test.PingablePrx = None
    class PingablePrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new PingablePrx proxy
            
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

        def ping(self, context=None):
            return _M_Test.Pingable._op_ping.invoke(self, ((), context))

        def pingAsync(self, context=None):
            return _M_Test.Pingable._op_ping.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.PingablePrx.ice_checkedCast(proxy, '::Test::Pingable', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.PingablePrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Pingable'
    _M_Test._t_PingablePrx = IcePy.defineProxy('::Test::Pingable', PingablePrx)

    _M_Test.PingablePrx = PingablePrx
    del PingablePrx

    _M_Test.Pingable = None
    class Pingable(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Pingable')

        def ice_id(self, current=None):
            return '::Test::Pingable'

        @staticmethod
        def ice_staticId():
            return '::Test::Pingable'

        def ping(self, current=None):
            raise NotImplementedError("servant method 'ping' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PingableDisp)

        __repr__ = __str__

    Pingable._op_ping = IcePy.Operation('ping', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Pingable = Pingable
    del Pingable

# End of module Test
