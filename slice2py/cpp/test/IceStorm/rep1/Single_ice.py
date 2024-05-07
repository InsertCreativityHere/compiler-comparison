# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Single.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

import Ice, IcePy

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_Single = IcePy.defineValue('::Test::Single', Ice.Value, -1, (), True, None, ())

if 'SinglePrx' not in _M_Test.__dict__:
    _M_Test.SinglePrx = Ice.createTempClass()
    class SinglePrx(Ice.ObjectPrx):

        def event(self, i, context=None):
            return _M_Test.Single._op_event.invoke(self, ((i, ), context))

        def eventAsync(self, i, context=None):
            return _M_Test.Single._op_event.invokeAsync(self, ((i, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.SinglePrx.ice_checkedCast(proxy, '::Test::Single', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.SinglePrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Single'
    _M_Test._t_SinglePrx = IcePy.defineProxy('::Test::Single', SinglePrx)

    _M_Test.SinglePrx = SinglePrx
    del SinglePrx

    _M_Test.Single = Ice.createTempClass()
    class Single(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Single')

        def ice_id(self, current=None):
            return '::Test::Single'

        @staticmethod
        def ice_staticId():
            return '::Test::Single'

        def event(self, i, current=None):
            raise NotImplementedError("servant method 'event' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SingleDisp)

        __repr__ = __str__

    _M_Test._t_SingleDisp = IcePy.defineClass('::Test::Single', Single, (), None, ())
    Single._ice_type = _M_Test._t_SingleDisp

    Single._op_event = IcePy.Operation('event', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())

    _M_Test.Single = Single
    del Single

# End of module Test
