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

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), False, True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def getServerFile(self, path, context=None):
            return _M_Test.TestIntf._op_getServerFile.invoke(self, ((path, ), context))

        def getServerFileAsync(self, path, context=None):
            return _M_Test.TestIntf._op_getServerFile.invokeAsync(self, ((path, ), context))

        def begin_getServerFile(self, path, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_getServerFile.begin(self, ((path, ), _response, _ex, _sent, context))

        def end_getServerFile(self, _r):
            return _M_Test.TestIntf._op_getServerFile.end(self, _r)

        def getApplicationFile(self, path, context=None):
            return _M_Test.TestIntf._op_getApplicationFile.invoke(self, ((path, ), context))

        def getApplicationFileAsync(self, path, context=None):
            return _M_Test.TestIntf._op_getApplicationFile.invokeAsync(self, ((path, ), context))

        def begin_getApplicationFile(self, path, _response=None, _ex=None, _sent=None, context=None):
            return _M_Test.TestIntf._op_getApplicationFile.begin(self, ((path, ), _response, _ex, _sent, context))

        def end_getApplicationFile(self, _r):
            return _M_Test.TestIntf._op_getApplicationFile.end(self, _r)

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

        def getServerFile(self, path, current=None):
            raise NotImplementedError("servant method 'getServerFile' not implemented")

        def getApplicationFile(self, path, current=None):
            raise NotImplementedError("servant method 'getApplicationFile' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_getServerFile = IcePy.Operation('getServerFile', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), ((), IcePy._t_string, False, 0), ())
    TestIntf._op_getApplicationFile = IcePy.Operation('getApplicationFile', Ice.OperationMode.Normal, Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), ((), IcePy._t_string, False, 0), ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

# End of module Test
