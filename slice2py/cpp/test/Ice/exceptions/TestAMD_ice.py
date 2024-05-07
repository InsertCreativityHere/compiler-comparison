# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `TestAMD.ice'
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

_M_Test._t_Empty = IcePy.defineValue('::Test::Empty', Ice.Value, -1, (), True, None, ())

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

    _M_Test._t_A = IcePy.defineException('::Test::A', A, (), None, (('aMem', (), IcePy._t_int, False, 0),))
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

    _M_Test._t_B = IcePy.defineException('::Test::B', B, (), _M_Test._t_A, (('bMem', (), IcePy._t_int, False, 0),))
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

    _M_Test._t_C = IcePy.defineException('::Test::C', C, (), _M_Test._t_B, (('cMem', (), IcePy._t_int, False, 0),))
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

    _M_Test._t_D = IcePy.defineException('::Test::D', D, (), None, (('dMem', (), IcePy._t_int, False, 0),))
    D._ice_type = _M_Test._t_D

    _M_Test.D = D
    del D

if 'E' not in _M_Test.__dict__:
    _M_Test.E = Ice.createTempClass()
    class E(Ice.UserException):
        def __init__(self, data=''):
            self.data = data

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::E'

    _M_Test._t_E = IcePy.defineException('::Test::E', E, (), None, (('data', (), IcePy._t_string, False, 0),))
    E._ice_type = _M_Test._t_E

    _M_Test.E = E
    del E

if 'F' not in _M_Test.__dict__:
    _M_Test.F = Ice.createTempClass()
    class F(Ice.UserException):
        def __init__(self, data=''):
            self.data = data

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::F'

    _M_Test._t_F = IcePy.defineException('::Test::F', F, (), None, (('data', (), IcePy._t_string, False, 0),))
    F._ice_type = _M_Test._t_F

    _M_Test.F = F
    del F

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

    _M_Test.Mod._t_A = IcePy.defineException('::Test::Mod::A', A, (), _M_Test._t_A, (('a2Mem', (), IcePy._t_int, False, 0),))
    A._ice_type = _M_Test.Mod._t_A

    _M_Test.Mod.A = A
    del A

# End of module Test.Mod

__name__ = 'Test'

_M_Test._t_Thrower = IcePy.defineValue('::Test::Thrower', Ice.Value, -1, (), True, None, ())

if 'ThrowerPrx' not in _M_Test.__dict__:
    _M_Test.ThrowerPrx = Ice.createTempClass()
    class ThrowerPrx(Ice.ObjectPrx):

        def shutdown(self, context=None):
            return _M_Test.Thrower._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.Thrower._op_shutdown.invokeAsync(self, ((), context))

        def supportsUndeclaredExceptions(self, context=None):
            return _M_Test.Thrower._op_supportsUndeclaredExceptions.invoke(self, ((), context))

        def supportsUndeclaredExceptionsAsync(self, context=None):
            return _M_Test.Thrower._op_supportsUndeclaredExceptions.invokeAsync(self, ((), context))

        def supportsAssertException(self, context=None):
            return _M_Test.Thrower._op_supportsAssertException.invoke(self, ((), context))

        def supportsAssertExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_supportsAssertException.invokeAsync(self, ((), context))

        def throwAasA(self, a, context=None):
            return _M_Test.Thrower._op_throwAasA.invoke(self, ((a, ), context))

        def throwAasAAsync(self, a, context=None):
            return _M_Test.Thrower._op_throwAasA.invokeAsync(self, ((a, ), context))

        def throwAorDasAorD(self, a, context=None):
            return _M_Test.Thrower._op_throwAorDasAorD.invoke(self, ((a, ), context))

        def throwAorDasAorDAsync(self, a, context=None):
            return _M_Test.Thrower._op_throwAorDasAorD.invokeAsync(self, ((a, ), context))

        def throwBasA(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasA.invoke(self, ((a, b), context))

        def throwBasAAsync(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasA.invokeAsync(self, ((a, b), context))

        def throwCasA(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasA.invoke(self, ((a, b, c), context))

        def throwCasAAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasA.invokeAsync(self, ((a, b, c), context))

        def throwBasB(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasB.invoke(self, ((a, b), context))

        def throwBasBAsync(self, a, b, context=None):
            return _M_Test.Thrower._op_throwBasB.invokeAsync(self, ((a, b), context))

        def throwCasB(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasB.invoke(self, ((a, b, c), context))

        def throwCasBAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasB.invokeAsync(self, ((a, b, c), context))

        def throwCasC(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasC.invoke(self, ((a, b, c), context))

        def throwCasCAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwCasC.invokeAsync(self, ((a, b, c), context))

        def throwModA(self, a, a2, context=None):
            return _M_Test.Thrower._op_throwModA.invoke(self, ((a, a2), context))

        def throwModAAsync(self, a, a2, context=None):
            return _M_Test.Thrower._op_throwModA.invokeAsync(self, ((a, a2), context))

        def throwUndeclaredA(self, a, context=None):
            return _M_Test.Thrower._op_throwUndeclaredA.invoke(self, ((a, ), context))

        def throwUndeclaredAAsync(self, a, context=None):
            return _M_Test.Thrower._op_throwUndeclaredA.invokeAsync(self, ((a, ), context))

        def throwUndeclaredB(self, a, b, context=None):
            return _M_Test.Thrower._op_throwUndeclaredB.invoke(self, ((a, b), context))

        def throwUndeclaredBAsync(self, a, b, context=None):
            return _M_Test.Thrower._op_throwUndeclaredB.invokeAsync(self, ((a, b), context))

        def throwUndeclaredC(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwUndeclaredC.invoke(self, ((a, b, c), context))

        def throwUndeclaredCAsync(self, a, b, c, context=None):
            return _M_Test.Thrower._op_throwUndeclaredC.invokeAsync(self, ((a, b, c), context))

        def throwLocalException(self, context=None):
            return _M_Test.Thrower._op_throwLocalException.invoke(self, ((), context))

        def throwLocalExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwLocalException.invokeAsync(self, ((), context))

        def throwNonIceException(self, context=None):
            return _M_Test.Thrower._op_throwNonIceException.invoke(self, ((), context))

        def throwNonIceExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwNonIceException.invokeAsync(self, ((), context))

        def throwAssertException(self, context=None):
            return _M_Test.Thrower._op_throwAssertException.invoke(self, ((), context))

        def throwAssertExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwAssertException.invokeAsync(self, ((), context))

        def throwMemoryLimitException(self, seq, context=None):
            return _M_Test.Thrower._op_throwMemoryLimitException.invoke(self, ((seq, ), context))

        def throwMemoryLimitExceptionAsync(self, seq, context=None):
            return _M_Test.Thrower._op_throwMemoryLimitException.invokeAsync(self, ((seq, ), context))

        def throwLocalExceptionIdempotent(self, context=None):
            return _M_Test.Thrower._op_throwLocalExceptionIdempotent.invoke(self, ((), context))

        def throwLocalExceptionIdempotentAsync(self, context=None):
            return _M_Test.Thrower._op_throwLocalExceptionIdempotent.invokeAsync(self, ((), context))

        def throwAfterResponse(self, context=None):
            return _M_Test.Thrower._op_throwAfterResponse.invoke(self, ((), context))

        def throwAfterResponseAsync(self, context=None):
            return _M_Test.Thrower._op_throwAfterResponse.invokeAsync(self, ((), context))

        def throwAfterException(self, context=None):
            return _M_Test.Thrower._op_throwAfterException.invoke(self, ((), context))

        def throwAfterExceptionAsync(self, context=None):
            return _M_Test.Thrower._op_throwAfterException.invokeAsync(self, ((), context))

        def throwE(self, context=None):
            return _M_Test.Thrower._op_throwE.invoke(self, ((), context))

        def throwEAsync(self, context=None):
            return _M_Test.Thrower._op_throwE.invokeAsync(self, ((), context))

        def throwF(self, context=None):
            return _M_Test.Thrower._op_throwF.invoke(self, ((), context))

        def throwFAsync(self, context=None):
            return _M_Test.Thrower._op_throwF.invokeAsync(self, ((), context))

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

        def throwE(self, current=None):
            raise NotImplementedError("servant method 'throwE' not implemented")

        def throwF(self, current=None):
            raise NotImplementedError("servant method 'throwF' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_ThrowerDisp)

        __repr__ = __str__

    _M_Test._t_ThrowerDisp = IcePy.defineClass('::Test::Thrower', Thrower, (), None, ())
    Thrower._ice_type = _M_Test._t_ThrowerDisp

    Thrower._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    Thrower._op_supportsUndeclaredExceptions = IcePy.Operation('supportsUndeclaredExceptions', Ice.OperationMode.Normal, True, None, (), (), (), ((), IcePy._t_bool, False, 0), ())
    Thrower._op_supportsAssertException = IcePy.Operation('supportsAssertException', Ice.OperationMode.Normal, True, None, (), (), (), ((), IcePy._t_bool, False, 0), ())
    Thrower._op_throwAasA = IcePy.Operation('throwAasA', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0),), (), None, (_M_Test._t_A,))
    Thrower._op_throwAorDasAorD = IcePy.Operation('throwAorDasAorD', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0),), (), None, (_M_Test._t_A, _M_Test._t_D))
    Thrower._op_throwBasA = IcePy.Operation('throwBasA', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_A,))
    Thrower._op_throwCasA = IcePy.Operation('throwCasA', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_A,))
    Thrower._op_throwBasB = IcePy.Operation('throwBasB', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_B,))
    Thrower._op_throwCasB = IcePy.Operation('throwCasB', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_B,))
    Thrower._op_throwCasC = IcePy.Operation('throwCasC', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test._t_C,))
    Thrower._op_throwModA = IcePy.Operation('throwModA', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, (_M_Test.Mod._t_A,))
    Thrower._op_throwUndeclaredA = IcePy.Operation('throwUndeclaredA', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0),), (), None, ())
    Thrower._op_throwUndeclaredB = IcePy.Operation('throwUndeclaredB', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())
    Thrower._op_throwUndeclaredC = IcePy.Operation('throwUndeclaredC', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())
    Thrower._op_throwLocalException = IcePy.Operation('throwLocalException', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    Thrower._op_throwNonIceException = IcePy.Operation('throwNonIceException', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    Thrower._op_throwAssertException = IcePy.Operation('throwAssertException', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    Thrower._op_throwMemoryLimitException = IcePy.Operation('throwMemoryLimitException', Ice.OperationMode.Normal, True, None, (), (((), _M_Ice._t_ByteSeq, False, 0),), (), ((), _M_Ice._t_ByteSeq, False, 0), ())
    Thrower._op_throwLocalExceptionIdempotent = IcePy.Operation('throwLocalExceptionIdempotent', Ice.OperationMode.Idempotent, True, None, (), (), (), None, ())
    Thrower._op_throwAfterResponse = IcePy.Operation('throwAfterResponse', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    Thrower._op_throwAfterException = IcePy.Operation('throwAfterException', Ice.OperationMode.Normal, True, None, (), (), (), None, (_M_Test._t_A,))
    Thrower._op_throwE = IcePy.Operation('throwE', Ice.OperationMode.Normal, True, None, (), (), (), None, (_M_Test._t_E,))
    Thrower._op_throwF = IcePy.Operation('throwF', Ice.OperationMode.Normal, True, None, (), (), (), None, (_M_Test._t_F,))

    _M_Test.Thrower = Thrower
    del Thrower

_M_Test._t_WrongOperation = IcePy.defineValue('::Test::WrongOperation', Ice.Value, -1, (), True, None, ())

if 'WrongOperationPrx' not in _M_Test.__dict__:
    _M_Test.WrongOperationPrx = Ice.createTempClass()
    class WrongOperationPrx(Ice.ObjectPrx):

        def noSuchOperation(self, context=None):
            return _M_Test.WrongOperation._op_noSuchOperation.invoke(self, ((), context))

        def noSuchOperationAsync(self, context=None):
            return _M_Test.WrongOperation._op_noSuchOperation.invokeAsync(self, ((), context))

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

    WrongOperation._op_noSuchOperation = IcePy.Operation('noSuchOperation', Ice.OperationMode.Normal, True, None, (), (), (), None, ())

    _M_Test.WrongOperation = WrongOperation
    del WrongOperation

# End of module Test
