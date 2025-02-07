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

if 'UserError' not in _M_Test.__dict__:
    _M_Test.UserError = None
    class UserError(Ice.UserException):
        def __init__(self, message=''):
            self.message = message

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::UserError'

    _M_Test._t_UserError = IcePy.defineException('::Test::UserError', UserError, (), None, (('message', (), IcePy._t_string, False, 0),))
    UserError._ice_type = _M_Test._t_UserError

    _M_Test.UserError = UserError
    del UserError

if 'MyInterface' not in _M_Test.__dict__:
    _M_Test._t_MyInterfacePrx = IcePy.declareProxy('::Test::MyInterface')

if 'MyInterfacePrx' not in _M_Test.__dict__:
    _M_Test.MyInterfacePrx = None
    class MyInterfacePrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new MyInterfacePrx proxy
            
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

        def op(self, throwIt, context=None):
            return _M_Test.MyInterface._op_op.invoke(self, ((throwIt, ), context))

        def opAsync(self, throwIt, context=None):
            return _M_Test.MyInterface._op_op.invokeAsync(self, ((throwIt, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.MyInterfacePrx.ice_checkedCast(proxy, '::Test::MyInterface', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.MyInterfacePrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::MyInterface'
    _M_Test._t_MyInterfacePrx = IcePy.defineProxy('::Test::MyInterface', MyInterfacePrx)

    _M_Test.MyInterfacePrx = MyInterfacePrx
    del MyInterfacePrx

    _M_Test.MyInterface = None
    class MyInterface(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::MyInterface')

        def ice_id(self, current=None):
            return '::Test::MyInterface'

        @staticmethod
        def ice_staticId():
            return '::Test::MyInterface'

        def op(self, throwIt, current=None):
            raise NotImplementedError("servant method 'op' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_MyInterfaceDisp)

        __repr__ = __str__

    MyInterface._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_bool, False, 0),), (), None, (_M_Test._t_UserError,))

    _M_Test.MyInterface = MyInterface
    del MyInterface

# End of module Test
