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

if 'TestIntfUserException' not in _M_Test.__dict__:
    _M_Test.TestIntfUserException = Ice.createTempClass()
    class TestIntfUserException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::TestIntfUserException'

    _M_Test._t_TestIntfUserException = IcePy.defineException('::Test::TestIntfUserException', TestIntfUserException, (), None, ())
    TestIntfUserException._ice_type = _M_Test._t_TestIntfUserException

    _M_Test.TestIntfUserException = TestIntfUserException
    del TestIntfUserException

if 'TestImpossibleException' not in _M_Test.__dict__:
    _M_Test.TestImpossibleException = Ice.createTempClass()
    class TestImpossibleException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::TestImpossibleException'

    _M_Test._t_TestImpossibleException = IcePy.defineException('::Test::TestImpossibleException', TestImpossibleException, (), None, ())
    TestImpossibleException._ice_type = _M_Test._t_TestImpossibleException

    _M_Test.TestImpossibleException = TestImpossibleException
    del TestImpossibleException

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def requestFailedException(self, context=None):
            return _M_Test.TestIntf._op_requestFailedException.invoke(self, ((), context))

        def requestFailedExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_requestFailedException.invokeAsync(self, ((), context))

        def unknownUserException(self, context=None):
            return _M_Test.TestIntf._op_unknownUserException.invoke(self, ((), context))

        def unknownUserExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownUserException.invokeAsync(self, ((), context))

        def unknownLocalException(self, context=None):
            return _M_Test.TestIntf._op_unknownLocalException.invoke(self, ((), context))

        def unknownLocalExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownLocalException.invokeAsync(self, ((), context))

        def unknownException(self, context=None):
            return _M_Test.TestIntf._op_unknownException.invoke(self, ((), context))

        def unknownExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownException.invokeAsync(self, ((), context))

        def localException(self, context=None):
            return _M_Test.TestIntf._op_localException.invoke(self, ((), context))

        def localExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_localException.invokeAsync(self, ((), context))

        def javaException(self, context=None):
            return _M_Test.TestIntf._op_javaException.invoke(self, ((), context))

        def javaExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_javaException.invokeAsync(self, ((), context))

        def unknownExceptionWithServantException(self, context=None):
            return _M_Test.TestIntf._op_unknownExceptionWithServantException.invoke(self, ((), context))

        def unknownExceptionWithServantExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownExceptionWithServantException.invokeAsync(self, ((), context))

        def impossibleException(self, throw, context=None):
            return _M_Test.TestIntf._op_impossibleException.invoke(self, ((throw, ), context))

        def impossibleExceptionAsync(self, throw, context=None):
            return _M_Test.TestIntf._op_impossibleException.invokeAsync(self, ((throw, ), context))

        def intfUserException(self, throw, context=None):
            return _M_Test.TestIntf._op_intfUserException.invoke(self, ((throw, ), context))

        def intfUserExceptionAsync(self, throw, context=None):
            return _M_Test.TestIntf._op_intfUserException.invokeAsync(self, ((throw, ), context))

        def asyncResponse(self, context=None):
            return _M_Test.TestIntf._op_asyncResponse.invoke(self, ((), context))

        def asyncResponseAsync(self, context=None):
            return _M_Test.TestIntf._op_asyncResponse.invokeAsync(self, ((), context))

        def asyncException(self, context=None):
            return _M_Test.TestIntf._op_asyncException.invoke(self, ((), context))

        def asyncExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_asyncException.invokeAsync(self, ((), context))

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

        def requestFailedException(self, current=None):
            raise NotImplementedError("servant method 'requestFailedException' not implemented")

        def unknownUserException(self, current=None):
            raise NotImplementedError("servant method 'unknownUserException' not implemented")

        def unknownLocalException(self, current=None):
            raise NotImplementedError("servant method 'unknownLocalException' not implemented")

        def unknownException(self, current=None):
            raise NotImplementedError("servant method 'unknownException' not implemented")

        def localException(self, current=None):
            raise NotImplementedError("servant method 'localException' not implemented")

        def javaException(self, current=None):
            raise NotImplementedError("servant method 'javaException' not implemented")

        def unknownExceptionWithServantException(self, current=None):
            raise NotImplementedError("servant method 'unknownExceptionWithServantException' not implemented")

        def impossibleException(self, throw, current=None):
            raise NotImplementedError("servant method 'impossibleException' not implemented")

        def intfUserException(self, throw, current=None):
            raise NotImplementedError("servant method 'intfUserException' not implemented")

        def asyncResponse(self, current=None):
            raise NotImplementedError("servant method 'asyncResponse' not implemented")

        def asyncException(self, current=None):
            raise NotImplementedError("servant method 'asyncException' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_requestFailedException = IcePy.Operation('requestFailedException', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_unknownUserException = IcePy.Operation('unknownUserException', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_unknownLocalException = IcePy.Operation('unknownLocalException', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_unknownException = IcePy.Operation('unknownException', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_localException = IcePy.Operation('localException', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_javaException = IcePy.Operation('javaException', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_unknownExceptionWithServantException = IcePy.Operation('unknownExceptionWithServantException', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    TestIntf._op_impossibleException = IcePy.Operation('impossibleException', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), ((), IcePy._t_string, False, 0), (_M_Test._t_TestImpossibleException,))
    TestIntf._op_intfUserException = IcePy.Operation('intfUserException', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), ((), IcePy._t_string, False, 0), (_M_Test._t_TestIntfUserException, _M_Test._t_TestImpossibleException))
    TestIntf._op_asyncResponse = IcePy.Operation('asyncResponse', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_TestIntfUserException, _M_Test._t_TestImpossibleException))
    TestIntf._op_asyncException = IcePy.Operation('asyncException', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_TestIntfUserException, _M_Test._t_TestImpossibleException))
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

_M_Test._t_TestActivation = IcePy.defineValue('::Test::TestActivation', Ice.Value, -1, (), True, None, ())

if 'TestActivationPrx' not in _M_Test.__dict__:
    _M_Test.TestActivationPrx = Ice.createTempClass()
    class TestActivationPrx(Ice.ObjectPrx):

        def activateServantLocator(self, activate, context=None):
            return _M_Test.TestActivation._op_activateServantLocator.invoke(self, ((activate, ), context))

        def activateServantLocatorAsync(self, activate, context=None):
            return _M_Test.TestActivation._op_activateServantLocator.invokeAsync(self, ((activate, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.TestActivationPrx.ice_checkedCast(proxy, '::Test::TestActivation', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.TestActivationPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::TestActivation'
    _M_Test._t_TestActivationPrx = IcePy.defineProxy('::Test::TestActivation', TestActivationPrx)

    _M_Test.TestActivationPrx = TestActivationPrx
    del TestActivationPrx

    _M_Test.TestActivation = Ice.createTempClass()
    class TestActivation(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::TestActivation')

        def ice_id(self, current=None):
            return '::Test::TestActivation'

        @staticmethod
        def ice_staticId():
            return '::Test::TestActivation'

        def activateServantLocator(self, activate, current=None):
            raise NotImplementedError("servant method 'activateServantLocator' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestActivationDisp)

        __repr__ = __str__

    _M_Test._t_TestActivationDisp = IcePy.defineClass('::Test::TestActivation', TestActivation, (), None, ())
    TestActivation._ice_type = _M_Test._t_TestActivationDisp

    TestActivation._op_activateServantLocator = IcePy.Operation('activateServantLocator', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, ())

    _M_Test.TestActivation = TestActivation
    del TestActivation

# End of module Test
