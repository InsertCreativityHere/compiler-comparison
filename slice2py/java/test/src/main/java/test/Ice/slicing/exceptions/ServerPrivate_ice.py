# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `ServerPrivate.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

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

    _M_Test._t_Base = IcePy.defineException('::Test::Base', Base, (), None, (('b', (), IcePy._t_string, False, 0),))
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

    _M_Test._t_KnownDerived = IcePy.defineException('::Test::KnownDerived', KnownDerived, (), _M_Test._t_Base, (('kd', (), IcePy._t_string, False, 0),))
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

    _M_Test._t_KnownIntermediate = IcePy.defineException('::Test::KnownIntermediate', KnownIntermediate, (), _M_Test._t_Base, (('ki', (), IcePy._t_string, False, 0),))
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

    _M_Test._t_KnownMostDerived = IcePy.defineException('::Test::KnownMostDerived', KnownMostDerived, (), _M_Test._t_KnownIntermediate, (('kmd', (), IcePy._t_string, False, 0),))
    KnownMostDerived._ice_type = _M_Test._t_KnownMostDerived

    _M_Test.KnownMostDerived = KnownMostDerived
    del KnownMostDerived

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def baseAsBase(self, context=None):
            return _M_Test.TestIntf._op_baseAsBase.invoke(self, ((), context))

        def baseAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_baseAsBase.invokeAsync(self, ((), context))

        def unknownDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownDerivedAsBase.invoke(self, ((), context))

        def unknownDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownDerivedAsBase.invokeAsync(self, ((), context))

        def knownDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsBase.invoke(self, ((), context))

        def knownDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsBase.invokeAsync(self, ((), context))

        def knownDerivedAsKnownDerived(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsKnownDerived.invoke(self, ((), context))

        def knownDerivedAsKnownDerivedAsync(self, context=None):
            return _M_Test.TestIntf._op_knownDerivedAsKnownDerived.invokeAsync(self, ((), context))

        def unknownIntermediateAsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownIntermediateAsBase.invoke(self, ((), context))

        def unknownIntermediateAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownIntermediateAsBase.invokeAsync(self, ((), context))

        def knownIntermediateAsBase(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsBase.invoke(self, ((), context))

        def knownIntermediateAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsBase.invokeAsync(self, ((), context))

        def knownMostDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsBase.invoke(self, ((), context))

        def knownMostDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsBase.invokeAsync(self, ((), context))

        def knownIntermediateAsKnownIntermediate(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsKnownIntermediate.invoke(self, ((), context))

        def knownIntermediateAsKnownIntermediateAsync(self, context=None):
            return _M_Test.TestIntf._op_knownIntermediateAsKnownIntermediate.invokeAsync(self, ((), context))

        def knownMostDerivedAsKnownIntermediate(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownIntermediate.invoke(self, ((), context))

        def knownMostDerivedAsKnownIntermediateAsync(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownIntermediate.invokeAsync(self, ((), context))

        def knownMostDerivedAsKnownMostDerived(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownMostDerived.invoke(self, ((), context))

        def knownMostDerivedAsKnownMostDerivedAsync(self, context=None):
            return _M_Test.TestIntf._op_knownMostDerivedAsKnownMostDerived.invokeAsync(self, ((), context))

        def unknownMostDerived1AsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsBase.invoke(self, ((), context))

        def unknownMostDerived1AsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsBase.invokeAsync(self, ((), context))

        def unknownMostDerived1AsKnownIntermediate(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsKnownIntermediate.invoke(self, ((), context))

        def unknownMostDerived1AsKnownIntermediateAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived1AsKnownIntermediate.invokeAsync(self, ((), context))

        def unknownMostDerived2AsBase(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBase.invoke(self, ((), context))

        def unknownMostDerived2AsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_unknownMostDerived2AsBase.invokeAsync(self, ((), context))

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

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_baseAsBase = IcePy.Operation('baseAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_unknownDerivedAsBase = IcePy.Operation('unknownDerivedAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.CompactFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownDerivedAsBase = IcePy.Operation('knownDerivedAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownDerivedAsKnownDerived = IcePy.Operation('knownDerivedAsKnownDerived', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownDerived,))
    TestIntf._op_unknownIntermediateAsBase = IcePy.Operation('unknownIntermediateAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownIntermediateAsBase = IcePy.Operation('knownIntermediateAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownMostDerivedAsBase = IcePy.Operation('knownMostDerivedAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_knownIntermediateAsKnownIntermediate = IcePy.Operation('knownIntermediateAsKnownIntermediate', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownIntermediate,))
    TestIntf._op_knownMostDerivedAsKnownIntermediate = IcePy.Operation('knownMostDerivedAsKnownIntermediate', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownIntermediate,))
    TestIntf._op_knownMostDerivedAsKnownMostDerived = IcePy.Operation('knownMostDerivedAsKnownMostDerived', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownMostDerived,))
    TestIntf._op_unknownMostDerived1AsBase = IcePy.Operation('unknownMostDerived1AsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_unknownMostDerived1AsKnownIntermediate = IcePy.Operation('unknownMostDerived1AsKnownIntermediate', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_KnownIntermediate,))
    TestIntf._op_unknownMostDerived2AsBase = IcePy.Operation('unknownMostDerived2AsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_Base,))
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

if 'UnknownDerived' not in _M_Test.__dict__:
    _M_Test.UnknownDerived = Ice.createTempClass()
    class UnknownDerived(_M_Test.Base):
        def __init__(self, b='', ud=''):
            _M_Test.Base.__init__(self, b)
            self.ud = ud

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::UnknownDerived'

    _M_Test._t_UnknownDerived = IcePy.defineException('::Test::UnknownDerived', UnknownDerived, (), _M_Test._t_Base, (('ud', (), IcePy._t_string, False, 0),))
    UnknownDerived._ice_type = _M_Test._t_UnknownDerived

    _M_Test.UnknownDerived = UnknownDerived
    del UnknownDerived

if 'UnknownIntermediate' not in _M_Test.__dict__:
    _M_Test.UnknownIntermediate = Ice.createTempClass()
    class UnknownIntermediate(_M_Test.Base):
        def __init__(self, b='', ui=''):
            _M_Test.Base.__init__(self, b)
            self.ui = ui

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::UnknownIntermediate'

    _M_Test._t_UnknownIntermediate = IcePy.defineException('::Test::UnknownIntermediate', UnknownIntermediate, (), _M_Test._t_Base, (('ui', (), IcePy._t_string, False, 0),))
    UnknownIntermediate._ice_type = _M_Test._t_UnknownIntermediate

    _M_Test.UnknownIntermediate = UnknownIntermediate
    del UnknownIntermediate

if 'UnknownMostDerived1' not in _M_Test.__dict__:
    _M_Test.UnknownMostDerived1 = Ice.createTempClass()
    class UnknownMostDerived1(_M_Test.KnownIntermediate):
        def __init__(self, b='', ki='', umd1=''):
            _M_Test.KnownIntermediate.__init__(self, b, ki)
            self.umd1 = umd1

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::UnknownMostDerived1'

    _M_Test._t_UnknownMostDerived1 = IcePy.defineException('::Test::UnknownMostDerived1', UnknownMostDerived1, (), _M_Test._t_KnownIntermediate, (('umd1', (), IcePy._t_string, False, 0),))
    UnknownMostDerived1._ice_type = _M_Test._t_UnknownMostDerived1

    _M_Test.UnknownMostDerived1 = UnknownMostDerived1
    del UnknownMostDerived1

if 'UnknownMostDerived2' not in _M_Test.__dict__:
    _M_Test.UnknownMostDerived2 = Ice.createTempClass()
    class UnknownMostDerived2(_M_Test.UnknownIntermediate):
        def __init__(self, b='', ui='', umd2=''):
            _M_Test.UnknownIntermediate.__init__(self, b, ui)
            self.umd2 = umd2

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::UnknownMostDerived2'

    _M_Test._t_UnknownMostDerived2 = IcePy.defineException('::Test::UnknownMostDerived2', UnknownMostDerived2, (), _M_Test._t_UnknownIntermediate, (('umd2', (), IcePy._t_string, False, 0),))
    UnknownMostDerived2._ice_type = _M_Test._t_UnknownMostDerived2

    _M_Test.UnknownMostDerived2 = UnknownMostDerived2
    del UnknownMostDerived2

# End of module Test
