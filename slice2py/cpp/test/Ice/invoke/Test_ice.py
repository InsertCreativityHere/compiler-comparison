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

if 'MyException' not in _M_Test.__dict__:
    _M_Test.MyException = Ice.createTempClass()
    class MyException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::MyException'

    _M_Test._t_MyException = IcePy.defineException('::Test::MyException', MyException, (), None, ())
    MyException._ice_type = _M_Test._t_MyException

    _M_Test.MyException = MyException
    del MyException

_M_Test._t_MyClass = IcePy.defineValue('::Test::MyClass', Ice.Value, -1, (), True, None, ())

if 'MyClassPrx' not in _M_Test.__dict__:
    _M_Test.MyClassPrx = Ice.createTempClass()
    class MyClassPrx(Ice.ObjectPrx):

        def opOneway(self, context=None):
            return _M_Test.MyClass._op_opOneway.invoke(self, ((), context))

        def opOnewayAsync(self, context=None):
            return _M_Test.MyClass._op_opOneway.invokeAsync(self, ((), context))

        def opString(self, s1, context=None):
            return _M_Test.MyClass._op_opString.invoke(self, ((s1, ), context))

        def opStringAsync(self, s1, context=None):
            return _M_Test.MyClass._op_opString.invokeAsync(self, ((s1, ), context))

        def opException(self, context=None):
            return _M_Test.MyClass._op_opException.invoke(self, ((), context))

        def opExceptionAsync(self, context=None):
            return _M_Test.MyClass._op_opException.invokeAsync(self, ((), context))

        def shutdown(self, context=None):
            return _M_Test.MyClass._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.MyClass._op_shutdown.invokeAsync(self, ((), context))

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

        def opOneway(self, current=None):
            raise NotImplementedError("servant method 'opOneway' not implemented")

        def opString(self, s1, current=None):
            raise NotImplementedError("servant method 'opString' not implemented")

        def opException(self, current=None):
            raise NotImplementedError("servant method 'opException' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_MyClassDisp)

        __repr__ = __str__

    _M_Test._t_MyClassDisp = IcePy.defineClass('::Test::MyClass', MyClass, (), None, ())
    MyClass._ice_type = _M_Test._t_MyClassDisp

    MyClass._op_opOneway = IcePy.Operation('opOneway', Ice.OperationMode.Normal, False, None, (), (), (), None, ())
    MyClass._op_opString = IcePy.Operation('opString', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (((), IcePy._t_string, False, 0),), ((), IcePy._t_string, False, 0), ())
    MyClass._op_opException = IcePy.Operation('opException', Ice.OperationMode.Normal, False, None, (), (), (), None, (_M_Test._t_MyException,))
    MyClass._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.MyClass = MyClass
    del MyClass

# End of module Test
