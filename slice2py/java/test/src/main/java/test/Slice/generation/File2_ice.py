# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'File2.ice'
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

if 'Interface2' not in _M_Test.__dict__:
    _M_Test._t_Interface2Prx = IcePy.declareProxy('::Test::Interface2')

if 'Interface2Prx' not in _M_Test.__dict__:
    _M_Test.Interface2Prx = None
    class Interface2Prx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new Interface2Prx proxy
            
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

        def method(self, context=None):
            return _M_Test.Interface2._op_method.invoke(self, ((), context))

        def methodAsync(self, context=None):
            return _M_Test.Interface2._op_method.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.Interface2Prx.ice_checkedCast(proxy, '::Test::Interface2', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.Interface2Prx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::Interface2'
    _M_Test._t_Interface2Prx = IcePy.defineProxy('::Test::Interface2', Interface2Prx)

    _M_Test.Interface2Prx = Interface2Prx
    del Interface2Prx

    _M_Test.Interface2 = None
    class Interface2(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::Interface2')

        def ice_id(self, current=None):
            return '::Test::Interface2'

        @staticmethod
        def ice_staticId():
            return '::Test::Interface2'

        def method(self, current=None):
            raise NotImplementedError("servant method 'method' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_Interface2Disp)

        __repr__ = __str__

    Interface2._op_method = IcePy.Operation('method', Ice.OperationMode.Normal, False, None, (), (), (), None, ())

    _M_Test.Interface2 = Interface2
    del Interface2

# End of module Test
