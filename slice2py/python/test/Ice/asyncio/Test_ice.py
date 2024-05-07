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

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'TestException' not in _M_Test.__dict__:
    _M_Test.TestException = Ice.createTempClass()
    class TestException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::TestException'

    _M_Test._t_TestException = IcePy.defineException('::Test::TestException', TestException, (), None, ())
    TestException._ice_type = _M_Test._t_TestException

    _M_Test.TestException = TestException
    del TestException

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def op(self, context=None):
            return _M_Test.TestIntf._op_op.invoke(self, ((), context))

        def opAsync(self, context=None):
            return _M_Test.TestIntf._op_op.invokeAsync(self, ((), context))

        def callOpOn(self, proxy, context=None):
            return _M_Test.TestIntf._op_callOpOn.invoke(self, ((proxy, ), context))

        def callOpOnAsync(self, proxy, context=None):
            return _M_Test.TestIntf._op_callOpOn.invokeAsync(self, ((proxy, ), context))

        def throwUserException1(self, context=None):
            return _M_Test.TestIntf._op_throwUserException1.invoke(self, ((), context))

        def throwUserException1Async(self, context=None):
            return _M_Test.TestIntf._op_throwUserException1.invokeAsync(self, ((), context))

        def throwUserException2(self, context=None):
            return _M_Test.TestIntf._op_throwUserException2.invoke(self, ((), context))

        def throwUserException2Async(self, context=None):
            return _M_Test.TestIntf._op_throwUserException2.invokeAsync(self, ((), context))

        def throwUnhandledException1(self, context=None):
            return _M_Test.TestIntf._op_throwUnhandledException1.invoke(self, ((), context))

        def throwUnhandledException1Async(self, context=None):
            return _M_Test.TestIntf._op_throwUnhandledException1.invokeAsync(self, ((), context))

        def throwUnhandledException2(self, context=None):
            return _M_Test.TestIntf._op_throwUnhandledException2.invoke(self, ((), context))

        def throwUnhandledException2Async(self, context=None):
            return _M_Test.TestIntf._op_throwUnhandledException2.invokeAsync(self, ((), context))

        def sleep(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invoke(self, ((ms, ), context))

        def sleepAsync(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invokeAsync(self, ((ms, ), context))

        def shutdown(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invokeAsync(self, ((), context))

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

        def op(self, current=None):
            raise NotImplementedError("servant method 'op' not implemented")

        def callOpOn(self, proxy, current=None):
            raise NotImplementedError("servant method 'callOpOn' not implemented")

        def throwUserException1(self, current=None):
            raise NotImplementedError("servant method 'throwUserException1' not implemented")

        def throwUserException2(self, current=None):
            raise NotImplementedError("servant method 'throwUserException2' not implemented")

        def throwUnhandledException1(self, current=None):
            raise NotImplementedError("servant method 'throwUnhandledException1' not implemented")

        def throwUnhandledException2(self, current=None):
            raise NotImplementedError("servant method 'throwUnhandledException2' not implemented")

        def sleep(self, ms, current=None):
            raise NotImplementedError("servant method 'sleep' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    TestIntf._op_callOpOn = IcePy.Operation('callOpOn', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_TestIntfPrx, False, 0),), (), ((), IcePy._t_int, False, 0), ())
    TestIntf._op_throwUserException1 = IcePy.Operation('throwUserException1', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_TestException,))
    TestIntf._op_throwUserException2 = IcePy.Operation('throwUserException2', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_TestException,))
    TestIntf._op_throwUnhandledException1 = IcePy.Operation('throwUnhandledException1', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_throwUnhandledException2 = IcePy.Operation('throwUnhandledException2', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_sleep = IcePy.Operation('sleep', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

# End of module Test
