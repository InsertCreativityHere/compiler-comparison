# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'Test.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if '_t_ByteSeq' not in _M_Test.__dict__:
    _M_Test._t_ByteSeq = IcePy.defineSequence('::Test::ByteSeq', (), IcePy._t_byte)

if '_t_ShortSeq' not in _M_Test.__dict__:
    _M_Test._t_ShortSeq = IcePy.defineSequence('::Test::ShortSeq', (), IcePy._t_short)

if '_t_StringSeq' not in _M_Test.__dict__:
    _M_Test._t_StringSeq = IcePy.defineSequence('::Test::StringSeq', (), IcePy._t_string)

if 'TestIntf' not in _M_Test.__dict__:
    _M_Test._t_TestIntfPrx = IcePy.declareProxy('::Test::TestIntf')

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = None
    class TestIntfPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new TestIntfPrx proxy
            
            Parameters
            ----------
            communicator : Ice.Communicator
                The communicator of the new proxy.
            proxyString : str
                The string representation of the proxy.
            
            Raises
            ------
            ParseException
                Thrown when proxyString is not a valid proxy string.
            """
            super().__init__(communicator, proxyString)

        def opByteSpan(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opByteSpan.invoke(self, ((dataIn, ), context))

        def opByteSpanAsync(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opByteSpan.invokeAsync(self, ((dataIn, ), context))

        def opShortSpan(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opShortSpan.invoke(self, ((dataIn, ), context))

        def opShortSpanAsync(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opShortSpan.invokeAsync(self, ((dataIn, ), context))

        def opStringSpan(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opStringSpan.invoke(self, ((dataIn, ), context))

        def opStringSpanAsync(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opStringSpan.invokeAsync(self, ((dataIn, ), context))

        def opOptionalByteSpan(self, dataIn=None, context=None):
            return _M_Test.TestIntf._op_opOptionalByteSpan.invoke(self, ((dataIn, ), context))

        def opOptionalByteSpanAsync(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opOptionalByteSpan.invokeAsync(self, ((dataIn, ), context))

        def opOptionalShortSpan(self, dataIn=None, context=None):
            return _M_Test.TestIntf._op_opOptionalShortSpan.invoke(self, ((dataIn, ), context))

        def opOptionalShortSpanAsync(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opOptionalShortSpan.invokeAsync(self, ((dataIn, ), context))

        def opOptionalStringSpan(self, dataIn=None, context=None):
            return _M_Test.TestIntf._op_opOptionalStringSpan.invoke(self, ((dataIn, ), context))

        def opOptionalStringSpanAsync(self, dataIn, context=None):
            return _M_Test.TestIntf._op_opOptionalStringSpan.invokeAsync(self, ((dataIn, ), context))

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

    _M_Test.TestIntf = None
    class TestIntf(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::TestIntf')

        def ice_id(self, current=None):
            return '::Test::TestIntf'

        @staticmethod
        def ice_staticId():
            return '::Test::TestIntf'

        def opByteSpan(self, dataIn, current=None):
            raise NotImplementedError("servant method 'opByteSpan' not implemented")

        def opShortSpan(self, dataIn, current=None):
            raise NotImplementedError("servant method 'opShortSpan' not implemented")

        def opStringSpan(self, dataIn, current=None):
            raise NotImplementedError("servant method 'opStringSpan' not implemented")

        def opOptionalByteSpan(self, dataIn, current=None):
            raise NotImplementedError("servant method 'opOptionalByteSpan' not implemented")

        def opOptionalShortSpan(self, dataIn, current=None):
            raise NotImplementedError("servant method 'opOptionalShortSpan' not implemented")

        def opOptionalStringSpan(self, dataIn, current=None):
            raise NotImplementedError("servant method 'opOptionalStringSpan' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    TestIntf._op_opByteSpan = IcePy.Operation('opByteSpan', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ByteSeq, False, 0),), (((), _M_Test._t_ByteSeq, False, 0),), ((), _M_Test._t_ByteSeq, False, 0), ())
    TestIntf._op_opShortSpan = IcePy.Operation('opShortSpan', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ShortSeq, False, 0),), (((), _M_Test._t_ShortSeq, False, 0),), ((), _M_Test._t_ShortSeq, False, 0), ())
    TestIntf._op_opStringSpan = IcePy.Operation('opStringSpan', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_StringSeq, False, 0),), (((), _M_Test._t_StringSeq, False, 0),), ((), _M_Test._t_StringSeq, False, 0), ())
    TestIntf._op_opOptionalByteSpan = IcePy.Operation('opOptionalByteSpan', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ByteSeq, True, 1),), (((), _M_Test._t_ByteSeq, True, 11),), ((), _M_Test._t_ByteSeq, True, 10), ())
    TestIntf._op_opOptionalShortSpan = IcePy.Operation('opOptionalShortSpan', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ShortSeq, True, 1),), (((), _M_Test._t_ShortSeq, True, 11),), ((), _M_Test._t_ShortSeq, True, 10), ())
    TestIntf._op_opOptionalStringSpan = IcePy.Operation('opOptionalStringSpan', Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_StringSeq, True, 1),), (((), _M_Test._t_StringSeq, True, 11),), ((), _M_Test._t_StringSeq, True, 10), ())
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

# End of module Test
