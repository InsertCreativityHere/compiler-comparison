# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

import Ice, IcePy
import Package_ice
import NoPackage_ice

# Included module Test2
_M_Test2 = Ice.openModule('Test2')

# Included module Test3
_M_Test3 = Ice.openModule('Test3')

# Included module Test1
_M_Test1 = Ice.openModule('Test1')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_Initial = IcePy.defineValue('::Test::Initial', Ice.Value, -1, (), True, None, ())

if 'InitialPrx' not in _M_Test.__dict__:
    _M_Test.InitialPrx = Ice.createTempClass()
    class InitialPrx(Ice.ObjectPrx):

        def getTest1C2AsC1(self, context=None):
            return _M_Test.Initial._op_getTest1C2AsC1.invoke(self, ((), context))

        def getTest1C2AsC1Async(self, context=None):
            return _M_Test.Initial._op_getTest1C2AsC1.invokeAsync(self, ((), context))

        def getTest1C2AsC2(self, context=None):
            return _M_Test.Initial._op_getTest1C2AsC2.invoke(self, ((), context))

        def getTest1C2AsC2Async(self, context=None):
            return _M_Test.Initial._op_getTest1C2AsC2.invokeAsync(self, ((), context))

        def throwTest1E2AsE1(self, context=None):
            return _M_Test.Initial._op_throwTest1E2AsE1.invoke(self, ((), context))

        def throwTest1E2AsE1Async(self, context=None):
            return _M_Test.Initial._op_throwTest1E2AsE1.invokeAsync(self, ((), context))

        def throwTest1E2AsE2(self, context=None):
            return _M_Test.Initial._op_throwTest1E2AsE2.invoke(self, ((), context))

        def throwTest1E2AsE2Async(self, context=None):
            return _M_Test.Initial._op_throwTest1E2AsE2.invokeAsync(self, ((), context))

        def throwTest1Notify(self, context=None):
            return _M_Test.Initial._op_throwTest1Notify.invoke(self, ((), context))

        def throwTest1NotifyAsync(self, context=None):
            return _M_Test.Initial._op_throwTest1Notify.invokeAsync(self, ((), context))

        def getTest2C2AsC1(self, context=None):
            return _M_Test.Initial._op_getTest2C2AsC1.invoke(self, ((), context))

        def getTest2C2AsC1Async(self, context=None):
            return _M_Test.Initial._op_getTest2C2AsC1.invokeAsync(self, ((), context))

        def getTest2C2AsC2(self, context=None):
            return _M_Test.Initial._op_getTest2C2AsC2.invoke(self, ((), context))

        def getTest2C2AsC2Async(self, context=None):
            return _M_Test.Initial._op_getTest2C2AsC2.invokeAsync(self, ((), context))

        def throwTest2E2AsE1(self, context=None):
            return _M_Test.Initial._op_throwTest2E2AsE1.invoke(self, ((), context))

        def throwTest2E2AsE1Async(self, context=None):
            return _M_Test.Initial._op_throwTest2E2AsE1.invokeAsync(self, ((), context))

        def throwTest2E2AsE2(self, context=None):
            return _M_Test.Initial._op_throwTest2E2AsE2.invoke(self, ((), context))

        def throwTest2E2AsE2Async(self, context=None):
            return _M_Test.Initial._op_throwTest2E2AsE2.invokeAsync(self, ((), context))

        def getTest3C2AsC1(self, context=None):
            return _M_Test.Initial._op_getTest3C2AsC1.invoke(self, ((), context))

        def getTest3C2AsC1Async(self, context=None):
            return _M_Test.Initial._op_getTest3C2AsC1.invokeAsync(self, ((), context))

        def getTest3C2AsC2(self, context=None):
            return _M_Test.Initial._op_getTest3C2AsC2.invoke(self, ((), context))

        def getTest3C2AsC2Async(self, context=None):
            return _M_Test.Initial._op_getTest3C2AsC2.invokeAsync(self, ((), context))

        def throwTest3E2AsE1(self, context=None):
            return _M_Test.Initial._op_throwTest3E2AsE1.invoke(self, ((), context))

        def throwTest3E2AsE1Async(self, context=None):
            return _M_Test.Initial._op_throwTest3E2AsE1.invokeAsync(self, ((), context))

        def throwTest3E2AsE2(self, context=None):
            return _M_Test.Initial._op_throwTest3E2AsE2.invoke(self, ((), context))

        def throwTest3E2AsE2Async(self, context=None):
            return _M_Test.Initial._op_throwTest3E2AsE2.invokeAsync(self, ((), context))

        def shutdown(self, context=None):
            return _M_Test.Initial._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.Initial._op_shutdown.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.InitialPrx.ice_checkedCast(proxy, '::Test::Initial', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.InitialPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Initial'
    _M_Test._t_InitialPrx = IcePy.defineProxy('::Test::Initial', InitialPrx)

    _M_Test.InitialPrx = InitialPrx
    del InitialPrx

    _M_Test.Initial = Ice.createTempClass()
    class Initial(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Initial')

        def ice_id(self, current=None):
            return '::Test::Initial'

        @staticmethod
        def ice_staticId():
            return '::Test::Initial'

        def getTest1C2AsC1(self, current=None):
            raise NotImplementedError("servant method 'getTest1C2AsC1' not implemented")

        def getTest1C2AsC2(self, current=None):
            raise NotImplementedError("servant method 'getTest1C2AsC2' not implemented")

        def throwTest1E2AsE1(self, current=None):
            raise NotImplementedError("servant method 'throwTest1E2AsE1' not implemented")

        def throwTest1E2AsE2(self, current=None):
            raise NotImplementedError("servant method 'throwTest1E2AsE2' not implemented")

        def throwTest1Notify(self, current=None):
            raise NotImplementedError("servant method 'throwTest1Notify' not implemented")

        def getTest2C2AsC1(self, current=None):
            raise NotImplementedError("servant method 'getTest2C2AsC1' not implemented")

        def getTest2C2AsC2(self, current=None):
            raise NotImplementedError("servant method 'getTest2C2AsC2' not implemented")

        def throwTest2E2AsE1(self, current=None):
            raise NotImplementedError("servant method 'throwTest2E2AsE1' not implemented")

        def throwTest2E2AsE2(self, current=None):
            raise NotImplementedError("servant method 'throwTest2E2AsE2' not implemented")

        def getTest3C2AsC1(self, current=None):
            raise NotImplementedError("servant method 'getTest3C2AsC1' not implemented")

        def getTest3C2AsC2(self, current=None):
            raise NotImplementedError("servant method 'getTest3C2AsC2' not implemented")

        def throwTest3E2AsE1(self, current=None):
            raise NotImplementedError("servant method 'throwTest3E2AsE1' not implemented")

        def throwTest3E2AsE2(self, current=None):
            raise NotImplementedError("servant method 'throwTest3E2AsE2' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_InitialDisp)

        __repr__ = __str__

    _M_Test._t_InitialDisp = IcePy.defineClass('::Test::Initial', Initial, (), None, ())
    Initial._ice_type = _M_Test._t_InitialDisp

    Initial._op_getTest1C2AsC1 = IcePy.Operation('getTest1C2AsC1', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test1._t_C1, False, 0), ())
    Initial._op_getTest1C2AsC2 = IcePy.Operation('getTest1C2AsC2', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test1._t_C2, False, 0), ())
    Initial._op_throwTest1E2AsE1 = IcePy.Operation('throwTest1E2AsE1', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test1._t_E1,))
    Initial._op_throwTest1E2AsE2 = IcePy.Operation('throwTest1E2AsE2', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test1._t_E2,))
    Initial._op_throwTest1Notify = IcePy.Operation('throwTest1Notify', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test1._t_notify,))
    Initial._op_getTest2C2AsC1 = IcePy.Operation('getTest2C2AsC1', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test2._t_C1, False, 0), ())
    Initial._op_getTest2C2AsC2 = IcePy.Operation('getTest2C2AsC2', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test2._t_C2, False, 0), ())
    Initial._op_throwTest2E2AsE1 = IcePy.Operation('throwTest2E2AsE1', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test2._t_E1,))
    Initial._op_throwTest2E2AsE2 = IcePy.Operation('throwTest2E2AsE2', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test2._t_E2,))
    Initial._op_getTest3C2AsC1 = IcePy.Operation('getTest3C2AsC1', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test3._t_C1, False, 0), ())
    Initial._op_getTest3C2AsC2 = IcePy.Operation('getTest3C2AsC2', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test3._t_C2, False, 0), ())
    Initial._op_throwTest3E2AsE1 = IcePy.Operation('throwTest3E2AsE1', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test3._t_E1,))
    Initial._op_throwTest3E2AsE2 = IcePy.Operation('throwTest3E2AsE2', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test3._t_E2,))
    Initial._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Initial = Initial
    del Initial

# End of module Test
