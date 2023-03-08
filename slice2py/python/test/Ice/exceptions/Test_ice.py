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

_M_Test._t_Empty = IcePy.defineValue('::Test::Empty', Ice.Value, -1, (), False, True, None, ())

if 'EmptyPrx' not in _M_Test.__dict__:
    _M_Test.EmptyPrx = Ice.createTempClass()
    class EmptyPrx(Ice.ObjectPrx):

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.EmptyPrx.ice_checkedCast(proxy, '::Test::Empty', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.EmptyPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Empty'
    _M_Test._t_EmptyPrx = IcePy.defineProxy('::Test::Empty', EmptyPrx)

    _M_Test.EmptyPrx = EmptyPrx
    del EmptyPrx

    _M_Test.Empty = Ice.createTempClass()
    class Empty(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Empty')

        def ice_id(self, current=None):
            return '::Test::Empty'

        @staticmethod
        def ice_staticId():
            return '::Test::Empty'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_EmptyDisp)

        __repr__ = __str__

    _M_Test._t_EmptyDisp = IcePy.defineClass('::Test::Empty', Empty, (), None, ())
    Empty._ice_type = _M_Test._t_EmptyDisp

    _M_Test.Empty = Empty
    del Empty

if 'Thrower' not in _M_Test.__dict__:
    _M_Test._t_ThrowerDisp = IcePy.declareClass('::Test::Thrower')
    _M_Test._t_ThrowerPrx = IcePy.declareProxy('::Test::Thrower')

if 'A' not in _M_Test.__dict__:
    _M_Test.A = Ice.createTempClass()
    class A(Ice.UserException):
        def __init__(self, aMem=0):
            self.aMem = aMem

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::A'

    _M_Test._t_A = IcePy.defineException('::Test::A', A, (), False, None, (('aMem', (), IcePy._t_int, False, 0),))
    A._ice_type = _M_Test._t_A

    _M_Test.A = A
    del A

if 'B' not in _M_Test.__dict__:
    _M_Test.B = Ice.createTempClass()
    class B(_M_Test.A):
        def __init__(self, aMem=0, bMem=0):
            _M_Test.A.__init__(self, aMem)
            self.bMem = bMem

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::B'

    _M_Test._t_B = IcePy.defineException('::Test::B', B, (), False, _M_Test._t_A, (('bMem', (), IcePy._t_int, False, 0),))
    B._ice_type = _M_Test._t_B

    _M_Test.B = B
    del B

if 'C' not in _M_Test.__dict__:
    _M_Test.C = Ice.createTempClass()
    class C(_M_Test.B):
        def __init__(self, aMem=0, bMem=0, cMem=0):
            _M_Test.B.__init__(self, aMem, bMem)
            self.cMem = cMem

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::C'

    _M_Test._t_C = IcePy.defineException('::Test::C', C, (), False, _M_Test._t_B, (('cMem', (), IcePy._t_int, False, 0),))
    C._ice_type = _M_Test._t_C

    _M_Test.C = C
    del C

if 'D' not in _M_Test.__dict__:
    _M_Test.D = Ice.createTempClass()
    class D(Ice.UserException):
        def __init__(self, dMem=0):
            self.dMem = dMem

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::D'

    _M_Test._t_D = IcePy.defineException('::Test::D', D, (), False, None, (('dMem', (), IcePy._t_int, False, 0),))
    D._ice_type = _M_Test._t_D

    _M_Test.D = D
    del D

# Start of module Test.Mod
_M_Test.Mod = Ice.openModule('Test.Mod')
__name__ = 'Test.Mod'

if 'A' not in _M_Test.Mod.__dict__:
    _M_Test.Mod.A = Ice.createTempClass()
    class A(_M_Test.A):
        def __init__(self, aMem=0, a2Mem=0):
            _M_Test.A.__init__(self, aMem)
            self.a2Mem = a2Mem

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::Mod::A'

    _M_Test.Mod._t_A = IcePy.defineException('::Test::Mod::A', A, (), False, _M_Test._t_A, (('a2Mem', (), IcePy._t_int, False, 0),))
    A._ice_type = _M_Test.Mod._t_A

    _M_Test.Mod.A = A
    del A

# End of module Test.Mod

__name__ = 'Test'

_M_Test._t_Thrower = IcePy.defineValue('::Test::Thrower', Ice.Value, -1, (), False, True, None, ())

if 'ThrowerPrx' not in _M_Test.__dict__:
    _M_Test.ThrowerPrx = Ice.createTempClass()
    class ThrowerPrx(Ice.ObjectPrx):

        def shutdown(self, context=None):
            return _M_Test.Thrower._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.Thrower._op_shutdown.invokeAsync(self, ((), context))

        def begin_shutdown(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_shutdown.begin(self, ((), _response, _ex, _sent, context))

        def end_shutdown(self, _r):
            return _M_Test.Thrower._op_shutdown.end(self, _r)

        def supportsUndeclaredExceptions(self, context=None):
            return _M_Test.Thrower._op_supportsUndeclaredExceptions.invoke(self, ((), context))

        def supportsUndeclaredExceptionsAsync(self, context=None):
            return _M_Test.Thrower._op_supportsUndeclaredExceptions.invokeAsync(self, ((), context))

        def begin_supportsUndeclaredExceptions(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_supportsUndeclaredExceptions.begin(self, ((), _response, _ex, _sent, context))

        def end_supportsUndeclaredExceptions(self, _r):
            return _M_Test.Thrower._op_supportsUndeclaredExceptions.end(self, _r)

        def supportsAssertException(self, context=None):
            return _M_Test.Thrower._op_supportsAssertException.invoke(self, ((), context))

        def supportsAssertExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_supportsAssertException.invokeAsync(self, ((), context))

        def begin_supportsAssertException(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_supportsAssertException.begin(self, ((), _response, _ex, _sent, context))

        def end_supportsAssertException(self, _r):
            return _M_Test.Thrower._op_supportsAssertException.end(self, _r)

        def throwAasA(self, a, context=None):
            return _M_Test.Thrower._op_throwAasA.invoke(self, ((a, ), context))

        def throwAasAAsync(self, a, context=None):
            return _M_Test.Thrower._op_throwAasA.invokeAsync(self, ((a, ), context))

        def begin_throwAasA(self, a, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwAasA.begin(self, ((a, ), _response, _ex, _sent, context))

        def end_throwAasA(self, _r):
            return _M_Test.Thrower._op_throwAasA.end(self, _r)

        def throwAorDasAorD(self, a, context=None):
            return _M_Test.Thrower._op_throwAorDasAorD.invoke(self, ((a, ), context))

        def throwAorDasAorDAsync(self, a, context=None):
            return _M_Test.Thrower._op_throwAorDasAorD.invokeAsync(self, ((a, ), context))

        def begin_throwAorDasAorD(self, a, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwAorDasAorD.begin(self, ((a, ), _response, _ex, _sent, context))

        def end_throwAorDasAorD(self, _r):
            return _M_Test.Thrower._op_throwAorDasAorD.end(self, _r)

        def throwBasA(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasA.invoke(self, ((a, b), context))

        def throwBasAAsync(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasA.invokeAsync(self, ((a, b), context))

        def begin_throwBasA(self, a, b, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwBasA.begin(self, ((a, b), _response, _ex, _sent, context))

        def end_throwBasA(self, _r):
            return _M_Test.Thrower._op_throwBasA.end(self, _r)

        def throwCasA(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasA.invoke(self, ((a, b, c), context))

        def throwCasAAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasA.invokeAsync(self, ((a, b, c), context))

        def begin_throwCasA(self, a, b, c, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwCasA.begin(self, ((a, b, c), _response, _ex, _sent, context))

        def end_throwCasA(self, _r):
            return _M_Test.Thrower._op_throwCasA.end(self, _r)

        def throwBasB(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasB.invoke(self, ((a, b), context))

        def throwBasBAsync(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasB.invokeAsync(self, ((a, b), context))

        def begin_throwBasB(self, a, b, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwBasB.begin(self, ((a, b), _response, _ex, _sent, context))

        def end_throwBasB(self, _r):
            return _M_Test.Thrower._op_throwBasB.end(self, _r)

        def throwCasB(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasB.invoke(self, ((a, b, c), context))

        def throwCasBAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasB.invokeAsync(self, ((a, b, c), context))

        def begin_throwCasB(self, a, b, c, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwCasB.begin(self, ((a, b, c), _response, _ex, _sent, context))

        def end_throwCasB(self, _r):
            return _M_Test.Thrower._op_throwCasB.end(self, _r)

        def throwCasC(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasC.invoke(self, ((a, b, c), context))

        def throwCasCAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasC.invokeAsync(self, ((a, b, c), context))

        def begin_throwCasC(self, a, b, c, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwCasC.begin(self, ((a, b, c), _response, _ex, _sent, context))

        def end_throwCasC(self, _r):
            return _M_Test.Thrower._op_throwCasC.end(self, _r)

        def throwModA(self, a, a2, context=None):
            return _M_Test.Thrower._op_throwModA.invoke(self, ((a, a2), context))

        def throwModAAsync(self, a, a2, context=None):
            return _M_Test.Thrower._op_throwModA.invokeAsync(self, ((a, a2), context))

        def begin_throwModA(self, a, a2, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwModA.begin(self, ((a, a2), _response, _ex, _sent, context))

        def end_throwModA(self, _r):
            return _M_Test.Thrower._op_throwModA.end(self, _r)

        def throwUndeclaredA(self, a, context=None):
            return _M_Test.Thrower._op_throwUndeclaredA.invoke(self, ((a, ), context))

        def throwUndeclaredAAsync(self, a, context=None):
            return _M_Test.Thrower._op_throwUndeclaredA.invokeAsync(self, ((a, ), context))

        def begin_throwUndeclaredA(self, a, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwUndeclaredA.begin(self, ((a, ), _response, _ex, _sent, context))

        def end_throwUndeclaredA(self, _r):
            return _M_Test.Thrower._op_throwUndeclaredA.end(self, _r)

        def throwUndeclaredB(self, a, b, context=None):
            return _M_Test.Thrower._op_throwUndeclaredB.invoke(self, ((a, b), context))

        def throwUndeclaredBAsync(self, a, b, context=None):
            return _M_Test.Thrower._op_throwUndeclaredB.invokeAsync(self, ((a, b), context))

        def begin_throwUndeclaredB(self, a, b, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwUndeclaredB.begin(self, ((a, b), _response, _ex, _sent, context))

        def end_throwUndeclaredB(self, _r):
            return _M_Test.Thrower._op_throwUndeclaredB.end(self, _r)

        def throwUndeclaredC(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwUndeclaredC.invoke(self, ((a, b, c), context))

        def throwUndeclaredCAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwUndeclaredC.invokeAsync(self, ((a, b, c), context))

        def begin_throwUndeclaredC(self, a, b, c, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwUndeclaredC.begin(self, ((a, b, c), _response, _ex, _sent, context))

        def end_throwUndeclaredC(self, _r):
            return _M_Test.Thrower._op_throwUndeclaredC.end(self, _r)

        def throwLocalException(self, context=None):
            return _M_Test.Thrower._op_throwLocalException.invoke(self, ((), context))

        def throwLocalExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwLocalException.invokeAsync(self, ((), context))

        def begin_throwLocalException(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwLocalException.begin(self, ((), _response, _ex, _sent, context))

        def end_throwLocalException(self, _r):
            return _M_Test.Thrower._op_throwLocalException.end(self, _r)

        def throwNonIceException(self, context=None):
            return _M_Test.Thrower._op_throwNonIceException.invoke(self, ((), context))

        def throwNonIceExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwNonIceException.invokeAsync(self, ((), context))

        def begin_throwNonIceException(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwNonIceException.begin(self, ((), _response, _ex, _sent, context))

        def end_throwNonIceException(self, _r):
            return _M_Test.Thrower._op_throwNonIceException.end(self, _r)

        def throwAssertException(self, context=None):
            return _M_Test.Thrower._op_throwAssertException.invoke(self, ((), context))

        def throwAssertExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwAssertException.invokeAsync(self, ((), context))

        def begin_throwAssertException(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwAssertException.begin(self, ((), _response, _ex, _sent, context))

        def end_throwAssertException(self, _r):
            return _M_Test.Thrower._op_throwAssertException.end(self, _r)

        def throwMemoryLimitException(self, seq, context=None):
            return _M_Test.Thrower._op_throwMemoryLimitException.invoke(self, ((seq, ), context))

        def throwMemoryLimitExceptionAsync(self, seq, context=None):
            return _M_Test.Thrower._op_throwMemoryLimitException.invokeAsync(self, ((seq, ), context))

        def begin_throwMemoryLimitException(self, seq, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwMemoryLimitException.begin(self, ((seq, ), _response, _ex, _sent, context))

        def end_throwMemoryLimitException(self, _r):
            return _M_Test.Thrower._op_throwMemoryLimitException.end(self, _r)

        def throwLocalExceptionIdempotent(self, context=None):
            return _M_Test.Thrower._op_throwLocalExceptionIdempotent.invoke(self, ((), context))

        def throwLocalExceptionIdempotentAsync(self, context=None):
            return _M_Test.Thrower._op_throwLocalExceptionIdempotent.invokeAsync(self, ((), context))

        def begin_throwLocalExceptionIdempotent(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwLocalExceptionIdempotent.begin(self, ((), _response, _ex, _sent, context))

        def end_throwLocalExceptionIdempotent(self, _r):
            return _M_Test.Thrower._op_throwLocalExceptionIdempotent.end(self, _r)

        def throwAfterResponse(self, context=None):
            return _M_Test.Thrower._op_throwAfterResponse.invoke(self, ((), context))

        def throwAfterResponseAsync(self, context=None):
            return _M_Test.Thrower._op_throwAfterResponse.invokeAsync(self, ((), context))

        def begin_throwAfterResponse(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwAfterResponse.begin(self, ((), _response, _ex, _sent, context))

        def end_throwAfterResponse(self, _r):
            return _M_Test.Thrower._op_throwAfterResponse.end(self, _r)

        def throwAfterException(self, context=None):
            return _M_Test.Thrower._op_throwAfterException.invoke(self, ((), context))

        def throwAfterExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwAfterException.invokeAsync(self, ((), context))

        def begin_throwAfterException(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwAfterException.begin(self, ((), _response, _ex, _sent, context))

        def end_throwAfterException(self, _r):
            return _M_Test.Thrower._op_throwAfterException.end(self, _r)

        def throwMarshalException(self, context=None):
            return _M_Test.Thrower._op_throwMarshalException.invoke(self, ((), context))

        def throwMarshalExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwMarshalException.invokeAsync(self, ((), context))

        def begin_throwMarshalException(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Thrower._op_throwMarshalException.begin(self, ((), _response, _ex, _sent, context))

        def end_throwMarshalException(self, _r):
            return _M_Test.Thrower._op_throwMarshalException.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.ThrowerPrx.ice_checkedCast(proxy, '::Test::Thrower', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.ThrowerPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Thrower'
    _M_Test._t_ThrowerPrx = IcePy.defineProxy('::Test::Thrower', ThrowerPrx)

    _M_Test.ThrowerPrx = ThrowerPrx
    del ThrowerPrx

    _M_Test.Thrower = Ice.createTempClass()
    class Thrower(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Thrower')

        def ice_id(self, current=None):
            return '::Test::Thrower'

        @staticmethod
        def ice_staticId():
            return '::Test::Thrower'

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def supportsUndeclaredExceptions(self, current=None):
            raise NotImplementedError("servant method 'supportsUndeclaredExceptions' not implemented")

        def supportsAssertException(self, current=None):
            raise NotImplementedError("servant method 'supportsAssertException' not implemented")

        def throwAasA(self, a, current=None):
            raise NotImplementedError("servant method 'throwAasA' not implemented")

        def throwAorDasAorD(self, a, current=None):
            raise NotImplementedError("servant method 'throwAorDasAorD' not implemented")

        def throwBasA(self, a, b, current=None):
            raise NotImplementedError("servant method 'throwBasA' not implemented")

        def throwCasA(self, a, b, c, current=None):
            raise NotImplementedError("servant method 'throwCasA' not implemented")

        def throwBasB(self, a, b, current=None):
            raise NotImplementedError("servant method 'throwBasB' not implemented")

        def throwCasB(self, a, b, c, current=None):
            raise NotImplementedError("servant method 'throwCasB' not implemented")

        def throwCasC(self, a, b, c, current=None):
            raise NotImplementedError("servant method 'throwCasC' not implemented")

        def throwModA(self, a, a2, current=None):
            raise NotImplementedError("servant method 'throwModA' not implemented")

        def throwUndeclaredA(self, a, current=None):
            raise NotImplementedError("servant method 'throwUndeclaredA' not implemented")

        def throwUndeclaredB(self, a, b, current=None):
            raise NotImplementedError("servant method 'throwUndeclaredB' not implemented")

        def throwUndeclaredC(self, a, b, c, current=None):
            raise NotImplementedError("servant method 'throwUndeclaredC' not implemented")

        def throwLocalException(self, current=None):
            raise NotImplementedError("servant method 'throwLocalException' not implemented")

        def throwNonIceException(self, current=None):
            raise NotImplementedError("servant method 'throwNonIceException' not implemented")

        def throwAssertException(self, current=None):
            raise NotImplementedError("servant method 'throwAssertException' not implemented")

        def throwMemoryLimitException(self, seq, current=None):
            raise NotImplementedError("servant method 'throwMemoryLimitException' not implemented")

        def throwLocalExceptionIdempotent(self, current=None):
            raise NotImplementedError("servant method 'throwLocalExceptionIdempotent' not implemented")

        def throwAfterResponse(self, current=None):
            raise NotImplementedError("servant method 'throwAfterResponse' not implemented")

        def throwAfterException(self, current=None):
            raise NotImplementedError("servant method 'throwAfterException' not implemented")

        def throwMarshalException(self, current=None):
            raise NotImplementedError("servant method 'throwMarshalException' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_ThrowerDisp)

        __repr__ = __str__

    _M_Test._t_ThrowerDisp = IcePy.defineClass('::Test::Thrower', Thrower, (), None, ())
    Thrower._ice_type = _M_Test._t_ThrowerDisp

    Thrower._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Thrower._op_supportsUndeclaredExceptions = IcePy.Operation('supportsUndeclaredExceptions', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_bool, False, 0), ())
    Thrower._op_supportsAssertException = IcePy.Operation('supportsAssertException', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), ((), IcePy._t_bool, False, 0), ())
    Thrower._op_throwAasA = IcePy.Operation('throwAasA', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, (_M_Test._t_A,))
    Thrower._op_throwAorDasAorD = IcePy.Operation('throwAorDasAorD', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, (_M_Test._t_A, _M_Test._t_D))
    Thrower._op_throwBasA = IcePy.Operation('throwBasA', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_A,))
    Thrower._op_throwCasA = IcePy.Operation('throwCasA', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_A,))
    Thrower._op_throwBasB = IcePy.Operation('throwBasB', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_B,))
    Thrower._op_throwCasB = IcePy.Operation('throwCasB', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_B,))
    Thrower._op_throwCasC = IcePy.Operation('throwCasC', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_C,))
    Thrower._op_throwModA = IcePy.Operation('throwModA', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test.Mod._t_A,))
    Thrower._op_throwUndeclaredA = IcePy.Operation('throwUndeclaredA', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    Thrower._op_throwUndeclaredB = IcePy.Operation('throwUndeclaredB', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())
    Thrower._op_throwUndeclaredC = IcePy.Operation('throwUndeclaredC', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())
    Thrower._op_throwLocalException = IcePy.Operation('throwLocalException', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Thrower._op_throwNonIceException = IcePy.Operation('throwNonIceException', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Thrower._op_throwAssertException = IcePy.Operation('throwAssertException', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Thrower._op_throwMemoryLimitException = IcePy.Operation('throwMemoryLimitException', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_ByteSeq, False, 0),), (), ((), _M_Ice._t_ByteSeq, False, 0), ())
    Thrower._op_throwLocalExceptionIdempotent = IcePy.Operation('throwLocalExceptionIdempotent', Ice.OperationMode.Idempotent, Ice.OperationMode.Idempotent, False, None, (), (), (), None, ())
    Thrower._op_throwAfterResponse = IcePy.Operation('throwAfterResponse', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    Thrower._op_throwAfterException = IcePy.Operation('throwAfterException', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_A,))
    Thrower._op_throwMarshalException = IcePy.Operation('throwMarshalException', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (((), IcePy._t_int, False, 0),), ((), IcePy._t_int, False, 0), ())

    _M_Test.Thrower = Thrower
    del Thrower

_M_Test._t_WrongOperation = IcePy.defineValue('::Test::WrongOperation', Ice.Value, -1, (), False, True, None, ())

if 'WrongOperationPrx' not in _M_Test.__dict__:
    _M_Test.WrongOperationPrx = Ice.createTempClass()
    class WrongOperationPrx(Ice.ObjectPrx):

        def noSuchOperation(self, context=None):
            return _M_Test.WrongOperation._op_noSuchOperation.invoke(self, ((), context))

        def noSuchOperationAsync(self, context=None):
            return _M_Test.WrongOperation._op_noSuchOperation.invokeAsync(self, ((), context))

        def begin_noSuchOperation(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.WrongOperation._op_noSuchOperation.begin(self, ((), _response, _ex, _sent, context))

        def end_noSuchOperation(self, _r):
            return _M_Test.WrongOperation._op_noSuchOperation.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.WrongOperationPrx.ice_checkedCast(proxy, '::Test::WrongOperation', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.WrongOperationPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::WrongOperation'
    _M_Test._t_WrongOperationPrx = IcePy.defineProxy('::Test::WrongOperation', WrongOperationPrx)

    _M_Test.WrongOperationPrx = WrongOperationPrx
    del WrongOperationPrx

    _M_Test.WrongOperation = Ice.createTempClass()
    class WrongOperation(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::WrongOperation')

        def ice_id(self, current=None):
            return '::Test::WrongOperation'

        @staticmethod
        def ice_staticId():
            return '::Test::WrongOperation'

        def noSuchOperation(self, current=None):
            raise NotImplementedError("servant method 'noSuchOperation' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_WrongOperationDisp)

        __repr__ = __str__

    _M_Test._t_WrongOperationDisp = IcePy.defineClass('::Test::WrongOperation', WrongOperation, (), None, ())
    WrongOperation._ice_type = _M_Test._t_WrongOperationDisp

    WrongOperation._op_noSuchOperation = IcePy.Operation('noSuchOperation', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.WrongOperation = WrongOperation
    del WrongOperation

# End of module Test
