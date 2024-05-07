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
import Namespace_ice
import NoNamespace_ice

# Included module WithNamespace
_M_WithNamespace = Ice.openModule('WithNamespace')

# Included module NoNamespace
_M_NoNamespace = Ice.openModule('NoNamespace')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_Initial = IcePy.defineValue('::Test::Initial', Ice.Value, -1, (), True, None, ())

if 'InitialPrx' not in _M_Test.__dict__:
    _M_Test.InitialPrx = Ice.createTempClass()
    class InitialPrx(Ice.ObjectPrx):

        def getNoNamespaceC2AsC1(self, context=None):
            return _M_Test.Initial._op_getNoNamespaceC2AsC1.invoke(self, ((), context))

        def getNoNamespaceC2AsC1Async(self, context=None):
            return _M_Test.Initial._op_getNoNamespaceC2AsC1.invokeAsync(self, ((), context))

        def getNoNamespaceC2AsC2(self, context=None):
            return _M_Test.Initial._op_getNoNamespaceC2AsC2.invoke(self, ((), context))

        def getNoNamespaceC2AsC2Async(self, context=None):
            return _M_Test.Initial._op_getNoNamespaceC2AsC2.invokeAsync(self, ((), context))

        def throwNoNamespaceE2AsE1(self, context=None):
            return _M_Test.Initial._op_throwNoNamespaceE2AsE1.invoke(self, ((), context))

        def throwNoNamespaceE2AsE1Async(self, context=None):
            return _M_Test.Initial._op_throwNoNamespaceE2AsE1.invokeAsync(self, ((), context))

        def throwNoNamespaceE2AsE2(self, context=None):
            return _M_Test.Initial._op_throwNoNamespaceE2AsE2.invoke(self, ((), context))

        def throwNoNamespaceE2AsE2Async(self, context=None):
            return _M_Test.Initial._op_throwNoNamespaceE2AsE2.invokeAsync(self, ((), context))

        def throwNoNamespaceNotify(self, context=None):
            return _M_Test.Initial._op_throwNoNamespaceNotify.invoke(self, ((), context))

        def throwNoNamespaceNotifyAsync(self, context=None):
            return _M_Test.Initial._op_throwNoNamespaceNotify.invokeAsync(self, ((), context))

        def getWithNamespaceC2AsC1(self, context=None):
            return _M_Test.Initial._op_getWithNamespaceC2AsC1.invoke(self, ((), context))

        def getWithNamespaceC2AsC1Async(self, context=None):
            return _M_Test.Initial._op_getWithNamespaceC2AsC1.invokeAsync(self, ((), context))

        def getWithNamespaceC2AsC2(self, context=None):
            return _M_Test.Initial._op_getWithNamespaceC2AsC2.invoke(self, ((), context))

        def getWithNamespaceC2AsC2Async(self, context=None):
            return _M_Test.Initial._op_getWithNamespaceC2AsC2.invokeAsync(self, ((), context))

        def throwWithNamespaceE2AsE1(self, context=None):
            return _M_Test.Initial._op_throwWithNamespaceE2AsE1.invoke(self, ((), context))

        def throwWithNamespaceE2AsE1Async(self, context=None):
            return _M_Test.Initial._op_throwWithNamespaceE2AsE1.invokeAsync(self, ((), context))

        def throwWithNamespaceE2AsE2(self, context=None):
            return _M_Test.Initial._op_throwWithNamespaceE2AsE2.invoke(self, ((), context))

        def throwWithNamespaceE2AsE2Async(self, context=None):
            return _M_Test.Initial._op_throwWithNamespaceE2AsE2.invokeAsync(self, ((), context))

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

        def getNoNamespaceC2AsC1(self, current=None):
            raise NotImplementedError("servant method 'getNoNamespaceC2AsC1' not implemented")

        def getNoNamespaceC2AsC2(self, current=None):
            raise NotImplementedError("servant method 'getNoNamespaceC2AsC2' not implemented")

        def throwNoNamespaceE2AsE1(self, current=None):
            raise NotImplementedError("servant method 'throwNoNamespaceE2AsE1' not implemented")

        def throwNoNamespaceE2AsE2(self, current=None):
            raise NotImplementedError("servant method 'throwNoNamespaceE2AsE2' not implemented")

        def throwNoNamespaceNotify(self, current=None):
            raise NotImplementedError("servant method 'throwNoNamespaceNotify' not implemented")

        def getWithNamespaceC2AsC1(self, current=None):
            raise NotImplementedError("servant method 'getWithNamespaceC2AsC1' not implemented")

        def getWithNamespaceC2AsC2(self, current=None):
            raise NotImplementedError("servant method 'getWithNamespaceC2AsC2' not implemented")

        def throwWithNamespaceE2AsE1(self, current=None):
            raise NotImplementedError("servant method 'throwWithNamespaceE2AsE1' not implemented")

        def throwWithNamespaceE2AsE2(self, current=None):
            raise NotImplementedError("servant method 'throwWithNamespaceE2AsE2' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_InitialDisp)

        __repr__ = __str__

    _M_Test._t_InitialDisp = IcePy.defineClass('::Test::Initial', Initial, (), None, ())
    Initial._ice_type = _M_Test._t_InitialDisp

    Initial._op_getNoNamespaceC2AsC1 = IcePy.Operation('getNoNamespaceC2AsC1', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_NoNamespace._t_C1, False, 0), ())
    Initial._op_getNoNamespaceC2AsC2 = IcePy.Operation('getNoNamespaceC2AsC2', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_NoNamespace._t_C2, False, 0), ())
    Initial._op_throwNoNamespaceE2AsE1 = IcePy.Operation('throwNoNamespaceE2AsE1', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_NoNamespace._t_E1,))
    Initial._op_throwNoNamespaceE2AsE2 = IcePy.Operation('throwNoNamespaceE2AsE2', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_NoNamespace._t_E2,))
    Initial._op_throwNoNamespaceNotify = IcePy.Operation('throwNoNamespaceNotify', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_NoNamespace._t_notify,))
    Initial._op_getWithNamespaceC2AsC1 = IcePy.Operation('getWithNamespaceC2AsC1', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_WithNamespace._t_C1, False, 0), ())
    Initial._op_getWithNamespaceC2AsC2 = IcePy.Operation('getWithNamespaceC2AsC2', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_WithNamespace._t_C2, False, 0), ())
    Initial._op_throwWithNamespaceE2AsE1 = IcePy.Operation('throwWithNamespaceE2AsE1', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_WithNamespace._t_E1,))
    Initial._op_throwWithNamespaceE2AsE2 = IcePy.Operation('throwWithNamespaceE2AsE2', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_WithNamespace._t_E2,))
    Initial._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Initial = Initial
    del Initial

# End of module Test
