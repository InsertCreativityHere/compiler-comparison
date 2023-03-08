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

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'C' not in _M_Test.__dict__:
    _M_Test.C = Ice.createTempClass()
    class C(Ice.Value):
        def __init__(self):
            pass

        def ice_id(self):
            return '::Test::C'

        @staticmethod
        def ice_staticId():
            return '::Test::C'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_C)

        __repr__ = __str__

    _M_Test._t_C = IcePy.defineValue('::Test::C', C, -1, (), False, False, None, ())
    C._ice_type = _M_Test._t_C

    _M_Test.C = C
    del C

if '_t_CSeq' not in _M_Test.__dict__:
    _M_Test._t_CSeq = IcePy.defineSequence('::Test::CSeq', (), _M_Test._t_C)

if '_t_CArray' not in _M_Test.__dict__:
    _M_Test._t_CArray = IcePy.defineSequence('::Test::CArray', (), _M_Test._t_C)

if '_t_CList' not in _M_Test.__dict__:
    _M_Test._t_CList = IcePy.defineSequence('::Test::CList', (), _M_Test._t_C)

if '_t_BoolSeq' not in _M_Test.__dict__:
    _M_Test._t_BoolSeq = IcePy.defineSequence('::Test::BoolSeq', (), IcePy._t_bool)

if '_t_ByteSeq' not in _M_Test.__dict__:
    _M_Test._t_ByteSeq = IcePy.defineSequence('::Test::ByteSeq', (), IcePy._t_byte)

if '_t_ShortSeq' not in _M_Test.__dict__:
    _M_Test._t_ShortSeq = IcePy.defineSequence('::Test::ShortSeq', (), IcePy._t_short)

if '_t_IntSeq' not in _M_Test.__dict__:
    _M_Test._t_IntSeq = IcePy.defineSequence('::Test::IntSeq', (), IcePy._t_int)

if '_t_LongSeq' not in _M_Test.__dict__:
    _M_Test._t_LongSeq = IcePy.defineSequence('::Test::LongSeq', (), IcePy._t_long)

if '_t_FloatSeq' not in _M_Test.__dict__:
    _M_Test._t_FloatSeq = IcePy.defineSequence('::Test::FloatSeq', (), IcePy._t_float)

if '_t_DoubleSeq' not in _M_Test.__dict__:
    _M_Test._t_DoubleSeq = IcePy.defineSequence('::Test::DoubleSeq', (), IcePy._t_double)

if '_t_StringSeq' not in _M_Test.__dict__:
    _M_Test._t_StringSeq = IcePy.defineSequence('::Test::StringSeq', (), IcePy._t_string)

if '_t_ByteBuffer' not in _M_Test.__dict__:
    _M_Test._t_ByteBuffer = IcePy.defineSequence('::Test::ByteBuffer', (), IcePy._t_byte)

if '_t_ShortBuffer' not in _M_Test.__dict__:
    _M_Test._t_ShortBuffer = IcePy.defineSequence('::Test::ShortBuffer', (), IcePy._t_short)

if '_t_IntBuffer' not in _M_Test.__dict__:
    _M_Test._t_IntBuffer = IcePy.defineSequence('::Test::IntBuffer', (), IcePy._t_int)

if '_t_LongBuffer' not in _M_Test.__dict__:
    _M_Test._t_LongBuffer = IcePy.defineSequence('::Test::LongBuffer', (), IcePy._t_long)

if '_t_FloatBuffer' not in _M_Test.__dict__:
    _M_Test._t_FloatBuffer = IcePy.defineSequence('::Test::FloatBuffer', (), IcePy._t_float)

if '_t_DoubleBuffer' not in _M_Test.__dict__:
    _M_Test._t_DoubleBuffer = IcePy.defineSequence('::Test::DoubleBuffer', (), IcePy._t_double)

if 'E' not in _M_Test.__dict__:
    _M_Test.E = Ice.createTempClass()
    class E(Ice.EnumBase):

        def __init__(self, _n, _v):
            Ice.EnumBase.__init__(self, _n, _v)

        def valueOf(self, _n):
            if _n in self._enumerators:
                return self._enumerators[_n]
            return None
        valueOf = classmethod(valueOf)

    E.E1 = E("E1", 0)
    E.E2 = E("E2", 1)
    E.E3 = E("E3", 2)
    E._enumerators = { 0:E.E1, 1:E.E2, 2:E.E3 }

    _M_Test._t_E = IcePy.defineEnum('::Test::E', E, (), E._enumerators)

    _M_Test.E = E
    del E

if '_t_ESeq' not in _M_Test.__dict__:
    _M_Test._t_ESeq = IcePy.defineSequence('::Test::ESeq', (), _M_Test._t_E)

if 'S' not in _M_Test.__dict__:
    _M_Test.S = Ice.createTempClass()
    class S(object):
        def __init__(self, en=_M_Test.E.E1):
            self.en = en

        def __hash__(self):
            _h = 0
            _h = 5 * _h + Ice.getHash(self.en)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M_Test.S):
                return NotImplemented
            else:
                if self.en is None or other.en is None:
                    if self.en != other.en:
                        return (-1 if self.en is None else 1)
                else:
                    if self.en < other.en:
                        return -1
                    elif self.en > other.en:
                        return 1
                return 0

        def __lt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r < 0

        def __le__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r <= 0

        def __gt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r > 0

        def __ge__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r >= 0

        def __eq__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r == 0

        def __ne__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r != 0

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_S)

        __repr__ = __str__

    _M_Test._t_S = IcePy.defineStruct('::Test::S', S, (), (('en', (), _M_Test._t_E),))

    _M_Test.S = S
    del S

if '_t_SSeq' not in _M_Test.__dict__:
    _M_Test._t_SSeq = IcePy.defineSequence('::Test::SSeq', (), _M_Test._t_S)

if '_t_D' not in _M_Test.__dict__:
    _M_Test._t_D = IcePy.defineDictionary('::Test::D', (), IcePy._t_int, IcePy._t_string)

if '_t_DSeq' not in _M_Test.__dict__:
    _M_Test._t_DSeq = IcePy.defineSequence('::Test::DSeq', (), _M_Test._t_D)

if '_t_StringSeqSeq' not in _M_Test.__dict__:
    _M_Test._t_StringSeqSeq = IcePy.defineSequence('::Test::StringSeqSeq', (), _M_Test._t_StringSeq)

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def opCSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opCSeq.invoke(self, ((inSeq, ), context))

        def opCSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opCSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opCSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opCSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opCSeq(self, _r):
            return _M_Test.TestIntf._op_opCSeq.end(self, _r)

        def opCArray(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opCArray.invoke(self, ((inSeq, ), context))

        def opCArrayAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opCArray.invokeAsync(self, ((inSeq, ), context))

        def begin_opCArray(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opCArray.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opCArray(self, _r):
            return _M_Test.TestIntf._op_opCArray.end(self, _r)

        def opCList(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opCList.invoke(self, ((inSeq, ), context))

        def opCListAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opCList.invokeAsync(self, ((inSeq, ), context))

        def begin_opCList(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opCList.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opCList(self, _r):
            return _M_Test.TestIntf._op_opCList.end(self, _r)

        def opBoolSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opBoolSeq.invoke(self, ((inSeq, ), context))

        def opBoolSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opBoolSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opBoolSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opBoolSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opBoolSeq(self, _r):
            return _M_Test.TestIntf._op_opBoolSeq.end(self, _r)

        def opByteSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opByteSeq.invoke(self, ((inSeq, ), context))

        def opByteSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opByteSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opByteSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opByteSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opByteSeq(self, _r):
            return _M_Test.TestIntf._op_opByteSeq.end(self, _r)

        def opShortSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opShortSeq.invoke(self, ((inSeq, ), context))

        def opShortSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opShortSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opShortSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opShortSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opShortSeq(self, _r):
            return _M_Test.TestIntf._op_opShortSeq.end(self, _r)

        def opIntSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opIntSeq.invoke(self, ((inSeq, ), context))

        def opIntSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opIntSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opIntSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opIntSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opIntSeq(self, _r):
            return _M_Test.TestIntf._op_opIntSeq.end(self, _r)

        def opLongSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opLongSeq.invoke(self, ((inSeq, ), context))

        def opLongSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opLongSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opLongSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opLongSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opLongSeq(self, _r):
            return _M_Test.TestIntf._op_opLongSeq.end(self, _r)

        def opFloatSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opFloatSeq.invoke(self, ((inSeq, ), context))

        def opFloatSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opFloatSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opFloatSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opFloatSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opFloatSeq(self, _r):
            return _M_Test.TestIntf._op_opFloatSeq.end(self, _r)

        def opDoubleSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opDoubleSeq.invoke(self, ((inSeq, ), context))

        def opDoubleSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opDoubleSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opDoubleSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opDoubleSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opDoubleSeq(self, _r):
            return _M_Test.TestIntf._op_opDoubleSeq.end(self, _r)

        def opStringSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opStringSeq.invoke(self, ((inSeq, ), context))

        def opStringSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opStringSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opStringSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opStringSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opStringSeq(self, _r):
            return _M_Test.TestIntf._op_opStringSeq.end(self, _r)

        def opESeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opESeq.invoke(self, ((inSeq, ), context))

        def opESeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opESeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opESeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opESeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opESeq(self, _r):
            return _M_Test.TestIntf._op_opESeq.end(self, _r)

        def opSSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opSSeq.invoke(self, ((inSeq, ), context))

        def opSSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opSSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opSSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opSSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opSSeq(self, _r):
            return _M_Test.TestIntf._op_opSSeq.end(self, _r)

        def opDSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opDSeq.invoke(self, ((inSeq, ), context))

        def opDSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opDSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opDSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opDSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opDSeq(self, _r):
            return _M_Test.TestIntf._op_opDSeq.end(self, _r)

        def opStringSeqSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opStringSeqSeq.invoke(self, ((inSeq, ), context))

        def opStringSeqSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opStringSeqSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opStringSeqSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opStringSeqSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opStringSeqSeq(self, _r):
            return _M_Test.TestIntf._op_opStringSeqSeq.end(self, _r)

        def opByteBufferSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opByteBufferSeq.invoke(self, ((inSeq, ), context))

        def opByteBufferSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opByteBufferSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opByteBufferSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opByteBufferSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opByteBufferSeq(self, _r):
            return _M_Test.TestIntf._op_opByteBufferSeq.end(self, _r)

        def opShortBufferSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opShortBufferSeq.invoke(self, ((inSeq, ), context))

        def opShortBufferSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opShortBufferSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opShortBufferSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opShortBufferSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opShortBufferSeq(self, _r):
            return _M_Test.TestIntf._op_opShortBufferSeq.end(self, _r)

        def opIntBufferSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opIntBufferSeq.invoke(self, ((inSeq, ), context))

        def opIntBufferSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opIntBufferSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opIntBufferSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opIntBufferSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opIntBufferSeq(self, _r):
            return _M_Test.TestIntf._op_opIntBufferSeq.end(self, _r)

        def opLongBufferSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opLongBufferSeq.invoke(self, ((inSeq, ), context))

        def opLongBufferSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opLongBufferSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opLongBufferSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opLongBufferSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opLongBufferSeq(self, _r):
            return _M_Test.TestIntf._op_opLongBufferSeq.end(self, _r)

        def opFloatBufferSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opFloatBufferSeq.invoke(self, ((inSeq, ), context))

        def opFloatBufferSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opFloatBufferSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opFloatBufferSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opFloatBufferSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opFloatBufferSeq(self, _r):
            return _M_Test.TestIntf._op_opFloatBufferSeq.end(self, _r)

        def opDoubleBufferSeq(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opDoubleBufferSeq.invoke(self, ((inSeq, ), context))

        def opDoubleBufferSeqAsync(self, inSeq, context=None):
            return _M_Test.TestIntf._op_opDoubleBufferSeq.invokeAsync(self, ((inSeq, ), context))

        def begin_opDoubleBufferSeq(self, inSeq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_opDoubleBufferSeq.begin(self, ((inSeq, ), _response, _ex, _sent, context))

        def end_opDoubleBufferSeq(self, _r):
            return _M_Test.TestIntf._op_opDoubleBufferSeq.end(self, _r)

        def shutdown(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.TestIntf._op_shutdown.end(self, _r)

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

        def opCSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opCSeq' not implemented")

        def opCArray(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opCArray' not implemented")

        def opCList(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opCList' not implemented")

        def opBoolSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opBoolSeq' not implemented")

        def opByteSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opByteSeq' not implemented")

        def opShortSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opShortSeq' not implemented")

        def opIntSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opIntSeq' not implemented")

        def opLongSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opLongSeq' not implemented")

        def opFloatSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opFloatSeq' not implemented")

        def opDoubleSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opDoubleSeq' not implemented")

        def opStringSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opStringSeq' not implemented")

        def opESeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opESeq' not implemented")

        def opSSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opSSeq' not implemented")

        def opDSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opDSeq' not implemented")

        def opStringSeqSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opStringSeqSeq' not implemented")

        def opByteBufferSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opByteBufferSeq' not implemented")

        def opShortBufferSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opShortBufferSeq' not implemented")

        def opIntBufferSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opIntBufferSeq' not implemented")

        def opLongBufferSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opLongBufferSeq' not implemented")

        def opFloatBufferSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opFloatBufferSeq' not implemented")

        def opDoubleBufferSeq(self, inSeq, current=None):
            raise NotImplementedError("servant method 'opDoubleBufferSeq' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_opCSeq = IcePy.Operation('opCSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_CSeq, False, 0),), (((), _M_Test._t_CSeq, False, 0),), ((), _M_Test._t_CSeq, False, 0), ())
    TestIntf._op_opCArray = IcePy.Operation('opCArray', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_CArray, False, 0),), (((), _M_Test._t_CArray, False, 0),), ((), _M_Test._t_CArray, False, 0), ())
    TestIntf._op_opCList = IcePy.Operation('opCList', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_CList, False, 0),), (((), _M_Test._t_CList, False, 0),), ((), _M_Test._t_CList, False, 0), ())
    TestIntf._op_opBoolSeq = IcePy.Operation('opBoolSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_BoolSeq, False, 0),), (((), _M_Test._t_BoolSeq, False, 0),), ((), _M_Test._t_BoolSeq, False, 0), ())
    TestIntf._op_opByteSeq = IcePy.Operation('opByteSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ByteSeq, False, 0),), (((), _M_Test._t_ByteSeq, False, 0),), ((), _M_Test._t_ByteSeq, False, 0), ())
    TestIntf._op_opShortSeq = IcePy.Operation('opShortSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ShortSeq, False, 0),), (((), _M_Test._t_ShortSeq, False, 0),), ((), _M_Test._t_ShortSeq, False, 0), ())
    TestIntf._op_opIntSeq = IcePy.Operation('opIntSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_IntSeq, False, 0),), (((), _M_Test._t_IntSeq, False, 0),), ((), _M_Test._t_IntSeq, False, 0), ())
    TestIntf._op_opLongSeq = IcePy.Operation('opLongSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_LongSeq, False, 0),), (((), _M_Test._t_LongSeq, False, 0),), ((), _M_Test._t_LongSeq, False, 0), ())
    TestIntf._op_opFloatSeq = IcePy.Operation('opFloatSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_FloatSeq, False, 0),), (((), _M_Test._t_FloatSeq, False, 0),), ((), _M_Test._t_FloatSeq, False, 0), ())
    TestIntf._op_opDoubleSeq = IcePy.Operation('opDoubleSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_DoubleSeq, False, 0),), (((), _M_Test._t_DoubleSeq, False, 0),), ((), _M_Test._t_DoubleSeq, False, 0), ())
    TestIntf._op_opStringSeq = IcePy.Operation('opStringSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_StringSeq, False, 0),), (((), _M_Test._t_StringSeq, False, 0),), ((), _M_Test._t_StringSeq, False, 0), ())
    TestIntf._op_opESeq = IcePy.Operation('opESeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ESeq, False, 0),), (((), _M_Test._t_ESeq, False, 0),), ((), _M_Test._t_ESeq, False, 0), ())
    TestIntf._op_opSSeq = IcePy.Operation('opSSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_SSeq, False, 0),), (((), _M_Test._t_SSeq, False, 0),), ((), _M_Test._t_SSeq, False, 0), ())
    TestIntf._op_opDSeq = IcePy.Operation('opDSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_DSeq, False, 0),), (((), _M_Test._t_DSeq, False, 0),), ((), _M_Test._t_DSeq, False, 0), ())
    TestIntf._op_opStringSeqSeq = IcePy.Operation('opStringSeqSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_StringSeqSeq, False, 0),), (((), _M_Test._t_StringSeqSeq, False, 0),), ((), _M_Test._t_StringSeqSeq, False, 0), ())
    TestIntf._op_opByteBufferSeq = IcePy.Operation('opByteBufferSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ByteBuffer, False, 0),), (((), _M_Test._t_ByteBuffer, False, 0),), ((), _M_Test._t_ByteBuffer, False, 0), ())
    TestIntf._op_opShortBufferSeq = IcePy.Operation('opShortBufferSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_ShortBuffer, False, 0),), (((), _M_Test._t_ShortBuffer, False, 0),), ((), _M_Test._t_ShortBuffer, False, 0), ())
    TestIntf._op_opIntBufferSeq = IcePy.Operation('opIntBufferSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_IntBuffer, False, 0),), (((), _M_Test._t_IntBuffer, False, 0),), ((), _M_Test._t_IntBuffer, False, 0), ())
    TestIntf._op_opLongBufferSeq = IcePy.Operation('opLongBufferSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_LongBuffer, False, 0),), (((), _M_Test._t_LongBuffer, False, 0),), ((), _M_Test._t_LongBuffer, False, 0), ())
    TestIntf._op_opFloatBufferSeq = IcePy.Operation('opFloatBufferSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_FloatBuffer, False, 0),), (((), _M_Test._t_FloatBuffer, False, 0),), ((), _M_Test._t_FloatBuffer, False, 0), ())
    TestIntf._op_opDoubleBufferSeq = IcePy.Operation('opDoubleBufferSeq', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Test._t_DoubleBuffer, False, 0),), (((), _M_Test._t_DoubleBuffer, False, 0),), ((), _M_Test._t_DoubleBuffer, False, 0), ())
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

# End of module Test
