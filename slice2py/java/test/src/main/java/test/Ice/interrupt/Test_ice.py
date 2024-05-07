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
import Ice.BuiltinSequences_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'InterruptedException' not in _M_Test.__dict__:
    _M_Test.InterruptedException = Ice.createTempClass()
    class InterruptedException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::InterruptedException'

    _M_Test._t_InterruptedException = IcePy.defineException('::Test::InterruptedException', InterruptedException, (), None, ())
    InterruptedException._ice_type = _M_Test._t_InterruptedException

    _M_Test.InterruptedException = InterruptedException
    del InterruptedException

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def op(self, context=None):
            return _M_Test.TestIntf._op_op.invoke(self, ((), context))

        def opAsync(self, context=None):
            return _M_Test.TestIntf._op_op.invokeAsync(self, ((), context))

        def opIdempotent(self, context=None):
            return _M_Test.TestIntf._op_opIdempotent.invoke(self, ((), context))

        def opIdempotentAsync(self, context=None):
            return _M_Test.TestIntf._op_opIdempotent.invokeAsync(self, ((), context))

        def sleep(self, to, context=None):
            return _M_Test.TestIntf._op_sleep.invoke(self, ((to, ), context))

        def sleepAsync(self, to, context=None):
            return _M_Test.TestIntf._op_sleep.invokeAsync(self, ((to, ), context))

        def opWithPayload(self, seq, context=None):
            return _M_Test.TestIntf._op_opWithPayload.invoke(self, ((seq, ), context))

        def opWithPayloadAsync(self, seq, context=None):
            return _M_Test.TestIntf._op_opWithPayload.invokeAsync(self, ((seq, ), context))

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

        def opIdempotent(self, current=None):
            raise NotImplementedError("servant method 'opIdempotent' not implemented")

        def sleep(self, to, current=None):
            raise NotImplementedError("servant method 'sleep' not implemented")

        def opWithPayload(self, seq, current=None):
            raise NotImplementedError("servant method 'opWithPayload' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_opIdempotent = IcePy.Operation('opIdempotent', Ice.OperationMode.Idempotent, False, None, (), (), (), None, ())
    TestIntf._op_sleep = IcePy.Operation('sleep', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, (_M_Test._t_InterruptedException,))
    TestIntf._op_opWithPayload = IcePy.Operation('opWithPayload', Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_ByteSeq, False, 0),), (), None, ())
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

if 'CannotInterruptException' not in _M_Test.__dict__:
    _M_Test.CannotInterruptException = Ice.createTempClass()
    class CannotInterruptException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::CannotInterruptException'

    _M_Test._t_CannotInterruptException = IcePy.defineException('::Test::CannotInterruptException', CannotInterruptException, (), None, ())
    CannotInterruptException._ice_type = _M_Test._t_CannotInterruptException

    _M_Test.CannotInterruptException = CannotInterruptException
    del CannotInterruptException

_M_Test._t_TestIntfController = IcePy.defineValue('::Test::TestIntfController', Ice.Value, -1, (), True, None, ())

if 'TestIntfControllerPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfControllerPrx = Ice.createTempClass()
    class TestIntfControllerPrx(Ice.ObjectPrx):

        def holdAdapter(self, context=None):
            return _M_Test.TestIntfController._op_holdAdapter.invoke(self, ((), context))

        def holdAdapterAsync(self, context=None):
            return _M_Test.TestIntfController._op_holdAdapter.invokeAsync(self, ((), context))

        def resumeAdapter(self, context=None):
            return _M_Test.TestIntfController._op_resumeAdapter.invoke(self, ((), context))

        def resumeAdapterAsync(self, context=None):
            return _M_Test.TestIntfController._op_resumeAdapter.invokeAsync(self, ((), context))

        def interrupt(self, context=None):
            return _M_Test.TestIntfController._op_interrupt.invoke(self, ((), context))

        def interruptAsync(self, context=None):
            return _M_Test.TestIntfController._op_interrupt.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.TestIntfControllerPrx.ice_checkedCast(proxy, '::Test::TestIntfController', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.TestIntfControllerPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::TestIntfController'
    _M_Test._t_TestIntfControllerPrx = IcePy.defineProxy('::Test::TestIntfController', TestIntfControllerPrx)

    _M_Test.TestIntfControllerPrx = TestIntfControllerPrx
    del TestIntfControllerPrx

    _M_Test.TestIntfController = Ice.createTempClass()
    class TestIntfController(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::TestIntfController')

        def ice_id(self, current=None):
            return '::Test::TestIntfController'

        @staticmethod
        def ice_staticId():
            return '::Test::TestIntfController'

        def holdAdapter(self, current=None):
            raise NotImplementedError("servant method 'holdAdapter' not implemented")

        def resumeAdapter(self, current=None):
            raise NotImplementedError("servant method 'resumeAdapter' not implemented")

        def interrupt(self, current=None):
            raise NotImplementedError("servant method 'interrupt' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfControllerDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfControllerDisp = IcePy.defineClass('::Test::TestIntfController', TestIntfController, (), None, ())
    TestIntfController._ice_type = _M_Test._t_TestIntfControllerDisp

    TestIntfController._op_holdAdapter = IcePy.Operation('holdAdapter', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntfController._op_resumeAdapter = IcePy.Operation('resumeAdapter', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntfController._op_interrupt = IcePy.Operation('interrupt', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_CannotInterruptException,))

    _M_Test.TestIntfController = TestIntfController
    del TestIntfController

# End of module Test
