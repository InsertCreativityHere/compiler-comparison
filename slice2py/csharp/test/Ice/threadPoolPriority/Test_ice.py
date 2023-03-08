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

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_Priority = IcePy.defineValue('::Test::Priority', Ice.Value, -1, (), False, True, None, ())

if 'PriorityPrx' not in _M_Test.__dict__:
    _M_Test.PriorityPrx = Ice.createTempClass()
    class PriorityPrx(Ice.ObjectPrx):

        def shutdown(self, context=None):
            return _M_Test.Priority._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.Priority._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Priority._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.Priority._op_shutdown.end(self, _r)

        def getPriority(self, context=None):
            return _M_Test.Priority._op_getPriority.invoke(self, ((), context))

        def getPriorityAsync(self, context=None):
            return _M_Test.Priority._op_getPriority.invokeAsync(self, ((), context))

        def begin_getPriority(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Priority._op_getPriority.begin(self, ((), _response, _ex, _sent, context))

        def end_getPriority(self, _r):
            return _M_Test.Priority._op_getPriority.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.PriorityPrx.ice_checkedCast(proxy, '::Test::Priority', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.PriorityPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Priority'
    _M_Test._t_PriorityPrx = IcePy.defineProxy('::Test::Priority', PriorityPrx)

    _M_Test.PriorityPrx = PriorityPrx
    del PriorityPrx

    _M_Test.Priority = Ice.createTempClass()
    class Priority(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Priority')

        def ice_id(self, current=None):
            return '::Test::Priority'

        @staticmethod
        def ice_staticId():
            return '::Test::Priority'

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def getPriority(self, current=None):
            raise NotImplementedError("servant method 'getPriority' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PriorityDisp)

        __repr__ = __str__

    _M_Test._t_PriorityDisp = IcePy.defineClass('::Test::Priority', Priority, (), None, ())
    Priority._ice_type = _M_Test._t_PriorityDisp

    Priority._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Priority._op_getPriority = IcePy.Operation('getPriority', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_string, False, 0), ())

    _M_Test.Priority = Priority
    del Priority

# End of module Test
