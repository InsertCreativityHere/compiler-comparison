# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `ServicesTest.ice'
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

_M_Test._t_Clock = IcePy.defineValue('::Test::Clock', Ice.Value, -1, (), False, True, None, ())

if 'ClockPrx' not in _M_Test.__dict__:
    _M_Test.ClockPrx = Ice.createTempClass()
    class ClockPrx(Ice.ObjectPrx):

        def tick(self, time, context=None):
            return _M_Test.Clock._op_tick.invoke(self, ((time, ), context))

        def tickAsync(self, time, context=None):
            return _M_Test.Clock._op_tick.invokeAsync(self, ((time, ), context))

        def begin_tick(self, time, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Clock._op_tick.begin(self, ((time, ), _response, _ex, _sent, context))

        def end_tick(self, _r):
            return _M_Test.Clock._op_tick.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.ClockPrx.ice_checkedCast(proxy, '::Test::Clock', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.ClockPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Clock'
    _M_Test._t_ClockPrx = IcePy.defineProxy('::Test::Clock', ClockPrx)

    _M_Test.ClockPrx = ClockPrx
    del ClockPrx

    _M_Test.Clock = Ice.createTempClass()
    class Clock(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Clock')

        def ice_id(self, current=None):
            return '::Test::Clock'

        @staticmethod
        def ice_staticId():
            return '::Test::Clock'

        def tick(self, time, current=None):
            raise NotImplementedError("servant method 'tick' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_ClockDisp)

        __repr__ = __str__

    _M_Test._t_ClockDisp = IcePy.defineClass('::Test::Clock', Clock, (), None, ())
    Clock._ice_type = _M_Test._t_ClockDisp

    Clock._op_tick = IcePy.Operation('tick', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), None, ())

    _M_Test.Clock = Clock
    del Clock

# End of module Test
