# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Event.ice'
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

if 'Event' not in _M_Test.__dict__:
    _M_Test._t_EventPrx = IcePy.declareProxy('::Test::Event')

if 'EventPrx' not in _M_Test.__dict__:
    _M_Test.EventPrx = None
    class EventPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new EventPrx proxy
            
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

        def pub(self, counter, context=None):
            return _M_Test.Event._op_pub.invoke(self, ((counter, ), context))

        def pubAsync(self, counter, context=None):
            return _M_Test.Event._op_pub.invokeAsync(self, ((counter, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.EventPrx.ice_checkedCast(proxy, '::Test::Event', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.EventPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Event'
    _M_Test._t_EventPrx = IcePy.defineProxy('::Test::Event', EventPrx)

    _M_Test.EventPrx = EventPrx
    del EventPrx

    _M_Test.Event = None
    class Event(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Event')

        def ice_id(self, current=None):
            return '::Test::Event'

        @staticmethod
        def ice_staticId():
            return '::Test::Event'

        def pub(self, counter, current=None):
            raise NotImplementedError("servant method 'pub' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_EventDisp)

        __repr__ = __str__

    Event._op_pub = IcePy.Operation('pub', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())

    _M_Test.Event = Event
    del Event

# End of module Test
