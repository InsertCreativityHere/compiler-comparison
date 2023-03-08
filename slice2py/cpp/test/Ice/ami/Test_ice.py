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
import Ice.BuiltinSequences_ice
import Ice.Identity_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'TestIntfException' not in _M_Test.__dict__:
    _M_Test.TestIntfException = Ice.createTempClass()
    class TestIntfException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::TestIntfException'

    _M_Test._t_TestIntfException = IcePy.defineException('::Test::TestIntfException', TestIntfException, (), False, None, ())
    TestIntfException._ice_type = _M_Test._t_TestIntfException

    _M_Test.TestIntfException = TestIntfException
    del TestIntfException

if 'CloseMode' not in _M_Test.__dict__:
    _M_Test.CloseMode = Ice.createTempClass()
    class CloseMode(Ice.EnumBase):

        def __init__(self, _n, _v):
            Ice.EnumBase.__init__(self, _n, _v)

        def valueOf(self, _n):
            if _n in self._enumerators:
                return self._enumerators[_n]
            return None
        valueOf = classmethod(valueOf)

    CloseMode.Forcefully = CloseMode("Forcefully", 0)
    CloseMode.Gracefully = CloseMode("Gracefully", 1)
    CloseMode.GracefullyWithWait = CloseMode("GracefullyWithWait", 2)
    CloseMode._enumerators = { 0:CloseMode.Forcefully, 1:CloseMode.Gracefully, 2:CloseMode.GracefullyWithWait }

    _M_Test._t_CloseMode = IcePy.defineEnum('::Test::CloseMode', CloseMode, (), CloseMode._enumerators)

    _M_Test.CloseMode = CloseMode
    del CloseMode

_M_Test._t_PingReply = IcePy.defineValue('::Test::PingReply', Ice.Value, -1, (), False, True, None, ())

if 'PingReplyPrx' not in _M_Test.__dict__:
    _M_Test.PingReplyPrx = Ice.createTempClass()
    class PingReplyPrx(Ice.ObjectPrx):

        def reply(self, context=None):
            return _M_Test.PingReply._op_reply.invoke(self, ((), context))

        def replyAsync(self, context=None):
            return _M_Test.PingReply._op_reply.invokeAsync(self, ((), context))

        def begin_reply(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.PingReply._op_reply.begin(self, ((), _response, _ex, _sent, context))

        def end_reply(self, _r):
            return _M_Test.PingReply._op_reply.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.PingReplyPrx.ice_checkedCast(proxy, '::Test::PingReply', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.PingReplyPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::PingReply'
    _M_Test._t_PingReplyPrx = IcePy.defineProxy('::Test::PingReply', PingReplyPrx)

    _M_Test.PingReplyPrx = PingReplyPrx
    del PingReplyPrx

    _M_Test.PingReply = Ice.createTempClass()
    class PingReply(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::PingReply')

        def ice_id(self, current=None):
            return '::Test::PingReply'

        @staticmethod
        def ice_staticId():
            return '::Test::PingReply'

        def reply(self, current=None):
            raise NotImplementedError("servant method 'reply' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PingReplyDisp)

        __repr__ = __str__

    _M_Test._t_PingReplyDisp = IcePy.defineClass('::Test::PingReply', PingReply, (), None, ())
    PingReply._ice_type = _M_Test._t_PingReplyDisp

    PingReply._op_reply = IcePy.Operation('reply', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.PingReply = PingReply
    del PingReply

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def op(self, context=None):
            return _M_Test.TestIntf._op_op.invoke(self, ((), context))

        def opAsync(self, context=None):
            return _M_Test.TestIntf._op_op.invokeAsync(self, ((), context))

        def begin_op(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_op.begin(self, ((), _response, _ex, _sent, context))

        def end_op(self, _r):
            return _M_Test.TestIntf._op_op.end(self, _r)

        def opWithPayload(self, seq, context=None):
            return _M_Test.TestIntf._op_opWithPayload.invoke(self, ((seq, ), context))

        def opWithPayloadAsync(self, seq, context=None):
            return _M_Test.TestIntf._op_opWithPayload.invokeAsync(self, ((seq, ), context))

        def begin_opWithPayload(self, seq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opWithPayload.begin(self, ((seq, ), _response, _ex, _sent, context))

        def end_opWithPayload(self, _r):
            return _M_Test.TestIntf._op_opWithPayload.end(self, _r)

        def opWithResult(self, context=None):
            return _M_Test.TestIntf._op_opWithResult.invoke(self, ((), context))

        def opWithResultAsync(self, context=None):
            return _M_Test.TestIntf._op_opWithResult.invokeAsync(self, ((), context))

        def begin_opWithResult(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opWithResult.begin(self, ((), _response, _ex, _sent, context))

        def end_opWithResult(self, _r):
            return _M_Test.TestIntf._op_opWithResult.end(self, _r)

        def opWithUE(self, context=None):
            return _M_Test.TestIntf._op_opWithUE.invoke(self, ((), context))

        def opWithUEAsync(self, context=None):
            return _M_Test.TestIntf._op_opWithUE.invokeAsync(self, ((), context))

        def begin_opWithUE(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opWithUE.begin(self, ((), _response, _ex, _sent, context))

        def end_opWithUE(self, _r):
            return _M_Test.TestIntf._op_opWithUE.end(self, _r)

        def opWithResultAndUE(self, context=None):
            return _M_Test.TestIntf._op_opWithResultAndUE.invoke(self, ((), context))

        def opWithResultAndUEAsync(self, context=None):
            return _M_Test.TestIntf._op_opWithResultAndUE.invokeAsync(self, ((), context))

        def begin_opWithResultAndUE(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opWithResultAndUE.begin(self, ((), _response, _ex, _sent, context))

        def end_opWithResultAndUE(self, _r):
            return _M_Test.TestIntf._op_opWithResultAndUE.end(self, _r)

        def opBatch(self, context=None):
            return _M_Test.TestIntf._op_opBatch.invoke(self, ((), context))

        def opBatchAsync(self, context=None):
            return _M_Test.TestIntf._op_opBatch.invokeAsync(self, ((), context))

        def begin_opBatch(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opBatch.begin(self, ((), _response, _ex, _sent, context))

        def end_opBatch(self, _r):
            return _M_Test.TestIntf._op_opBatch.end(self, _r)

        def opWithArgs(self, context=None):
            return _M_Test.TestIntf._op_opWithArgs.invoke(self, ((), context))

        def opWithArgsAsync(self, context=None):
            return _M_Test.TestIntf._op_opWithArgs.invokeAsync(self, ((), context))

        def begin_opWithArgs(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opWithArgs.begin(self, ((), _response, _ex, _sent, context))

        def end_opWithArgs(self, _r):
            return _M_Test.TestIntf._op_opWithArgs.end(self, _r)

        def opBatchCount(self, context=None):
            return _M_Test.TestIntf._op_opBatchCount.invoke(self, ((), context))

        def opBatchCountAsync(self, context=None):
            return _M_Test.TestIntf._op_opBatchCount.invokeAsync(self, ((), context))

        def begin_opBatchCount(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opBatchCount.begin(self, ((), _response, _ex, _sent, context))

        def end_opBatchCount(self, _r):
            return _M_Test.TestIntf._op_opBatchCount.end(self, _r)

        def waitForBatch(self, count, context=None):
            return _M_Test.TestIntf._op_waitForBatch.invoke(self, ((count, ), context))

        def waitForBatchAsync(self, count, context=None):
            return _M_Test.TestIntf._op_waitForBatch.invokeAsync(self, ((count, ), context))

        def begin_waitForBatch(self, count, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_waitForBatch.begin(self, ((count, ), _response, _ex, _sent, context))

        def end_waitForBatch(self, _r):
            return _M_Test.TestIntf._op_waitForBatch.end(self, _r)

        def close(self, mode, context=None):
            return _M_Test.TestIntf._op_close.invoke(self, ((mode, ), context))

        def closeAsync(self, mode, context=None):
            return _M_Test.TestIntf._op_close.invokeAsync(self, ((mode, ), context))

        def begin_close(self, mode, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_close.begin(self, ((mode, ), _response, _ex, _sent, context))

        def end_close(self, _r):
            return _M_Test.TestIntf._op_close.end(self, _r)

        def sleep(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invoke(self, ((ms, ), context))

        def sleepAsync(self, ms, context=None):
            return _M_Test.TestIntf._op_sleep.invokeAsync(self, ((ms, ), context))

        def begin_sleep(self, ms, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_sleep.begin(self, ((ms, ), _response, _ex, _sent, context))

        def end_sleep(self, _r):
            return _M_Test.TestIntf._op_sleep.end(self, _r)

        def startDispatch(self, context=None):
            return _M_Test.TestIntf._op_startDispatch.invoke(self, ((), context))

        def startDispatchAsync(self, context=None):
            return _M_Test.TestIntf._op_startDispatch.invokeAsync(self, ((), context))

        def begin_startDispatch(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_startDispatch.begin(self, ((), _response, _ex, _sent, context))

        def end_startDispatch(self, _r):
            return _M_Test.TestIntf._op_startDispatch.end(self, _r)

        def finishDispatch(self, context=None):
            return _M_Test.TestIntf._op_finishDispatch.invoke(self, ((), context))

        def finishDispatchAsync(self, context=None):
            return _M_Test.TestIntf._op_finishDispatch.invokeAsync(self, ((), context))

        def begin_finishDispatch(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_finishDispatch.begin(self, ((), _response, _ex, _sent, context))

        def end_finishDispatch(self, _r):
            return _M_Test.TestIntf._op_finishDispatch.end(self, _r)

        def shutdown(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.TestIntf._op_shutdown.end(self, _r)

        def supportsAMD(self, context=None):
            return _M_Test.TestIntf._op_supportsAMD.invoke(self, ((), context))

        def supportsAMDAsync(self, context=None):
            return _M_Test.TestIntf._op_supportsAMD.invokeAsync(self, ((), context))

        def begin_supportsAMD(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_supportsAMD.begin(self, ((), _response, _ex, _sent, context))

        def end_supportsAMD(self, _r):
            return _M_Test.TestIntf._op_supportsAMD.end(self, _r)

        def supportsFunctionalTests(self, context=None):
            return _M_Test.TestIntf._op_supportsFunctionalTests.invoke(self, ((), context))

        def supportsFunctionalTestsAsync(self, context=None):
            return _M_Test.TestIntf._op_supportsFunctionalTests.invokeAsync(self, ((), context))

        def begin_supportsFunctionalTests(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_supportsFunctionalTests.begin(self, ((), _response, _ex, _sent, context))

        def end_supportsFunctionalTests(self, _r):
            return _M_Test.TestIntf._op_supportsFunctionalTests.end(self, _r)

        def pingBiDir(self, reply, context=None):
            return _M_Test.TestIntf._op_pingBiDir.invoke(self, ((reply, ), context))

        def pingBiDirAsync(self, reply, context=None):
            return _M_Test.TestIntf._op_pingBiDir.invokeAsync(self, ((reply, ), context))

        def begin_pingBiDir(self, reply, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_pingBiDir.begin(self, ((reply, ), _response, _ex, _sent, context))

        def end_pingBiDir(self, _r):
            return _M_Test.TestIntf._op_pingBiDir.end(self, _r)

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

        def opWithPayload(self, seq, current=None):
            raise NotImplementedError("servant method 'opWithPayload' not implemented")

        def opWithResult(self, current=None):
            raise NotImplementedError("servant method 'opWithResult' not implemented")

        def opWithUE(self, current=None):
            raise NotImplementedError("servant method 'opWithUE' not implemented")

        def opWithResultAndUE(self, current=None):
            raise NotImplementedError("servant method 'opWithResultAndUE' not implemented")

        def opBatch(self, current=None):
            raise NotImplementedError("servant method 'opBatch' not implemented")

        def opWithArgs(self, current=None):
            raise NotImplementedError("servant method 'opWithArgs' not implemented")

        def opBatchCount(self, current=None):
            raise NotImplementedError("servant method 'opBatchCount' not implemented")

        def waitForBatch(self, count, current=None):
            raise NotImplementedError("servant method 'waitForBatch' not implemented")

        def close(self, mode, current=None):
            raise NotImplementedError("servant method 'close' not implemented")

        def sleep(self, ms, current=None):
            raise NotImplementedError("servant method 'sleep' not implemented")

        def startDispatch(self, current=None):
            raise NotImplementedError("servant method 'startDispatch' not implemented")

        def finishDispatch(self, current=None):
            raise NotImplementedError("servant method 'finishDispatch' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def supportsAMD(self, current=None):
            raise NotImplementedError("servant method 'supportsAMD' not implemented")

        def supportsFunctionalTests(self, current=None):
            raise NotImplementedError("servant method 'supportsFunctionalTests' not implemented")

        def pingBiDir(self, reply, current=None):
            raise NotImplementedError("servant method 'pingBiDir' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_opWithPayload = IcePy.Operation('opWithPayload', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_ByteSeq, False, 0),), (), None, ())
    TestIntf._op_opWithResult = IcePy.Operation('opWithResult', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    TestIntf._op_opWithUE = IcePy.Operation('opWithUE', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_TestIntfException,))
    TestIntf._op_opWithResultAndUE = IcePy.Operation('opWithResultAndUE', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), (_M_Test._t_TestIntfException,))
    TestIntf._op_opBatch = IcePy.Operation('opBatch', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_opWithArgs = IcePy.Operation('opWithArgs', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), None, ())
    TestIntf._op_opBatchCount = IcePy.Operation('opBatchCount', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_int, False, 0), ())
    TestIntf._op_waitForBatch = IcePy.Operation('waitForBatch', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), ((), IcePy._t_bool, False, 0), ())
    TestIntf._op_close = IcePy.Operation('close', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_CloseMode, False, 0),), (), None, ())
    TestIntf._op_sleep = IcePy.Operation('sleep', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    TestIntf._op_startDispatch = IcePy.Operation('startDispatch', Ice.OperationMode.Normal, Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    TestIntf._op_finishDispatch = IcePy.Operation('finishDispatch', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_supportsAMD = IcePy.Operation('supportsAMD', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_bool, False, 0), ())
    TestIntf._op_supportsFunctionalTests = IcePy.Operation('supportsFunctionalTests', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_bool, False, 0), ())
    TestIntf._op_pingBiDir = IcePy.Operation('pingBiDir', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_PingReplyPrx, False, 0),), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

_M_Test._t_TestIntfController = IcePy.defineValue('::Test::TestIntfController', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfControllerPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfControllerPrx = Ice.createTempClass()
    class TestIntfControllerPrx(Ice.ObjectPrx):

        def holdAdapter(self, context=None):
            return _M_Test.TestIntfController._op_holdAdapter.invoke(self, ((), context))

        def holdAdapterAsync(self, context=None):
            return _M_Test.TestIntfController._op_holdAdapter.invokeAsync(self, ((), context))

        def begin_holdAdapter(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntfController._op_holdAdapter.begin(self, ((), _response, _ex, _sent, context))

        def end_holdAdapter(self, _r):
            return _M_Test.TestIntfController._op_holdAdapter.end(self, _r)

        def resumeAdapter(self, context=None):
            return _M_Test.TestIntfController._op_resumeAdapter.invoke(self, ((), context))

        def resumeAdapterAsync(self, context=None):
            return _M_Test.TestIntfController._op_resumeAdapter.invokeAsync(self, ((), context))

        def begin_resumeAdapter(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntfController._op_resumeAdapter.begin(self, ((), _response, _ex, _sent, context))

        def end_resumeAdapter(self, _r):
            return _M_Test.TestIntfController._op_resumeAdapter.end(self, _r)

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

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfControllerDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfControllerDisp = IcePy.defineClass('::Test::TestIntfController', TestIntfController, (), None, ())
    TestIntfController._ice_type = _M_Test._t_TestIntfControllerDisp

    TestIntfController._op_holdAdapter = IcePy.Operation('holdAdapter', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntfController._op_resumeAdapter = IcePy.Operation('resumeAdapter', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.TestIntfController = TestIntfController
    del TestIntfController

# Start of module Test.Outer
_M_Test.Outer = Ice.openModule('Test.Outer')
__name__ = 'Test.Outer'

# Start of module Test.Outer.Inner
_M_Test.Outer.Inner = Ice.openModule('Test.Outer.Inner')
__name__ = 'Test.Outer.Inner'

_M_Test.Outer.Inner._t_TestIntf = IcePy.defineValue('::Test::Outer::Inner::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.Outer.Inner.__dict__:
    _M_Test.Outer.Inner.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def op(self, i, context=None):
            return _M_Test.Outer.Inner.TestIntf._op_op.invoke(self, ((i, ), context))

        def opAsync(self, i, context=None):
            return _M_Test.Outer.Inner.TestIntf._op_op.invokeAsync(self, ((i, ), context))

        def begin_op(self, i, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Outer.Inner.TestIntf._op_op.begin(self, ((i, ), _response, _ex, _sent, context))

        def end_op(self, _r):
            return _M_Test.Outer.Inner.TestIntf._op_op.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.Outer.Inner.TestIntfPrx.ice_checkedCast(proxy, '::Test::Outer::Inner::TestIntf', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.Outer.Inner.TestIntfPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Outer::Inner::TestIntf'
    _M_Test.Outer.Inner._t_TestIntfPrx = IcePy.defineProxy('::Test::Outer::Inner::TestIntf', TestIntfPrx)

    _M_Test.Outer.Inner.TestIntfPrx = TestIntfPrx
    del TestIntfPrx

    _M_Test.Outer.Inner.TestIntf = Ice.createTempClass()
    class TestIntf(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Outer::Inner::TestIntf')

        def ice_id(self, current=None):
            return '::Test::Outer::Inner::TestIntf'

        @staticmethod
        def ice_staticId():
            return '::Test::Outer::Inner::TestIntf'

        def op(self, i, current=None):
            raise NotImplementedError("servant method 'op' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test.Outer.Inner._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test.Outer.Inner._t_TestIntfDisp = IcePy.defineClass('::Test::Outer::Inner::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test.Outer.Inner._t_TestIntfDisp

    TestIntf._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (((), IcePy._t_int, False, 0),), ((), IcePy._t_int, False, 0), ())

    _M_Test.Outer.Inner.TestIntf = TestIntf
    del TestIntf

# End of module Test.Outer.Inner

__name__ = 'Test.Outer'

# End of module Test.Outer

__name__ = 'Test'

# End of module Test
