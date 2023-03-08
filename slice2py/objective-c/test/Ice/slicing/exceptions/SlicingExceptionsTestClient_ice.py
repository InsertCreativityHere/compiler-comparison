# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `SlicingExceptionsTestClient.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'Base' not in _M_Test.__dict__:
    _M_Test.Base = Ice.createTempClass()
    class Base(Ice.UserException):
        def __init__(self, b=''):
            self.b = b

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::Base'

    _M_Test._t_Base = IcePy.defineException('::Test::Base', Base, (), False, None, (('b', (), IcePy._t_string, False, 0),))
    Base._ice_type = _M_Test._t_Base

    _M_Test.Base = Base
    del Base

if 'KnownDerived' not in _M_Test.__dict__:
    _M_Test.KnownDerived = Ice.createTempClass()
    class KnownDerived(_M_Test.Base):
        def __init__(self, b='', kd=''):
            _M_Test.Base.__init__(self, b)
            self.kd = kd

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::KnownDerived'

    _M_Test._t_KnownDerived = IcePy.defineException('::Test::KnownDerived', KnownDerived, (), False, _M_Test._t_Base, (('kd', (), IcePy._t_string, False, 0),))
    KnownDerived._ice_type = _M_Test._t_KnownDerived

    _M_Test.KnownDerived = KnownDerived
    del KnownDerived

if 'KnownIntermediate' not in _M_Test.__dict__:
    _M_Test.KnownIntermediate = Ice.createTempClass()
    class KnownIntermediate(_M_Test.Base):
        def __init__(self, b='', ki=''):
            _M_Test.Base.__init__(self, b)
            self.ki = ki

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::KnownIntermediate'

    _M_Test._t_KnownIntermediate = IcePy.defineException('::Test::KnownIntermediate', KnownIntermediate, (), False, _M_Test._t_Base, (('ki', (), IcePy._t_string, False, 0),))
    KnownIntermediate._ice_type = _M_Test._t_KnownIntermediate

    _M_Test.KnownIntermediate = KnownIntermediate
    del KnownIntermediate

if 'KnownMostDerived' not in _M_Test.__dict__:
    _M_Test.KnownMostDerived = Ice.createTempClass()
    class KnownMostDerived(_M_Test.KnownIntermediate):
        def __init__(self, b='', ki='', kmd=''):
            _M_Test.KnownIntermediate.__init__(self, b, ki)
            self.kmd = kmd

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::KnownMostDerived'

    _M_Test._t_KnownMostDerived = IcePy.defineException('::Test::KnownMostDerived', KnownMostDerived, (), False, _M_Test._t_KnownIntermediate, (('kmd', (), IcePy._t_string, False, 0),))
    KnownMostDerived._ice_type = _M_Test._t_KnownMostDerived

    _M_Test.KnownMostDerived = KnownMostDerived
    del KnownMostDerived

if 'KnownPreserved' not in _M_Test.__dict__:
    _M_Test.KnownPreserved = Ice.createTempClass()
    class KnownPreserved(_M_Test.Base):
        def __init__(self, b='', kp=''):
            _M_Test.Base.__init__(self, b)
            self.kp = kp

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::KnownPreserved'

    _M_Test._t_KnownPreserved = IcePy.defineException('::Test::KnownPreserved', KnownPreserved, (), True, _M_Test._t_Base, (('kp', (), IcePy._t_string, False, 0),))
    KnownPreserved._ice_type = _M_Test._t_KnownPreserved

    _M_Test.KnownPreserved = KnownPreserved
    del KnownPreserved

if 'KnownPreservedDerived' not in _M_Test.__dict__:
    _M_Test.KnownPreservedDerived = Ice.createTempClass()
    class KnownPreservedDerived(_M_Test.KnownPreserved):
        def __init__(self, b='', kp='', kpd=''):
            _M_Test.KnownPreserved.__init__(self, b, kp)
            self.kpd = kpd

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::KnownPreservedDerived'

    _M_Test._t_KnownPreservedDerived = IcePy.defineException('::Test::KnownPreservedDerived', KnownPreservedDerived, (), True, _M_Test._t_KnownPreserved, (('kpd', (), IcePy._t_string, False, 0),))
    KnownPreservedDerived._ice_type = _M_Test._t_KnownPreservedDerived

    _M_Test.KnownPreservedDerived = KnownPreservedDerived
    del KnownPreservedDerived

if 'BaseClass' not in _M_Test.__dict__:
    _M_Test.BaseClass = Ice.createTempClass()
    class BaseClass(Ice.Value):
        def __init__(self, bc=''):
            self.bc = bc

        def ice_id(self):
            return '::Test::BaseClass'

        @staticmethod
        def ice_staticId():
            return '::Test::BaseClass'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_BaseClass)

        __repr__ = __str__

    _M_Test._t_BaseClass = IcePy.defineValue('::Test::BaseClass', BaseClass, -1, (), True, False, None, (('bc', (), IcePy._t_string, False, 0),))
    BaseClass._ice_type = _M_Test._t_BaseClass

    _M_Test.BaseClass = BaseClass
    del BaseClass

if 'PreservedClass' not in _M_Test.__dict__:
    _M_Test.PreservedClass = Ice.createTempClass()
    class PreservedClass(_M_Test.BaseClass):
        def __init__(self, bc='', pc=''):
            _M_Test.BaseClass.__init__(self, bc)
            self.pc = pc

        def ice_id(self):
            return '::Test::PreservedClass'

        @staticmethod
        def ice_staticId():
            return '::Test::PreservedClass'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PreservedClass)

        __repr__ = __str__

    _M_Test._t_PreservedClass = IcePy.defineValue('::Test::PreservedClass', PreservedClass, -1, (), True, False, _M_Test._t_BaseClass, (('pc', (), IcePy._t_string, False, 0),))
    PreservedClass._ice_type = _M_Test._t_PreservedClass

    _M_Test.PreservedClass = PreservedClass
    del PreservedClass

if 'Preserved1' not in _M_Test.__dict__:
    _M_Test.Preserved1 = Ice.createTempClass()
    class Preserved1(_M_Test.KnownPreservedDerived):
        def __init__(self, b='', kp='', kpd='', p1=None):
            _M_Test.KnownPreservedDerived.__init__(self, b, kp, kpd)
            self.p1 = p1

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::Preserved1'

    _M_Test._t_Preserved1 = IcePy.defineException('::Test::Preserved1', Preserved1, (), True, _M_Test._t_KnownPreservedDerived, (('p1', (), _M_Test._t_BaseClass, False, 0),))
    Preserved1._ice_type = _M_Test._t_Preserved1

    _M_Test.Preserved1 = Preserved1
    del Preserved1

if 'Preserved2' not in _M_Test.__dict__:
    _M_Test.Preserved2 = Ice.createTempClass()
    class Preserved2(_M_Test.Preserved1):
        def __init__(self, b='', kp='', kpd='', p1=None, p2=None):
            _M_Test.Preserved1.__init__(self, b, kp, kpd, p1)
            self.p2 = p2

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::Preserved2'

    _M_Test._t_Preserved2 = IcePy.defineException('::Test::Preserved2', Preserved2, (), True, _M_Test._t_Preserved1, (('p2', (), _M_Test._t_BaseClass, False, 0),))
    Preserved2._ice_type = _M_Test._t_Preserved2

    _M_Test.Preserved2 = Preserved2
    del Preserved2

_M_Test._t_Relay = IcePy.defineValue('::Test::Relay', Ice.Value, -1, (), False, True, None, ())

if 'RelayPrx' not in _M_Test.__dict__:
    _M_Test.RelayPrx = Ice.createTempClass()
    class RelayPrx(Ice.ObjectPrx):

        def knownPreservedAsBase(self, context=None):
            return _M_Test.Relay._op_knownPreservedAsBase.invoke(self, ((), context))

        def knownPreservedAsBaseAsync(self, context=None):
            return _M_Test.Relay._op_knownPreservedAsBase.invokeAsync(self, ((), context))

        def begin_knownPreservedAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Relay._op_knownPreservedAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_knownPreservedAsBase(self, _r):
            return _M_Test.Relay._op_knownPreservedAsBase.end(self, _r)

        def knownPreservedAsKnownPreserved(self, context=None):
            return _M_Test.Relay._op_knownPreservedAsKnownPreserved.invoke(self, ((), context))

        def knownPreservedAsKnownPreservedAsync(self, context=None):
            return _M_Test.Relay._op_knownPreservedAsKnownPreserved.invokeAsync(self, ((), context))

        def begin_knownPreservedAsKnownPreserved(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Relay._op_knownPreservedAsKnownPreserved.begin(self, ((), _response, _ex, _sent, context))

        def end_knownPreservedAsKnownPreserved(self, _r):
            return _M_Test.Relay._op_knownPreservedAsKnownPreserved.end(self, _r)

        def unknownPreservedAsBase(self, context=None):
            return _M_Test.Relay._op_unknownPreservedAsBase.invoke(self, ((), context))

        def unknownPreservedAsBaseAsync(self, context=None):
            return _M_Test.Relay._op_unknownPreservedAsBase.invokeAsync(self, ((), context))

        def begin_unknownPreservedAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Relay._op_unknownPreservedAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownPreservedAsBase(self, _r):
            return _M_Test.Relay._op_unknownPreservedAsBase.end(self, _r)

        def unknownPreservedAsKnownPreserved(self, context=None):
            return _M_Test.Relay._op_unknownPreservedAsKnownPreserved.invoke(self, ((), context))

        def unknownPreservedAsKnownPreservedAsync(self, context=None):
            return _M_Test.Relay._op_unknownPreservedAsKnownPreserved.invokeAsync(self, ((), context))

        def begin_unknownPreservedAsKnownPreserved(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.Relay._op_unknownPreservedAsKnownPreserved.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownPreservedAsKnownPreserved(self, _r):
            return _M_Test.Relay._op_unknownPreservedAsKnownPreserved.end(self, _r)

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.RelayPrx.ice_checkedCast(proxy, '::Test::Relay', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.RelayPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Relay'
    _M_Test._t_RelayPrx = IcePy.defineProxy('::Test::Relay', RelayPrx)

    _M_Test.RelayPrx = RelayPrx
    del RelayPrx

    _M_Test.Relay = Ice.createTempClass()
    class Relay(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Relay')

        def ice_id(self, current=None):
            return '::Test::Relay'

        @staticmethod
        def ice_staticId():
            return '::Test::Relay'

        def knownPreservedAsBase(self, current=None):
            raise NotImplementedError("servant method 'knownPreservedAsBase' not implemented")

        def knownPreservedAsKnownPreserved(self, current=None):
            raise NotImplementedError("servant method 'knownPreservedAsKnownPreserved' not implemented")

        def unknownPreservedAsBase(self, current=None):
            raise NotImplementedError("servant method 'unknownPreservedAsBase' not implemented")

        def unknownPreservedAsKnownPreserved(self, current=None):
            raise NotImplementedError("servant method 'unknownPreservedAsKnownPreserved' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_RelayDisp)

        __repr__ = __str__

    _M_Test._t_RelayDisp = IcePy.defineClass('::Test::Relay', Relay, (), None, ())
    Relay._ice_type = _M_Test._t_RelayDisp

    Relay._op_knownPreservedAsBase = IcePy.Operation('knownPreservedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    Relay._op_knownPreservedAsKnownPreserved = IcePy.Operation('knownPreservedAsKnownPreserved', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownPreserved,))
    Relay._op_unknownPreservedAsBase = IcePy.Operation('unknownPreservedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    Relay._op_unknownPreservedAsKnownPreserved = IcePy.Operation('unknownPreservedAsKnownPreserved', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownPreserved,))

    _M_Test.Relay = Relay
    del Relay

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def baseAsBase(self, context=None):
            return _M_Test.TestIntf._op_baseAsBase.invoke(self, ((), context))

        def baseAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_baseAsBase.invokeAsync(self, ((), context))

        def begin_baseAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_baseAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_baseAsBase(self, _r):
            return _M_Test.TestIntf._op_baseAsBase.end(self, _r)

        def unknownDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownDerivedAsBase.invoke(self, ((), context))

        def unknownDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownDerivedAsBase.invokeAsync(self, ((), context))

        def begin_unknownDerivedAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownDerivedAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownDerivedAsBase(self, _r):
            return _M_Test.TestIntf._op_unknownDerivedAsBase.end(self, _r)

        def knownDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsBase.invoke(self, ((), context))

        def knownDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsBase.invokeAsync(self, ((), context))

        def begin_knownDerivedAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_knownDerivedAsBase(self, _r):
            return _M_Test.TestIntf._op_knownDerivedAsBase.end(self, _r)

        def knownDerivedAsKnownDerived(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsKnownDerived.invoke(self, ((), context))

        def knownDerivedAsKnownDerivedAsync(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsKnownDerived.invokeAsync(self, ((), context))

        def begin_knownDerivedAsKnownDerived(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsKnownDerived.begin(self, ((), _response, _ex, _sent, context))

        def end_knownDerivedAsKnownDerived(self, _r):
            return _M_Test.TestIntf._op_knownDerivedAsKnownDerived.end(self, _r)

        def unknownIntermediateAsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownIntermediateAsBase.invoke(self, ((), context))

        def unknownIntermediateAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownIntermediateAsBase.invokeAsync(self, ((), context))

        def begin_unknownIntermediateAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownIntermediateAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownIntermediateAsBase(self, _r):
            return _M_Test.TestIntf._op_unknownIntermediateAsBase.end(self, _r)

        def knownIntermediateAsBase(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsBase.invoke(self, ((), context))

        def knownIntermediateAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsBase.invokeAsync(self, ((), context))

        def begin_knownIntermediateAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_knownIntermediateAsBase(self, _r):
            return _M_Test.TestIntf._op_knownIntermediateAsBase.end(self, _r)

        def knownMostDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsBase.invoke(self, ((), context))

        def knownMostDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsBase.invokeAsync(self, ((), context))

        def begin_knownMostDerivedAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_knownMostDerivedAsBase(self, _r):
            return _M_Test.TestIntf._op_knownMostDerivedAsBase.end(self, _r)

        def knownIntermediateAsKnownIntermediate(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsKnownIntermediate.invoke(self, ((), context))

        def knownIntermediateAsKnownIntermediateAsync(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsKnownIntermediate.invokeAsync(self, ((), context))

        def begin_knownIntermediateAsKnownIntermediate(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsKnownIntermediate.begin(self, ((), _response, _ex, _sent, context))

        def end_knownIntermediateAsKnownIntermediate(self, _r):
            return _M_Test.TestIntf._op_knownIntermediateAsKnownIntermediate.end(self, _r)

        def knownMostDerivedAsKnownIntermediate(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownIntermediate.invoke(self, ((), context))

        def knownMostDerivedAsKnownIntermediateAsync(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownIntermediate.invokeAsync(self, ((), context))

        def begin_knownMostDerivedAsKnownIntermediate(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownIntermediate.begin(self, ((), _response, _ex, _sent, context))

        def end_knownMostDerivedAsKnownIntermediate(self, _r):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownIntermediate.end(self, _r)

        def knownMostDerivedAsKnownMostDerived(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownMostDerived.invoke(self, ((), context))

        def knownMostDerivedAsKnownMostDerivedAsync(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownMostDerived.invokeAsync(self, ((), context))

        def begin_knownMostDerivedAsKnownMostDerived(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownMostDerived.begin(self, ((), _response, _ex, _sent, context))

        def end_knownMostDerivedAsKnownMostDerived(self, _r):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownMostDerived.end(self, _r)

        def unknownMostDerived1AsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsBase.invoke(self, ((), context))

        def unknownMostDerived1AsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsBase.invokeAsync(self, ((), context))

        def begin_unknownMostDerived1AsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownMostDerived1AsBase(self, _r):
            return _M_Test.TestIntf._op_unknownMostDerived1AsBase.end(self, _r)

        def unknownMostDerived1AsKnownIntermediate(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsKnownIntermediate.invoke(self, ((), context))

        def unknownMostDerived1AsKnownIntermediateAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsKnownIntermediate.invokeAsync(self, ((), context))

        def begin_unknownMostDerived1AsKnownIntermediate(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsKnownIntermediate.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownMostDerived1AsKnownIntermediate(self, _r):
            return _M_Test.TestIntf._op_unknownMostDerived1AsKnownIntermediate.end(self, _r)

        def unknownMostDerived2AsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBase.invoke(self, ((), context))

        def unknownMostDerived2AsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBase.invokeAsync(self, ((), context))

        def begin_unknownMostDerived2AsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownMostDerived2AsBase(self, _r):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBase.end(self, _r)

        def unknownMostDerived2AsBaseCompact(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBaseCompact.invoke(self, ((), context))

        def unknownMostDerived2AsBaseCompactAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBaseCompact.invokeAsync(self, ((), context))

        def begin_unknownMostDerived2AsBaseCompact(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBaseCompact.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownMostDerived2AsBaseCompact(self, _r):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBaseCompact.end(self, _r)

        def knownPreservedAsBase(self, context=None):
            return _M_Test.TestIntf._op_knownPreservedAsBase.invoke(self, ((), context))

        def knownPreservedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_knownPreservedAsBase.invokeAsync(self, ((), context))

        def begin_knownPreservedAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownPreservedAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_knownPreservedAsBase(self, _r):
            return _M_Test.TestIntf._op_knownPreservedAsBase.end(self, _r)

        def knownPreservedAsKnownPreserved(self, context=None):
            return _M_Test.TestIntf._op_knownPreservedAsKnownPreserved.invoke(self, ((), context))

        def knownPreservedAsKnownPreservedAsync(self, context=None):
            return _M_Test.TestIntf._op_knownPreservedAsKnownPreserved.invokeAsync(self, ((), context))

        def begin_knownPreservedAsKnownPreserved(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_knownPreservedAsKnownPreserved.begin(self, ((), _response, _ex, _sent, context))

        def end_knownPreservedAsKnownPreserved(self, _r):
            return _M_Test.TestIntf._op_knownPreservedAsKnownPreserved.end(self, _r)

        def relayKnownPreservedAsBase(self, r, context=None):
            return _M_Test.TestIntf._op_relayKnownPreservedAsBase.invoke(self, ((r, ), context))

        def relayKnownPreservedAsBaseAsync(self, r, context=None):
            return _M_Test.TestIntf._op_relayKnownPreservedAsBase.invokeAsync(self, ((r, ), context))

        def begin_relayKnownPreservedAsBase(self, r, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_relayKnownPreservedAsBase.begin(self, ((r, ), _response, _ex, _sent, context))

        def end_relayKnownPreservedAsBase(self, _r):
            return _M_Test.TestIntf._op_relayKnownPreservedAsBase.end(self, _r)

        def relayKnownPreservedAsKnownPreserved(self, r, context=None):
            return _M_Test.TestIntf._op_relayKnownPreservedAsKnownPreserved.invoke(self, ((r, ), context))

        def relayKnownPreservedAsKnownPreservedAsync(self, r, context=None):
            return _M_Test.TestIntf._op_relayKnownPreservedAsKnownPreserved.invokeAsync(self, ((r, ), context))

        def begin_relayKnownPreservedAsKnownPreserved(self, r, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_relayKnownPreservedAsKnownPreserved.begin(self, ((r, ), _response, _ex, _sent, context))

        def end_relayKnownPreservedAsKnownPreserved(self, _r):
            return _M_Test.TestIntf._op_relayKnownPreservedAsKnownPreserved.end(self, _r)

        def unknownPreservedAsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownPreservedAsBase.invoke(self, ((), context))

        def unknownPreservedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownPreservedAsBase.invokeAsync(self, ((), context))

        def begin_unknownPreservedAsBase(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownPreservedAsBase.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownPreservedAsBase(self, _r):
            return _M_Test.TestIntf._op_unknownPreservedAsBase.end(self, _r)

        def unknownPreservedAsKnownPreserved(self, context=None):
            return _M_Test.TestIntf._op_unknownPreservedAsKnownPreserved.invoke(self, ((), context))

        def unknownPreservedAsKnownPreservedAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownPreservedAsKnownPreserved.invokeAsync(self, ((), context))

        def begin_unknownPreservedAsKnownPreserved(self, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_unknownPreservedAsKnownPreserved.begin(self, ((), _response, _ex, _sent, context))

        def end_unknownPreservedAsKnownPreserved(self, _r):
            return _M_Test.TestIntf._op_unknownPreservedAsKnownPreserved.end(self, _r)

        def relayUnknownPreservedAsBase(self, r, context=None):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsBase.invoke(self, ((r, ), context))

        def relayUnknownPreservedAsBaseAsync(self, r, context=None):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsBase.invokeAsync(self, ((r, ), context))

        def begin_relayUnknownPreservedAsBase(self, r, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsBase.begin(self, ((r, ), _response, _ex, _sent, context))

        def end_relayUnknownPreservedAsBase(self, _r):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsBase.end(self, _r)

        def relayUnknownPreservedAsKnownPreserved(self, r, context=None):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsKnownPreserved.invoke(self, ((r, ), context))

        def relayUnknownPreservedAsKnownPreservedAsync(self, r, context=None):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsKnownPreserved.invokeAsync(self, ((r, ), context))

        def begin_relayUnknownPreservedAsKnownPreserved(self, r, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsKnownPreserved.begin(self, ((r, ), _response, _ex, _sent, context))

        def end_relayUnknownPreservedAsKnownPreserved(self, _r):
            return _M_Test.TestIntf._op_relayUnknownPreservedAsKnownPreserved.end(self, _r)

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

        def baseAsBase(self, current=None):
            raise NotImplementedError("servant method 'baseAsBase' not implemented")

        def unknownDerivedAsBase(self, current=None):
            raise NotImplementedError("servant method 'unknownDerivedAsBase' not implemented")

        def knownDerivedAsBase(self, current=None):
            raise NotImplementedError("servant method 'knownDerivedAsBase' not implemented")

        def knownDerivedAsKnownDerived(self, current=None):
            raise NotImplementedError("servant method 'knownDerivedAsKnownDerived' not implemented")

        def unknownIntermediateAsBase(self, current=None):
            raise NotImplementedError("servant method 'unknownIntermediateAsBase' not implemented")

        def knownIntermediateAsBase(self, current=None):
            raise NotImplementedError("servant method 'knownIntermediateAsBase' not implemented")

        def knownMostDerivedAsBase(self, current=None):
            raise NotImplementedError("servant method 'knownMostDerivedAsBase' not implemented")

        def knownIntermediateAsKnownIntermediate(self, current=None):
            raise NotImplementedError("servant method 'knownIntermediateAsKnownIntermediate' not implemented")

        def knownMostDerivedAsKnownIntermediate(self, current=None):
            raise NotImplementedError("servant method 'knownMostDerivedAsKnownIntermediate' not implemented")

        def knownMostDerivedAsKnownMostDerived(self, current=None):
            raise NotImplementedError("servant method 'knownMostDerivedAsKnownMostDerived' not implemented")

        def unknownMostDerived1AsBase(self, current=None):
            raise NotImplementedError("servant method 'unknownMostDerived1AsBase' not implemented")

        def unknownMostDerived1AsKnownIntermediate(self, current=None):
            raise NotImplementedError("servant method 'unknownMostDerived1AsKnownIntermediate' not implemented")

        def unknownMostDerived2AsBase(self, current=None):
            raise NotImplementedError("servant method 'unknownMostDerived2AsBase' not implemented")

        def unknownMostDerived2AsBaseCompact(self, current=None):
            raise NotImplementedError("servant method 'unknownMostDerived2AsBaseCompact' not implemented")

        def knownPreservedAsBase(self, current=None):
            raise NotImplementedError("servant method 'knownPreservedAsBase' not implemented")

        def knownPreservedAsKnownPreserved(self, current=None):
            raise NotImplementedError("servant method 'knownPreservedAsKnownPreserved' not implemented")

        def relayKnownPreservedAsBase(self, r, current=None):
            raise NotImplementedError("servant method 'relayKnownPreservedAsBase' not implemented")

        def relayKnownPreservedAsKnownPreserved(self, r, current=None):
            raise NotImplementedError("servant method 'relayKnownPreservedAsKnownPreserved' not implemented")

        def unknownPreservedAsBase(self, current=None):
            raise NotImplementedError("servant method 'unknownPreservedAsBase' not implemented")

        def unknownPreservedAsKnownPreserved(self, current=None):
            raise NotImplementedError("servant method 'unknownPreservedAsKnownPreserved' not implemented")

        def relayUnknownPreservedAsBase(self, r, current=None):
            raise NotImplementedError("servant method 'relayUnknownPreservedAsBase' not implemented")

        def relayUnknownPreservedAsKnownPreserved(self, r, current=None):
            raise NotImplementedError("servant method 'relayUnknownPreservedAsKnownPreserved' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_baseAsBase = IcePy.Operation('baseAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_unknownDerivedAsBase = IcePy.Operation('unknownDerivedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownDerivedAsBase = IcePy.Operation('knownDerivedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownDerivedAsKnownDerived = IcePy.Operation('knownDerivedAsKnownDerived', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownDerived,))
    TestIntf._op_unknownIntermediateAsBase = IcePy.Operation('unknownIntermediateAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownIntermediateAsBase = IcePy.Operation('knownIntermediateAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownMostDerivedAsBase = IcePy.Operation('knownMostDerivedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownIntermediateAsKnownIntermediate = IcePy.Operation('knownIntermediateAsKnownIntermediate', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownIntermediate,))
    TestIntf._op_knownMostDerivedAsKnownIntermediate = IcePy.Operation('knownMostDerivedAsKnownIntermediate', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownIntermediate,))
    TestIntf._op_knownMostDerivedAsKnownMostDerived = IcePy.Operation('knownMostDerivedAsKnownMostDerived', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownMostDerived,))
    TestIntf._op_unknownMostDerived1AsBase = IcePy.Operation('unknownMostDerived1AsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_unknownMostDerived1AsKnownIntermediate = IcePy.Operation('unknownMostDerived1AsKnownIntermediate', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownIntermediate,))
    TestIntf._op_unknownMostDerived2AsBase = IcePy.Operation('unknownMostDerived2AsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_unknownMostDerived2AsBaseCompact = IcePy.Operation('unknownMostDerived2AsBaseCompact', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.CompactFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownPreservedAsBase = IcePy.Operation('knownPreservedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownPreservedAsKnownPreserved = IcePy.Operation('knownPreservedAsKnownPreserved', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownPreserved,))
    TestIntf._op_relayKnownPreservedAsBase = IcePy.Operation('relayKnownPreservedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_RelayPrx, False, 0),), (), None, (_M_Test._t_Base,))
    TestIntf._op_relayKnownPreservedAsKnownPreserved = IcePy.Operation('relayKnownPreservedAsKnownPreserved', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_RelayPrx, False, 0),), (), None, (_M_Test._t_KnownPreserved,))
    TestIntf._op_unknownPreservedAsBase = IcePy.Operation('unknownPreservedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_unknownPreservedAsKnownPreserved = IcePy.Operation('unknownPreservedAsKnownPreserved', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownPreserved,))
    TestIntf._op_relayUnknownPreservedAsBase = IcePy.Operation('relayUnknownPreservedAsBase', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_RelayPrx, False, 0),), (), None, (_M_Test._t_Base,))
    TestIntf._op_relayUnknownPreservedAsKnownPreserved = IcePy.Operation('relayUnknownPreservedAsKnownPreserved', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_RelayPrx, False, 0),), (), None, (_M_Test._t_KnownPreserved,))
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

# End of module Test
