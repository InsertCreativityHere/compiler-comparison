# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'IceLocatorDiscovery.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins
import Ice.Locator_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module IceLocatorDiscovery
_M_IceLocatorDiscovery = Ice.openModule('IceLocatorDiscovery')
__name__ = 'IceLocatorDiscovery'
_M_IceLocatorDiscovery.__doc__ = """
IceLocatorDiscovery is an Ice plug-in that enables the discovery of IceGrid and custom locators via UDP multicast.
"""

if 'LookupReply' not in _M_IceLocatorDiscovery.__dict__:
    _M_IceLocatorDiscovery._t_LookupReplyPrx = IcePy.declareProxy('::IceLocatorDiscovery::LookupReply')

if 'LookupReplyPrx' not in _M_IceLocatorDiscovery.__dict__:
    _M_IceLocatorDiscovery.LookupReplyPrx = None
    class LookupReplyPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new LookupReplyPrx proxy
            
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

        def foundLocator(self, prx, context=None):
            """
            This method is called by the implementation of the Lookup interface to reply to a findLocator request.
            
            Parameters
            ----------
            prx : (Ice.LocatorPrx or None)
                The proxy of the locator.
            context : Ice.Context
                The request context for the invocation.
            """
            return _M_IceLocatorDiscovery.LookupReply._op_foundLocator.invoke(self, ((prx, ), context))

        def foundLocatorAsync(self, prx, context=None):
            """
            This method is called by the implementation of the Lookup interface to reply to a findLocator request.
            
            Parameters
            ----------
            prx : (Ice.LocatorPrx or None)
                The proxy of the locator.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceLocatorDiscovery.LookupReply._op_foundLocator.invokeAsync(self, ((prx, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_IceLocatorDiscovery.LookupReplyPrx.ice_checkedCast(proxy, '::IceLocatorDiscovery::LookupReply', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_IceLocatorDiscovery.LookupReplyPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::IceLocatorDiscovery::LookupReply'
    _M_IceLocatorDiscovery._t_LookupReplyPrx = IcePy.defineProxy('::IceLocatorDiscovery::LookupReply', LookupReplyPrx)

    _M_IceLocatorDiscovery.LookupReplyPrx = LookupReplyPrx
    del LookupReplyPrx

    _M_IceLocatorDiscovery.LookupReply = None
    class LookupReply(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::IceLocatorDiscovery::LookupReply')

        def ice_id(self, current=None):
            return '::IceLocatorDiscovery::LookupReply'

        @staticmethod
        def ice_staticId():
            return '::IceLocatorDiscovery::LookupReply'

        def foundLocator(self, prx, current=None):
            """
            This method is called by the implementation of the Lookup interface to reply to a findLocator request.
            
            Parameters
            ----------
            prx : (Ice.LocatorPrx or None)
                The proxy of the locator.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'foundLocator' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_IceLocatorDiscovery._t_LookupReplyDisp)

        __repr__ = __str__

    LookupReply._op_foundLocator = IcePy.Operation('foundLocator', Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_LocatorPrx, False, 0),), (), None, ())

    _M_IceLocatorDiscovery.LookupReply = LookupReply
    del LookupReply

if 'Lookup' not in _M_IceLocatorDiscovery.__dict__:
    _M_IceLocatorDiscovery._t_LookupPrx = IcePy.declareProxy('::IceLocatorDiscovery::Lookup')

if 'LookupPrx' not in _M_IceLocatorDiscovery.__dict__:
    _M_IceLocatorDiscovery.LookupPrx = None
    class LookupPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new LookupPrx proxy
            
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

        def findLocator(self, instanceName, reply, context=None):
            """
            Find a locator proxy with the given instance name.
            
            Parameters
            ----------
            instanceName : str
                Restrict the search to Ice registries configured with the given instance name. If
                empty, all the available registries will reply.
            reply : (IceLocatorDiscovery.LookupReplyPrx or None)
                The reply object to use to send the reply.
            context : Ice.Context
                The request context for the invocation.
            """
            return _M_IceLocatorDiscovery.Lookup._op_findLocator.invoke(self, ((instanceName, reply), context))

        def findLocatorAsync(self, instanceName, reply, context=None):
            """
            Find a locator proxy with the given instance name.
            
            Parameters
            ----------
            instanceName : str
                Restrict the search to Ice registries configured with the given instance name. If
                empty, all the available registries will reply.
            reply : (IceLocatorDiscovery.LookupReplyPrx or None)
                The reply object to use to send the reply.
            context : Ice.Context
                The request context for the invocation.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the invocation.
            """
            return _M_IceLocatorDiscovery.Lookup._op_findLocator.invokeAsync(self, ((instanceName, reply), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_IceLocatorDiscovery.LookupPrx.ice_checkedCast(proxy, '::IceLocatorDiscovery::Lookup', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_IceLocatorDiscovery.LookupPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::IceLocatorDiscovery::Lookup'
    _M_IceLocatorDiscovery._t_LookupPrx = IcePy.defineProxy('::IceLocatorDiscovery::Lookup', LookupPrx)

    _M_IceLocatorDiscovery.LookupPrx = LookupPrx
    del LookupPrx

    _M_IceLocatorDiscovery.Lookup = None
    class Lookup(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::IceLocatorDiscovery::Lookup')

        def ice_id(self, current=None):
            return '::IceLocatorDiscovery::Lookup'

        @staticmethod
        def ice_staticId():
            return '::IceLocatorDiscovery::Lookup'

        def findLocator(self, instanceName, reply, current=None):
            """
            Find a locator proxy with the given instance name.
            
            Parameters
            ----------
            instanceName : str
                Restrict the search to Ice registries configured with the given instance name. If
                empty, all the available registries will reply.
            reply : (IceLocatorDiscovery.LookupReplyPrx or None)
                The reply object to use to send the reply.
            current : Ice.Current
                The Current object for the dispatch.
            
            Returns
            -------
            Ice.Future
                A future object that is completed with the result of the dispatch.
            """
            raise NotImplementedError("servant method 'findLocator' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_IceLocatorDiscovery._t_LookupDisp)

        __repr__ = __str__

    Lookup._op_findLocator = IcePy.Operation('findLocator', Ice.OperationMode.Idempotent, False, None, (), (((), IcePy._t_string, False, 0), ((), _M_IceLocatorDiscovery._t_LookupReplyPrx, False, 0)), (), None, ())

    _M_IceLocatorDiscovery.Lookup = Lookup
    del Lookup

# End of module IceLocatorDiscovery
