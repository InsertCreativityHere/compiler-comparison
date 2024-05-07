# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Event.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

import Ice, IcePy

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_Event = IcePy.defineValue('::Test::Event', Ice.Value, -1, (), True, None, ())

if 'EventPrx' not in _M_Test.__dict__:
    _M_Test.EventPrx = Ice.createTempClass()
    class EventPrx(Ice.ObjectPrx):

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

    _M_Test.Event = Ice.createTempClass()
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

    _M_Test._t_EventDisp = IcePy.defineClass('::Test::Event', Event, (), None, ())
    Event._ice_type = _M_Test._t_EventDisp

    Event._op_pub = IcePy.Operation('pub', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())

    _M_Test.Event = Event
    del Event

# End of module Test
