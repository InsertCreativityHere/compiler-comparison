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

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if '_t_NV' not in _M_Test.__dict__:
    _M_Test._t_NV = IcePy.defineDictionary('::Test::NV', (), IcePy._t_int, IcePy._t_int)

if '_t_NR' not in _M_Test.__dict__:
    _M_Test._t_NR = IcePy.defineDictionary('::Test::NR', (), IcePy._t_string, IcePy._t_string)

if '_t_NDV' not in _M_Test.__dict__:
    _M_Test._t_NDV = IcePy.defineDictionary('::Test::NDV', (), IcePy._t_string, _M_Test._t_NV)

if '_t_NDR' not in _M_Test.__dict__:
    _M_Test._t_NDR = IcePy.defineDictionary('::Test::NDR', (), IcePy._t_string, _M_Test._t_NR)

if '_t_AIS' not in _M_Test.__dict__:
    _M_Test._t_AIS = IcePy.defineSequence('::Test::AIS', (), IcePy._t_int)

if '_t_GIS' not in _M_Test.__dict__:
    _M_Test._t_GIS = IcePy.defineSequence('::Test::GIS', (), IcePy._t_int)

if '_t_ASS' not in _M_Test.__dict__:
    _M_Test._t_ASS = IcePy.defineSequence('::Test::ASS', (), IcePy._t_string)

if '_t_GSS' not in _M_Test.__dict__:
    _M_Test._t_GSS = IcePy.defineSequence('::Test::GSS', (), IcePy._t_string)

if '_t_NDAIS' not in _M_Test.__dict__:
    _M_Test._t_NDAIS = IcePy.defineDictionary('::Test::NDAIS', (), IcePy._t_string, _M_Test._t_AIS)

if '_t_NDGIS' not in _M_Test.__dict__:
    _M_Test._t_NDGIS = IcePy.defineDictionary('::Test::NDGIS', (), IcePy._t_string, _M_Test._t_GIS)

if '_t_NDASS' not in _M_Test.__dict__:
    _M_Test._t_NDASS = IcePy.defineDictionary('::Test::NDASS', (), IcePy._t_string, _M_Test._t_ASS)

if '_t_NDGSS' not in _M_Test.__dict__:
    _M_Test._t_NDGSS = IcePy.defineDictionary('::Test::NDGSS', (), IcePy._t_string, _M_Test._t_GSS)

_M_Test._t_MyClass = IcePy.defineValue('::Test::MyClass', Ice.Value, -1, (), True, None, ())

if 'MyClassPrx' not in _M_Test.__dict__:
    _M_Test.MyClassPrx = Ice.createTempClass()
    class MyClassPrx(Ice.ObjectPrx):

        def shutdown(self, context=None):
            return _M_Test.MyClass._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.MyClass._op_shutdown.invokeAsync(self, ((), context))

        def opNV(self, i, context=None):
            return _M_Test.MyClass._op_opNV.invoke(self, ((i, ), context))

        def opNVAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNV.invokeAsync(self, ((i, ), context))

        def opNR(self, i, context=None):
            return _M_Test.MyClass._op_opNR.invoke(self, ((i, ), context))

        def opNRAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNR.invokeAsync(self, ((i, ), context))

        def opNDV(self, i, context=None):
            return _M_Test.MyClass._op_opNDV.invoke(self, ((i, ), context))

        def opNDVAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNDV.invokeAsync(self, ((i, ), context))

        def opNDR(self, i, context=None):
            return _M_Test.MyClass._op_opNDR.invoke(self, ((i, ), context))

        def opNDRAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNDR.invokeAsync(self, ((i, ), context))

        def opNDAIS(self, i, context=None):
            return _M_Test.MyClass._op_opNDAIS.invoke(self, ((i, ), context))

        def opNDAISAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNDAIS.invokeAsync(self, ((i, ), context))

        def opNDGIS(self, i, context=None):
            return _M_Test.MyClass._op_opNDGIS.invoke(self, ((i, ), context))

        def opNDGISAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNDGIS.invokeAsync(self, ((i, ), context))

        def opNDASS(self, i, context=None):
            return _M_Test.MyClass._op_opNDASS.invoke(self, ((i, ), context))

        def opNDASSAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNDASS.invokeAsync(self, ((i, ), context))

        def opNDGSS(self, i, context=None):
            return _M_Test.MyClass._op_opNDGSS.invoke(self, ((i, ), context))

        def opNDGSSAsync(self, i, context=None):
            return _M_Test.MyClass._op_opNDGSS.invokeAsync(self, ((i, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.MyClassPrx.ice_checkedCast(proxy, '::Test::MyClass', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.MyClassPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::MyClass'
    _M_Test._t_MyClassPrx = IcePy.defineProxy('::Test::MyClass', MyClassPrx)

    _M_Test.MyClassPrx = MyClassPrx
    del MyClassPrx

    _M_Test.MyClass = Ice.createTempClass()
    class MyClass(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::MyClass')

        def ice_id(self, current=None):
            return '::Test::MyClass'

        @staticmethod
        def ice_staticId():
            return '::Test::MyClass'

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def opNV(self, i, current=None):
            raise NotImplementedError("servant method 'opNV' not implemented")

        def opNR(self, i, current=None):
            raise NotImplementedError("servant method 'opNR' not implemented")

        def opNDV(self, i, current=None):
            raise NotImplementedError("servant method 'opNDV' not implemented")

        def opNDR(self, i, current=None):
            raise NotImplementedError("servant method 'opNDR' not implemented")

        def opNDAIS(self, i, current=None):
            raise NotImplementedError("servant method 'opNDAIS' not implemented")

        def opNDGIS(self, i, current=None):
            raise NotImplementedError("servant method 'opNDGIS' not implemented")

        def opNDASS(self, i, current=None):
            raise NotImplementedError("servant method 'opNDASS' not implemented")

        def opNDGSS(self, i, current=None):
            raise NotImplementedError("servant method 'opNDGSS' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_MyClassDisp)

        __repr__ = __str__

    _M_Test._t_MyClassDisp = IcePy.defineClass('::Test::MyClass', MyClass, (), None, ())
    MyClass._ice_type = _M_Test._t_MyClassDisp

    MyClass._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    MyClass._op_opNV = IcePy.Operation('opNV', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NV, False, 0),), (((), _M_Test._t_NV, False, 0),), ((), _M_Test._t_NV, False, 0), ())
    MyClass._op_opNR = IcePy.Operation('opNR', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NR, False, 0),), (((), _M_Test._t_NR, False, 0),), ((), _M_Test._t_NR, False, 0), ())
    MyClass._op_opNDV = IcePy.Operation('opNDV', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NDV, False, 0),), (((), _M_Test._t_NDV, False, 0),), ((), _M_Test._t_NDV, False, 0), ())
    MyClass._op_opNDR = IcePy.Operation('opNDR', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NDR, False, 0),), (((), _M_Test._t_NDR, False, 0),), ((), _M_Test._t_NDR, False, 0), ())
    MyClass._op_opNDAIS = IcePy.Operation('opNDAIS', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NDAIS, False, 0),), (((), _M_Test._t_NDAIS, False, 0),), ((), _M_Test._t_NDAIS, False, 0), ())
    MyClass._op_opNDGIS = IcePy.Operation('opNDGIS', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NDGIS, False, 0),), (((), _M_Test._t_NDGIS, False, 0),), ((), _M_Test._t_NDGIS, False, 0), ())
    MyClass._op_opNDASS = IcePy.Operation('opNDASS', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NDASS, False, 0),), (((), _M_Test._t_NDASS, False, 0),), ((), _M_Test._t_NDASS, False, 0), ())
    MyClass._op_opNDGSS = IcePy.Operation('opNDGSS', Ice.OperationMode.Normal, True, None, (), (((), _M_Test._t_NDGSS, False, 0),), (((), _M_Test._t_NDGSS, False, 0),), ((), _M_Test._t_NDGSS, False, 0), ())

    _M_Test.MyClass = MyClass
    del MyClass

# End of module Test
