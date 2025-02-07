# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'WstringAMD.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins

# Start of module Test1
_M_Test1 = Ice.openModule('Test1')
__name__ = 'Test1'

if '_t_WstringSeq' not in _M_Test1.__dict__:
    _M_Test1._t_WstringSeq = IcePy.defineSequence('::Test1::WstringSeq', (), IcePy._t_string)

if '_t_WstringWStringDict' not in _M_Test1.__dict__:
    _M_Test1._t_WstringWStringDict = IcePy.defineDictionary('::Test1::WstringWStringDict', (), IcePy._t_string, IcePy._t_string)

if 'WstringStruct' not in _M_Test1.__dict__:
    _M_Test1.WstringStruct = None
    class WstringStruct(object):
        def __init__(self, s=''):
            self.s = s

        def __hash__(self):
            _h = 0
            _h = 5 * _h + _builtins.hash(self.s)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M_Test1.WstringStruct):
                return NotImplemented
            else:
                if self.s is None or other.s is None:
                    if self.s != other.s:
                        return (-1 if self.s is None else 1)
                else:
                    if self.s < other.s:
                        return -1
                    elif self.s > other.s:
                        return 1
                return 0

        def __lt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r < 0

        def __le__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r <= 0

        def __gt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r > 0

        def __ge__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r >= 0

        def __eq__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r == 0

        def __ne__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r != 0

        def __str__(self):
            return IcePy.stringify(self, _M_Test1._t_WstringStruct)

        __repr__ = __str__

    _M_Test1._t_WstringStruct = IcePy.defineStruct('::Test1::WstringStruct', WstringStruct, (), (('s', (), IcePy._t_string),))

    _M_Test1.WstringStruct = WstringStruct
    del WstringStruct

if 'WstringException' not in _M_Test1.__dict__:
    _M_Test1.WstringException = None
    class WstringException(Ice.UserException):
        def __init__(self, reason=''):
            self.reason = reason

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test1::WstringException'

    _M_Test1._t_WstringException = IcePy.defineException('::Test1::WstringException', WstringException, (), None, (('reason', (), IcePy._t_string, False, 0),))
    WstringException._ice_type = _M_Test1._t_WstringException

    _M_Test1.WstringException = WstringException
    del WstringException

if 'WstringClass' not in _M_Test1.__dict__:
    _M_Test1._t_WstringClassPrx = IcePy.declareProxy('::Test1::WstringClass')

if 'WstringClassPrx' not in _M_Test1.__dict__:
    _M_Test1.WstringClassPrx = None
    class WstringClassPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new WstringClassPrx proxy
            
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

        def opString(self, s1, context=None):
            return _M_Test1.WstringClass._op_opString.invoke(self, ((s1, ), context))

        def opStringAsync(self, s1, context=None):
            return _M_Test1.WstringClass._op_opString.invokeAsync(self, ((s1, ), context))

        def opStruct(self, s1, context=None):
            return _M_Test1.WstringClass._op_opStruct.invoke(self, ((s1, ), context))

        def opStructAsync(self, s1, context=None):
            return _M_Test1.WstringClass._op_opStruct.invokeAsync(self, ((s1, ), context))

        def throwExcept(self, reason, context=None):
            return _M_Test1.WstringClass._op_throwExcept.invoke(self, ((reason, ), context))

        def throwExceptAsync(self, reason, context=None):
            return _M_Test1.WstringClass._op_throwExcept.invokeAsync(self, ((reason, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test1.WstringClassPrx.ice_checkedCast(proxy, '::Test1::WstringClass', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test1.WstringClassPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test1::WstringClass'
    _M_Test1._t_WstringClassPrx = IcePy.defineProxy('::Test1::WstringClass', WstringClassPrx)

    _M_Test1.WstringClassPrx = WstringClassPrx
    del WstringClassPrx

    _M_Test1.WstringClass = None
    class WstringClass(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test1::WstringClass')

        def ice_id(self, current=None):
            return '::Test1::WstringClass'

        @staticmethod
        def ice_staticId():
            return '::Test1::WstringClass'

        def opString(self, s1, current=None):
            raise NotImplementedError("servant method 'opString' not implemented")

        def opStruct(self, s1, current=None):
            raise NotImplementedError("servant method 'opStruct' not implemented")

        def throwExcept(self, reason, current=None):
            raise NotImplementedError("servant method 'throwExcept' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test1._t_WstringClassDisp)

        __repr__ = __str__

    WstringClass._op_opString = IcePy.Operation('opString', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_string, False, 0),), (((), IcePy._t_string, False, 0),), ((), IcePy._t_string, False, 0), ())
    WstringClass._op_opStruct = IcePy.Operation('opStruct', Ice.OperationMode.Normal, True, None, (), (((), _M_Test1._t_WstringStruct, False, 0),), (((), _M_Test1._t_WstringStruct, False, 0),), ((), _M_Test1._t_WstringStruct, False, 0), ())
    WstringClass._op_throwExcept = IcePy.Operation('throwExcept', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_string, False, 0),), (), None, (_M_Test1._t_WstringException,))

    _M_Test1.WstringClass = WstringClass
    del WstringClass

# End of module Test1

# Start of module Test2
_M_Test2 = Ice.openModule('Test2')
__name__ = 'Test2'

if '_t_WstringSeq' not in _M_Test2.__dict__:
    _M_Test2._t_WstringSeq = IcePy.defineSequence('::Test2::WstringSeq', (), IcePy._t_string)

if '_t_WstringWStringDict' not in _M_Test2.__dict__:
    _M_Test2._t_WstringWStringDict = IcePy.defineDictionary('::Test2::WstringWStringDict', (), IcePy._t_string, IcePy._t_string)

if 'WstringStruct' not in _M_Test2.__dict__:
    _M_Test2.WstringStruct = None
    class WstringStruct(object):
        def __init__(self, s=''):
            self.s = s

        def __hash__(self):
            _h = 0
            _h = 5 * _h + _builtins.hash(self.s)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M_Test2.WstringStruct):
                return NotImplemented
            else:
                if self.s is None or other.s is None:
                    if self.s != other.s:
                        return (-1 if self.s is None else 1)
                else:
                    if self.s < other.s:
                        return -1
                    elif self.s > other.s:
                        return 1
                return 0

        def __lt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r < 0

        def __le__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r <= 0

        def __gt__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r > 0

        def __ge__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r >= 0

        def __eq__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r == 0

        def __ne__(self, other):
            r = self.__compare(other)
            if r is NotImplemented:
                return r
            else:
                return r != 0

        def __str__(self):
            return IcePy.stringify(self, _M_Test2._t_WstringStruct)

        __repr__ = __str__

    _M_Test2._t_WstringStruct = IcePy.defineStruct('::Test2::WstringStruct', WstringStruct, (), (('s', (), IcePy._t_string),))

    _M_Test2.WstringStruct = WstringStruct
    del WstringStruct

if 'WstringException' not in _M_Test2.__dict__:
    _M_Test2.WstringException = None
    class WstringException(Ice.UserException):
        def __init__(self, reason=''):
            self.reason = reason

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test2::WstringException'

    _M_Test2._t_WstringException = IcePy.defineException('::Test2::WstringException', WstringException, (), None, (('reason', (), IcePy._t_string, False, 0),))
    WstringException._ice_type = _M_Test2._t_WstringException

    _M_Test2.WstringException = WstringException
    del WstringException

if 'WstringClass' not in _M_Test2.__dict__:
    _M_Test2._t_WstringClassPrx = IcePy.declareProxy('::Test2::WstringClass')

if 'WstringClassPrx' not in _M_Test2.__dict__:
    _M_Test2.WstringClassPrx = None
    class WstringClassPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new WstringClassPrx proxy
            
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

        def opString(self, s1, context=None):
            return _M_Test2.WstringClass._op_opString.invoke(self, ((s1, ), context))

        def opStringAsync(self, s1, context=None):
            return _M_Test2.WstringClass._op_opString.invokeAsync(self, ((s1, ), context))

        def opStruct(self, s1, context=None):
            return _M_Test2.WstringClass._op_opStruct.invoke(self, ((s1, ), context))

        def opStructAsync(self, s1, context=None):
            return _M_Test2.WstringClass._op_opStruct.invokeAsync(self, ((s1, ), context))

        def throwExcept(self, reason, context=None):
            return _M_Test2.WstringClass._op_throwExcept.invoke(self, ((reason, ), context))

        def throwExceptAsync(self, reason, context=None):
            return _M_Test2.WstringClass._op_throwExcept.invokeAsync(self, ((reason, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test2.WstringClassPrx.ice_checkedCast(proxy, '::Test2::WstringClass', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test2.WstringClassPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test2::WstringClass'
    _M_Test2._t_WstringClassPrx = IcePy.defineProxy('::Test2::WstringClass', WstringClassPrx)

    _M_Test2.WstringClassPrx = WstringClassPrx
    del WstringClassPrx

    _M_Test2.WstringClass = None
    class WstringClass(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test2::WstringClass')

        def ice_id(self, current=None):
            return '::Test2::WstringClass'

        @staticmethod
        def ice_staticId():
            return '::Test2::WstringClass'

        def opString(self, s1, current=None):
            raise NotImplementedError("servant method 'opString' not implemented")

        def opStruct(self, s1, current=None):
            raise NotImplementedError("servant method 'opStruct' not implemented")

        def throwExcept(self, reason, current=None):
            raise NotImplementedError("servant method 'throwExcept' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test2._t_WstringClassDisp)

        __repr__ = __str__

    WstringClass._op_opString = IcePy.Operation('opString', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_string, False, 0),), (((), IcePy._t_string, False, 0),), ((), IcePy._t_string, False, 0), ())
    WstringClass._op_opStruct = IcePy.Operation('opStruct', Ice.OperationMode.Normal, True, None, (), (((), _M_Test2._t_WstringStruct, False, 0),), (((), _M_Test2._t_WstringStruct, False, 0),), ((), _M_Test2._t_WstringStruct, False, 0), ())
    WstringClass._op_throwExcept = IcePy.Operation('throwExcept', Ice.OperationMode.Normal, True, None, (), (((), IcePy._t_string, False, 0),), (), None, (_M_Test2._t_WstringException,))

    _M_Test2.WstringClass = WstringClass
    del WstringClass

# End of module Test2
