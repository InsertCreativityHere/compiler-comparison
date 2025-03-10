# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'TestAMD.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins
import Ice.Context_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'MyClass' not in _M_Test.__dict__:
    _M_Test._t_MyClassPrx = IcePy.declareProxy('::Test::MyClass')

if 'MyClassPrx' not in _M_Test.__dict__:
    _M_Test.MyClassPrx = None
    class MyClassPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new MyClassPrx proxy
            
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

        def shutdown(self, context=None):
            return _M_Test.MyClass._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.MyClass._op_shutdown.invokeAsync(self, ((), context))

        def getContext(self, context=None):
            return _M_Test.MyClass._op_getContext.invoke(self, ((), context))

        def getContextAsync(self, context=None):
            return _M_Test.MyClass._op_getContext.invokeAsync(self, ((), context))

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

    _M_Test.MyClass = None
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

        def getContext(self, current=None):
            raise NotImplementedError("servant method 'getContext' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_MyClassDisp)

        __repr__ = __str__

    MyClass._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, True, None, (), (), (), None, ())
    MyClass._op_getContext = IcePy.Operation('getContext', Ice.OperationMode.Normal, True, None, (), (), (), ((), _M_Ice._t_Context, False, 0), ())

    _M_Test.MyClass = MyClass
    del MyClass

if 'MyDerivedClass' not in _M_Test.__dict__:
    _M_Test._t_MyDerivedClassPrx = IcePy.declareProxy('::Test::MyDerivedClass')

if 'MyDerivedClassPrx' not in _M_Test.__dict__:
    _M_Test.MyDerivedClassPrx = None
    class MyDerivedClassPrx(_M_Test.MyClassPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new MyDerivedClassPrx proxy
            
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

        def echo(self, obj, context=None):
            return _M_Test.MyDerivedClass._op_echo.invoke(self, ((obj, ), context))

        def echoAsync(self, obj, context=None):
            return _M_Test.MyDerivedClass._op_echo.invokeAsync(self, ((obj, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.MyDerivedClassPrx.ice_checkedCast(proxy, '::Test::MyDerivedClass', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.MyDerivedClassPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::MyDerivedClass'
    _M_Test._t_MyDerivedClassPrx = IcePy.defineProxy('::Test::MyDerivedClass', MyDerivedClassPrx)

    _M_Test.MyDerivedClassPrx = MyDerivedClassPrx
    del MyDerivedClassPrx

    _M_Test.MyDerivedClass = None
    class MyDerivedClass(_M_Test.MyClass):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::MyClass', '::Test::MyDerivedClass')

        def ice_id(self, current=None):
            return '::Test::MyDerivedClass'

        @staticmethod
        def ice_staticId():
            return '::Test::MyDerivedClass'

        def echo(self, obj, current=None):
            raise NotImplementedError("servant method 'echo' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_MyDerivedClassDisp)

        __repr__ = __str__

    MyDerivedClass._op_echo = IcePy.Operation('echo', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_ObjectPrx, False, 0),), (), ((), IcePy._t_ObjectPrx, False, 0), ())

    _M_Test.MyDerivedClass = MyDerivedClass
    del MyDerivedClass

if 'MyOtherDerivedClass' not in _M_Test.__dict__:
    _M_Test._t_MyOtherDerivedClassPrx = IcePy.declareProxy('::Test::MyOtherDerivedClass')

if 'MyOtherDerivedClassPrx' not in _M_Test.__dict__:
    _M_Test.MyOtherDerivedClassPrx = None
    class MyOtherDerivedClassPrx(_M_Test.MyClassPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new MyOtherDerivedClassPrx proxy
            
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

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.MyOtherDerivedClassPrx.ice_checkedCast(proxy, '::Test::MyOtherDerivedClass', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.MyOtherDerivedClassPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::MyOtherDerivedClass'
    _M_Test._t_MyOtherDerivedClassPrx = IcePy.defineProxy('::Test::MyOtherDerivedClass', MyOtherDerivedClassPrx)

    _M_Test.MyOtherDerivedClassPrx = MyOtherDerivedClassPrx
    del MyOtherDerivedClassPrx

    _M_Test.MyOtherDerivedClass = None
    class MyOtherDerivedClass(_M_Test.MyClass):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::MyClass', '::Test::MyOtherDerivedClass')

        def ice_id(self, current=None):
            return '::Test::MyOtherDerivedClass'

        @staticmethod
        def ice_staticId():
            return '::Test::MyOtherDerivedClass'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_MyOtherDerivedClassDisp)

        __repr__ = __str__

    _M_Test.MyOtherDerivedClass = MyOtherDerivedClass
    del MyOtherDerivedClass

if 'DiamondClass' not in _M_Test.__dict__:
    _M_Test._t_DiamondClassPrx = IcePy.declareProxy('::Test::DiamondClass')

if 'DiamondClassPrx' not in _M_Test.__dict__:
    _M_Test.DiamondClassPrx = None
    class DiamondClassPrx(_M_Test.MyDerivedClassPrx, _M_Test.MyOtherDerivedClassPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new DiamondClassPrx proxy
            
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

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.DiamondClassPrx.ice_checkedCast(proxy, '::Test::DiamondClass', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.DiamondClassPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::DiamondClass'
    _M_Test._t_DiamondClassPrx = IcePy.defineProxy('::Test::DiamondClass', DiamondClassPrx)

    _M_Test.DiamondClassPrx = DiamondClassPrx
    del DiamondClassPrx

    _M_Test.DiamondClass = None
    class DiamondClass(_M_Test.MyDerivedClass, _M_Test.MyOtherDerivedClass):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::DiamondClass', '::Test::MyClass', '::Test::MyDerivedClass', '::Test::MyOtherDerivedClass')

        def ice_id(self, current=None):
            return '::Test::DiamondClass'

        @staticmethod
        def ice_staticId():
            return '::Test::DiamondClass'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_DiamondClassDisp)

        __repr__ = __str__

    _M_Test.DiamondClass = DiamondClass
    del DiamondClass

# End of module Test
