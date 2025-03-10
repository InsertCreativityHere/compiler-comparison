# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'ClientPrivate.ice'
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

if 'Empty' not in _M_Test.__dict__:
    _M_Test._t_Empty = IcePy.declareValue('::Test::Empty')

if 'Empty' not in _M_Test.__dict__:
    _M_Test.Empty = None
    class Empty(Ice.Value):
        def __init__(self):
            pass

        def ice_id(self):
            return '::Test::Empty'

        @staticmethod
        def ice_staticId():
            return '::Test::Empty'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_Empty)

        __repr__ = __str__

    _M_Test._t_Empty = IcePy.defineValue('::Test::Empty', Empty, -1, (), False, None, ())
    Empty._ice_type = _M_Test._t_Empty

    _M_Test.Empty = Empty
    del Empty

if 'AlsoEmpty' not in _M_Test.__dict__:
    _M_Test._t_AlsoEmpty = IcePy.declareValue('::Test::AlsoEmpty')

if 'AlsoEmpty' not in _M_Test.__dict__:
    _M_Test.AlsoEmpty = None
    class AlsoEmpty(Ice.Value):
        def __init__(self):
            pass

        def ice_id(self):
            return '::Test::AlsoEmpty'

        @staticmethod
        def ice_staticId():
            return '::Test::AlsoEmpty'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_AlsoEmpty)

        __repr__ = __str__

    _M_Test._t_AlsoEmpty = IcePy.defineValue('::Test::AlsoEmpty', AlsoEmpty, -1, (), False, None, ())
    AlsoEmpty._ice_type = _M_Test._t_AlsoEmpty

    _M_Test.AlsoEmpty = AlsoEmpty
    del AlsoEmpty

if 'UnexpectedObjectExceptionTest' not in _M_Test.__dict__:
    _M_Test._t_UnexpectedObjectExceptionTestPrx = IcePy.declareProxy('::Test::UnexpectedObjectExceptionTest')

if 'UnexpectedObjectExceptionTestPrx' not in _M_Test.__dict__:
    _M_Test.UnexpectedObjectExceptionTestPrx = None
    class UnexpectedObjectExceptionTestPrx(Ice.ObjectPrx):

        def __init__(self, communicator, proxyString):
            """
            Creates a new UnexpectedObjectExceptionTestPrx proxy
            
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

        def op(self, context=None):
            return _M_Test.UnexpectedObjectExceptionTest._op_op.invoke(self, ((), context))

        def opAsync(self, context=None):
            return _M_Test.UnexpectedObjectExceptionTest._op_op.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.UnexpectedObjectExceptionTestPrx.ice_checkedCast(proxy, '::Test::UnexpectedObjectExceptionTest', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.UnexpectedObjectExceptionTestPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::UnexpectedObjectExceptionTest'
    _M_Test._t_UnexpectedObjectExceptionTestPrx = IcePy.defineProxy('::Test::UnexpectedObjectExceptionTest', UnexpectedObjectExceptionTestPrx)

    _M_Test.UnexpectedObjectExceptionTestPrx = UnexpectedObjectExceptionTestPrx
    del UnexpectedObjectExceptionTestPrx

    _M_Test.UnexpectedObjectExceptionTest = None
    class UnexpectedObjectExceptionTest(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::UnexpectedObjectExceptionTest')

        def ice_id(self, current=None):
            return '::Test::UnexpectedObjectExceptionTest'

        @staticmethod
        def ice_staticId():
            return '::Test::UnexpectedObjectExceptionTest'

        def op(self, current=None):
            raise NotImplementedError("servant method 'op' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_UnexpectedObjectExceptionTestDisp)

        __repr__ = __str__

    UnexpectedObjectExceptionTest._op_op = IcePy.Operation('op', Ice.OperationMode.Normal, False, None, (), (), (), ((), _M_Test._t_Empty, False, 0), ())

    _M_Test.UnexpectedObjectExceptionTest = UnexpectedObjectExceptionTest
    del UnexpectedObjectExceptionTest

if 'COneMember' not in _M_Test.__dict__:
    _M_Test._t_COneMember = IcePy.declareValue('::Test::COneMember')

if 'COneMember' not in _M_Test.__dict__:
    _M_Test.COneMember = None
    class COneMember(Ice.Value):
        def __init__(self, e=None):
            self.e = e

        def ice_id(self):
            return '::Test::COneMember'

        @staticmethod
        def ice_staticId():
            return '::Test::COneMember'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_COneMember)

        __repr__ = __str__

    _M_Test._t_COneMember = IcePy.defineValue('::Test::COneMember', COneMember, -1, (), False, None, (('e', (), _M_Test._t_Empty, False, 0),))
    COneMember._ice_type = _M_Test._t_COneMember

    _M_Test.COneMember = COneMember
    del COneMember

if 'CTwoMembers' not in _M_Test.__dict__:
    _M_Test._t_CTwoMembers = IcePy.declareValue('::Test::CTwoMembers')

if 'CTwoMembers' not in _M_Test.__dict__:
    _M_Test.CTwoMembers = None
    class CTwoMembers(Ice.Value):
        def __init__(self, e1=None, e2=None):
            self.e1 = e1
            self.e2 = e2

        def ice_id(self):
            return '::Test::CTwoMembers'

        @staticmethod
        def ice_staticId():
            return '::Test::CTwoMembers'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_CTwoMembers)

        __repr__ = __str__

    _M_Test._t_CTwoMembers = IcePy.defineValue('::Test::CTwoMembers', CTwoMembers, -1, (), False, None, (
        ('e1', (), _M_Test._t_Empty, False, 0),
        ('e2', (), _M_Test._t_Empty, False, 0)
    ))
    CTwoMembers._ice_type = _M_Test._t_CTwoMembers

    _M_Test.CTwoMembers = CTwoMembers
    del CTwoMembers

if 'EOneMember' not in _M_Test.__dict__:
    _M_Test.EOneMember = None
    class EOneMember(Ice.UserException):
        def __init__(self, e=None):
            self.e = e

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::EOneMember'

    _M_Test._t_EOneMember = IcePy.defineException('::Test::EOneMember', EOneMember, (), None, (('e', (), _M_Test._t_Empty, False, 0),))
    EOneMember._ice_type = _M_Test._t_EOneMember

    _M_Test.EOneMember = EOneMember
    del EOneMember

if 'ETwoMembers' not in _M_Test.__dict__:
    _M_Test.ETwoMembers = None
    class ETwoMembers(Ice.UserException):
        def __init__(self, e1=None, e2=None):
            self.e1 = e1
            self.e2 = e2

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::ETwoMembers'

    _M_Test._t_ETwoMembers = IcePy.defineException('::Test::ETwoMembers', ETwoMembers, (), None, (
        ('e1', (), _M_Test._t_Empty, False, 0),
        ('e2', (), _M_Test._t_Empty, False, 0)
    ))
    ETwoMembers._ice_type = _M_Test._t_ETwoMembers

    _M_Test.ETwoMembers = ETwoMembers
    del ETwoMembers

if 'SOneMember' not in _M_Test.__dict__:
    _M_Test.SOneMember = None
    class SOneMember(object):
        def __init__(self, e=None):
            self.e = e

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_Test.SOneMember):
                return NotImplemented
            else:
                if self.e != other.e:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SOneMember)

        __repr__ = __str__

    _M_Test._t_SOneMember = IcePy.defineStruct('::Test::SOneMember', SOneMember, (), (('e', (), _M_Test._t_Empty),))

    _M_Test.SOneMember = SOneMember
    del SOneMember

if 'STwoMembers' not in _M_Test.__dict__:
    _M_Test.STwoMembers = None
    class STwoMembers(object):
        def __init__(self, e1=None, e2=None):
            self.e1 = e1
            self.e2 = e2

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_Test.STwoMembers):
                return NotImplemented
            else:
                if self.e1 != other.e1:
                    return False
                if self.e2 != other.e2:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_STwoMembers)

        __repr__ = __str__

    _M_Test._t_STwoMembers = IcePy.defineStruct('::Test::STwoMembers', STwoMembers, (), (
        ('e1', (), _M_Test._t_Empty),
        ('e2', (), _M_Test._t_Empty)
    ))

    _M_Test.STwoMembers = STwoMembers
    del STwoMembers

if '_t_DOneMember' not in _M_Test.__dict__:
    _M_Test._t_DOneMember = IcePy.defineDictionary('::Test::DOneMember', (), IcePy._t_int, _M_Test._t_COneMember)

if '_t_DTwoMembers' not in _M_Test.__dict__:
    _M_Test._t_DTwoMembers = IcePy.defineDictionary('::Test::DTwoMembers', (), IcePy._t_int, _M_Test._t_CTwoMembers)

# End of module Test
