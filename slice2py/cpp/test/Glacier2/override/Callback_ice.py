# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Callback.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy
import Ice.BuiltinSequences_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_CallbackReceiver = IcePy.defineValue('::Test::CallbackReceiver', Ice.Value, -1, (), False, True, None, ())

if 'CallbackReceiverPrx' not in _M_Test.__dict__:
    _M_Test.CallbackReceiverPrx = Ice.createTempClass()
    class CallbackReceiverPrx(Ice.ObjectPrx):

        def callback(self, token, context=None):
            return _M_Test.CallbackReceiver._op_callback.invoke(self, ((token, ), context))

        def callbackAsync(self, token, context=None):
            return _M_Test.CallbackReceiver._op_callback.invokeAsync(self, ((token, ), context))

        def begin_callback(self, token, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.CallbackReceiver._op_callback.begin(self, ((token, ), _response, _ex, _sent, context))

        def end_callback(self, _r):
            return _M_Test.CallbackReceiver._op_callback.end(self, _r)

        def callbackWithPayload(self, payload, context=None):
            return _M_Test.CallbackReceiver._op_callbackWithPayload.invoke(self, ((payload, ), context))

        def callbackWithPayloadAsync(self, payload, context=None):
            return _M_Test.CallbackReceiver._op_callbackWithPayload.invokeAsync(self, ((payload, ), context))

        def begin_callbackWithPayload(self, payload, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.CallbackReceiver._op_callbackWithPayload.begin(self, ((payload, ), _response, _ex, _sent, context))

        def end_callbackWithPayload(self, _r):
            return _M_Test.CallbackReceiver._op_callbackWithPayload.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.CallbackReceiverPrx.ice_checkedCast(proxy, '::Test::CallbackReceiver', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.CallbackReceiverPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::CallbackReceiver'
    _M_Test._t_CallbackReceiverPrx = IcePy.defineProxy('::Test::CallbackReceiver', CallbackReceiverPrx)

    _M_Test.CallbackReceiverPrx = CallbackReceiverPrx
    del CallbackReceiverPrx

    _M_Test.CallbackReceiver = Ice.createTempClass()
    class CallbackReceiver(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::CallbackReceiver')

        def ice_id(self, current=None):
            return '::Test::CallbackReceiver'

        @staticmethod
        def ice_staticId():
            return '::Test::CallbackReceiver'

        def callback(self, token, current=None):
            raise NotImplementedError("servant method 'callback' not implemented")

        def callbackWithPayload(self, payload, current=None):
            raise NotImplementedError("servant method 'callbackWithPayload' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_CallbackReceiverDisp)

        __repr__ = __str__

    _M_Test._t_CallbackReceiverDisp = IcePy.defineClass('::Test::CallbackReceiver', CallbackReceiver, (), None, ())
    CallbackReceiver._ice_type = _M_Test._t_CallbackReceiverDisp

    CallbackReceiver._op_callback = IcePy.Operation('callback', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    CallbackReceiver._op_callbackWithPayload = IcePy.Operation('callbackWithPayload', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_ByteSeq, False, 0),), (), None, ())

    _M_Test.CallbackReceiver = CallbackReceiver
    del CallbackReceiver

_M_Test._t_Callback = IcePy.defineValue('::Test::Callback', Ice.Value, -1, (), False, True, None, ())

if 'CallbackPrx' not in _M_Test.__dict__:
    _M_Test.CallbackPrx = Ice.createTempClass()
    class CallbackPrx(Ice.ObjectPrx):

        def initiateCallback(self, proxy, token, context=None):
            return _M_Test.Callback._op_initiateCallback.invoke(self, ((proxy, token), context))

        def initiateCallbackAsync(self, proxy, token, context=None):
            return _M_Test.Callback._op_initiateCallback.invokeAsync(self, ((proxy, token), context))

        def begin_initiateCallback(self, proxy, token, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Callback._op_initiateCallback.begin(self, ((proxy, token), _response, _ex, _sent, context))

        def end_initiateCallback(self, _r):
            return _M_Test.Callback._op_initiateCallback.end(self, _r)

        def initiateCallbackWithPayload(self, proxy, context=None):
            return _M_Test.Callback._op_initiateCallbackWithPayload.invoke(self, ((proxy, ), context))

        def initiateCallbackWithPayloadAsync(self, proxy, context=None):
            return _M_Test.Callback._op_initiateCallbackWithPayload.invokeAsync(self, ((proxy, ), context))

        def begin_initiateCallbackWithPayload(self, proxy, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Callback._op_initiateCallbackWithPayload.begin(self, ((proxy, ), _response, _ex, _sent, context))

        def end_initiateCallbackWithPayload(self, _r):
            return _M_Test.Callback._op_initiateCallbackWithPayload.end(self, _r)

        def shutdown(self, context=None):
            return _M_Test.Callback._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.Callback._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Callback._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.Callback._op_shutdown.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.CallbackPrx.ice_checkedCast(proxy, '::Test::Callback', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.CallbackPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Callback'
    _M_Test._t_CallbackPrx = IcePy.defineProxy('::Test::Callback', CallbackPrx)

    _M_Test.CallbackPrx = CallbackPrx
    del CallbackPrx

    _M_Test.Callback = Ice.createTempClass()
    class Callback(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Callback')

        def ice_id(self, current=None):
            return '::Test::Callback'

        @staticmethod
        def ice_staticId():
            return '::Test::Callback'

        def initiateCallback(self, proxy, token, current=None):
            raise NotImplementedError("servant method 'initiateCallback' not implemented")

        def initiateCallbackWithPayload(self, proxy, current=None):
            raise NotImplementedError("servant method 'initiateCallbackWithPayload' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_CallbackDisp)

        __repr__ = __str__

    _M_Test._t_CallbackDisp = IcePy.defineClass('::Test::Callback', Callback, (), None, ())
    Callback._ice_type = _M_Test._t_CallbackDisp

    Callback._op_initiateCallback = IcePy.Operation('initiateCallback', Ice.OperationMode.Normal, Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_CallbackReceiverPrx, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())
    Callback._op_initiateCallbackWithPayload = IcePy.Operation('initiateCallbackWithPayload', Ice.OperationMode.Normal, Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_CallbackReceiverPrx, False, 0),), (), None, ())
    Callback._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Callback = Callback
    del Callback

# End of module Test
