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

_M_Test._t_Background = IcePy.defineValue('::Test::Background', Ice.Value, -1, (), True, None, ())

if 'BackgroundPrx' not in _M_Test.__dict__:
    _M_Test.BackgroundPrx = Ice.createTempClass()
    class BackgroundPrx(Ice.ObjectPrx):

        def op(self, context=None):
            return _M_Test.Background._op_op.invoke(self, ((), context))

        def opAsync(self, context=None):
            return _M_Test.Background._op_op.invokeAsync(self, ((), context))

        def opWithPayload(self, seq, context=None):
            return _M_Test.Background._op_opWithPayload.invoke(self, ((seq, ), context))

        def opWithPayloadAsync(self, seq, context=None):
            return _M_Test.Background._op_opWithPayload.invokeAsync(self, ((seq, ), context))

        def shutdown(self, context=None):
            return _M_Test.Background._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.Background._op_shutdown.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.BackgroundPrx.ice_checkedCast(proxy, '::Test::Background', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.BackgroundPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Background'
    _M_Test._t_BackgroundPrx = IcePy.defineProxy('::Test::Background', BackgroundPrx)

    _M_Test.BackgroundPrx = BackgroundPrx
    del BackgroundPrx

    _M_Test.Background = Ice.createTempClass()
    class Background(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Background')

        def ice_id(self, current=None):
            return '::Test::Background'

        @staticmethod
        def ice_staticId():
            return '::Test::Background'

        def op(self, current=None):
            raise NotImplementedError("servant method 'op' not implemented")

        def opWithPayload(self, seq, current=None):
            raise NotImplementedError("servant method 'opWithPayload' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_BackgroundDisp)

        __repr__ = __str__

    _M_Test._t_BackgroundDisp = IcePy.defineClass('::Test::Background', Background, (), None, ())
    Background._ice_type = _M_Test._t_BackgroundDisp

    Background._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Background._op_opWithPayload = IcePy.Operation('opWithPayload', Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_ByteSeq, False, 0),), (), None, ())
    Background._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Background = Background
    del Background

_M_Test._t_BackgroundController = IcePy.defineValue('::Test::BackgroundController', Ice.Value, -1, (), True, None, ())

if 'BackgroundControllerPrx' not in _M_Test.__dict__:
    _M_Test.BackgroundControllerPrx = Ice.createTempClass()
    class BackgroundControllerPrx(Ice.ObjectPrx):

        def pauseCall(self, call, context=None):
            return _M_Test.BackgroundController._op_pauseCall.invoke(self, ((call, ), context))

        def pauseCallAsync(self, call, context=None):
            return _M_Test.BackgroundController._op_pauseCall.invokeAsync(self, ((call, ), context))

        def resumeCall(self, call, context=None):
            return _M_Test.BackgroundController._op_resumeCall.invoke(self, ((call, ), context))

        def resumeCallAsync(self, call, context=None):
            return _M_Test.BackgroundController._op_resumeCall.invokeAsync(self, ((call, ), context))

        def holdAdapter(self, context=None):
            return _M_Test.BackgroundController._op_holdAdapter.invoke(self, ((), context))

        def holdAdapterAsync(self, context=None):
            return _M_Test.BackgroundController._op_holdAdapter.invokeAsync(self, ((), context))

        def resumeAdapter(self, context=None):
            return _M_Test.BackgroundController._op_resumeAdapter.invoke(self, ((), context))

        def resumeAdapterAsync(self, context=None):
            return _M_Test.BackgroundController._op_resumeAdapter.invokeAsync(self, ((), context))

        def initializeException(self, enable, context=None):
            return _M_Test.BackgroundController._op_initializeException.invoke(self, ((enable, ), context))

        def initializeExceptionAsync(self, enable, context=None):
            return _M_Test.BackgroundController._op_initializeException.invokeAsync(self, ((enable, ), context))

        def readReady(self, enable, context=None):
            return _M_Test.BackgroundController._op_readReady.invoke(self, ((enable, ), context))

        def readReadyAsync(self, enable, context=None):
            return _M_Test.BackgroundController._op_readReady.invokeAsync(self, ((enable, ), context))

        def readException(self, enable, context=None):
            return _M_Test.BackgroundController._op_readException.invoke(self, ((enable, ), context))

        def readExceptionAsync(self, enable, context=None):
            return _M_Test.BackgroundController._op_readException.invokeAsync(self, ((enable, ), context))

        def writeReady(self, enable, context=None):
            return _M_Test.BackgroundController._op_writeReady.invoke(self, ((enable, ), context))

        def writeReadyAsync(self, enable, context=None):
            return _M_Test.BackgroundController._op_writeReady.invokeAsync(self, ((enable, ), context))

        def writeException(self, enable, context=None):
            return _M_Test.BackgroundController._op_writeException.invoke(self, ((enable, ), context))

        def writeExceptionAsync(self, enable, context=None):
            return _M_Test.BackgroundController._op_writeException.invokeAsync(self, ((enable, ), context))

        def buffered(self, enable, context=None):
            return _M_Test.BackgroundController._op_buffered.invoke(self, ((enable, ), context))

        def bufferedAsync(self, enable, context=None):
            return _M_Test.BackgroundController._op_buffered.invokeAsync(self, ((enable, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.BackgroundControllerPrx.ice_checkedCast(proxy, '::Test::BackgroundController', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.BackgroundControllerPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::BackgroundController'
    _M_Test._t_BackgroundControllerPrx = IcePy.defineProxy('::Test::BackgroundController', BackgroundControllerPrx)

    _M_Test.BackgroundControllerPrx = BackgroundControllerPrx
    del BackgroundControllerPrx

    _M_Test.BackgroundController = Ice.createTempClass()
    class BackgroundController(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::BackgroundController')

        def ice_id(self, current=None):
            return '::Test::BackgroundController'

        @staticmethod
        def ice_staticId():
            return '::Test::BackgroundController'

        def pauseCall(self, call, current=None):
            raise NotImplementedError("servant method 'pauseCall' not implemented")

        def resumeCall(self, call, current=None):
            raise NotImplementedError("servant method 'resumeCall' not implemented")

        def holdAdapter(self, current=None):
            raise NotImplementedError("servant method 'holdAdapter' not implemented")

        def resumeAdapter(self, current=None):
            raise NotImplementedError("servant method 'resumeAdapter' not implemented")

        def initializeException(self, enable, current=None):
            raise NotImplementedError("servant method 'initializeException' not implemented")

        def readReady(self, enable, current=None):
            raise NotImplementedError("servant method 'readReady' not implemented")

        def readException(self, enable, current=None):
            raise NotImplementedError("servant method 'readException' not implemented")

        def writeReady(self, enable, current=None):
            raise NotImplementedError("servant method 'writeReady' not implemented")

        def writeException(self, enable, current=None):
            raise NotImplementedError("servant method 'writeException' not implemented")

        def buffered(self, enable, current=None):
            raise NotImplementedError("servant method 'buffered' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_BackgroundControllerDisp)

        __repr__ = __str__

    _M_Test._t_BackgroundControllerDisp = IcePy.defineClass('::Test::BackgroundController', BackgroundController, (), None, ())
    BackgroundController._ice_type = _M_Test._t_BackgroundControllerDisp

    BackgroundController._op_pauseCall = IcePy.Operation('pauseCall', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), None, ())
    BackgroundController._op_resumeCall = IcePy.Operation('resumeCall', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), None, ())
    BackgroundController._op_holdAdapter = IcePy.Operation('holdAdapter', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    BackgroundController._op_resumeAdapter = IcePy.Operation('resumeAdapter', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    BackgroundController._op_initializeException = IcePy.Operation('initializeException', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, ())
    BackgroundController._op_readReady = IcePy.Operation('readReady', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, ())
    BackgroundController._op_readException = IcePy.Operation('readException', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, ())
    BackgroundController._op_writeReady = IcePy.Operation('writeReady', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, ())
    BackgroundController._op_writeException = IcePy.Operation('writeException', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, ())
    BackgroundController._op_buffered = IcePy.Operation('buffered', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, ())

    _M_Test.BackgroundController = BackgroundController
    del BackgroundController

# End of module Test
