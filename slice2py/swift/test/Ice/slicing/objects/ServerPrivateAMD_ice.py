# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `ServerPrivateAMD.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy
import TestAMD_ice

# Included module Test
_M_Test = Ice.openModule('Test')

# Start of module Test
__name__ = 'Test'

if 'SBSUnknownDerived' not in _M_Test.__dict__:
    _M_Test.SBSUnknownDerived = Ice.createTempClass()
    class SBSUnknownDerived(_M_Test.SBase):
        def __init__(self, sb='', sbsud=''):
            _M_Test.SBase.__init__(self, sb)
            self.sbsud = sbsud

        def ice_id(self):
            return '::Test::SBSUnknownDerived'

        @staticmethod
        def ice_staticId():
            return '::Test::SBSUnknownDerived'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SBSUnknownDerived)

        __repr__ = __str__

    _M_Test._t_SBSUnknownDerived = IcePy.defineValue('::Test::SBSUnknownDerived', SBSUnknownDerived, -1, (), False, False, _M_Test._t_SBase, (('sbsud', (), IcePy._t_string, False, 0),))
    SBSUnknownDerived._ice_type = _M_Test._t_SBSUnknownDerived

    _M_Test.SBSUnknownDerived = SBSUnknownDerived
    del SBSUnknownDerived

if 'SUnknown' not in _M_Test.__dict__:
    _M_Test.SUnknown = Ice.createTempClass()
    class SUnknown(Ice.Value):
        def __init__(self, su='', cycle=None):
            self.su = su
            self.cycle = cycle

        def ice_id(self):
            return '::Test::SUnknown'

        @staticmethod
        def ice_staticId():
            return '::Test::SUnknown'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SUnknown)

        __repr__ = __str__

    _M_Test._t_SUnknown = IcePy.declareValue('::Test::SUnknown')

    _M_Test._t_SUnknown = IcePy.defineValue('::Test::SUnknown', SUnknown, -1, (), False, False, None, (
        ('su', (), IcePy._t_string, False, 0),
        ('cycle', (), _M_Test._t_SUnknown, False, 0)
    ))
    SUnknown._ice_type = _M_Test._t_SUnknown

    _M_Test.SUnknown = SUnknown
    del SUnknown

if 'D2' not in _M_Test.__dict__:
    _M_Test.D2 = Ice.createTempClass()
    class D2(_M_Test.B):
        def __init__(self, sb='', pb=None, sd2='', pd2=None):
            _M_Test.B.__init__(self, sb, pb)
            self.sd2 = sd2
            self.pd2 = pd2

        def ice_id(self):
            return '::Test::D2'

        @staticmethod
        def ice_staticId():
            return '::Test::D2'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_D2)

        __repr__ = __str__

    _M_Test._t_D2 = IcePy.declareValue('::Test::D2')

    _M_Test._t_D2 = IcePy.defineValue('::Test::D2', D2, -1, (), False, False, _M_Test._t_B, (
        ('sd2', (), IcePy._t_string, False, 0),
        ('pd2', (), _M_Test._t_B, False, 0)
    ))
    D2._ice_type = _M_Test._t_D2

    _M_Test.D2 = D2
    del D2

if 'D4' not in _M_Test.__dict__:
    _M_Test.D4 = Ice.createTempClass()
    class D4(_M_Test.B):
        def __init__(self, sb='', pb=None, p1=None, p2=None):
            _M_Test.B.__init__(self, sb, pb)
            self.p1 = p1
            self.p2 = p2

        def ice_id(self):
            return '::Test::D4'

        @staticmethod
        def ice_staticId():
            return '::Test::D4'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_D4)

        __repr__ = __str__

    _M_Test._t_D4 = IcePy.declareValue('::Test::D4')

    _M_Test._t_D4 = IcePy.defineValue('::Test::D4', D4, -1, (), False, False, _M_Test._t_B, (
        ('p1', (), _M_Test._t_B, False, 0),
        ('p2', (), _M_Test._t_B, False, 0)
    ))
    D4._ice_type = _M_Test._t_D4

    _M_Test.D4 = D4
    del D4

if 'UnknownDerivedException' not in _M_Test.__dict__:
    _M_Test.UnknownDerivedException = Ice.createTempClass()
    class UnknownDerivedException(_M_Test.BaseException):
        def __init__(self, sbe='', pb=None, sude='', pd2=None):
            _M_Test.BaseException.__init__(self, sbe, pb)
            self.sude = sude
            self.pd2 = pd2

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::UnknownDerivedException'

    _M_Test._t_UnknownDerivedException = IcePy.defineException('::Test::UnknownDerivedException', UnknownDerivedException, (), False, _M_Test._t_BaseException, (
        ('sude', (), IcePy._t_string, False, 0),
        ('pd2', (), _M_Test._t_D2, False, 0)
    ))
    UnknownDerivedException._ice_type = _M_Test._t_UnknownDerivedException

    _M_Test.UnknownDerivedException = UnknownDerivedException
    del UnknownDerivedException

if 'MyClass' not in _M_Test.__dict__:
    _M_Test.MyClass = Ice.createTempClass()
    class MyClass(Ice.Value):
        def __init__(self, i=0):
            self.i = i

        def ice_id(self):
            return '::Test::MyClass'

        @staticmethod
        def ice_staticId():
            return '::Test::MyClass'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_MyClass)

        __repr__ = __str__

    _M_Test._t_MyClass = IcePy.defineValue('::Test::MyClass', MyClass, -1, (), False, False, None, (('i', (), IcePy._t_int, False, 0),))
    MyClass._ice_type = _M_Test._t_MyClass

    _M_Test.MyClass = MyClass
    del MyClass

if 'PSUnknown' not in _M_Test.__dict__:
    _M_Test.PSUnknown = Ice.createTempClass()
    class PSUnknown(_M_Test.Preserved):
        def __init__(self, pi=0, ps='', psu='', graph=None, cl=None):
            _M_Test.Preserved.__init__(self, pi, ps)
            self.psu = psu
            self.graph = graph
            self.cl = cl

        def ice_id(self):
            return '::Test::PSUnknown'

        @staticmethod
        def ice_staticId():
            return '::Test::PSUnknown'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PSUnknown)

        __repr__ = __str__

    _M_Test._t_PSUnknown = IcePy.declareValue('::Test::PSUnknown')

    _M_Test._t_PSUnknown = IcePy.defineValue('::Test::PSUnknown', PSUnknown, -1, (), True, False, _M_Test._t_Preserved, (
        ('psu', (), IcePy._t_string, False, 0),
        ('graph', (), _M_Test._t_PNode, False, 0),
        ('cl', (), _M_Test._t_MyClass, False, 0)
    ))
    PSUnknown._ice_type = _M_Test._t_PSUnknown

    _M_Test.PSUnknown = PSUnknown
    del PSUnknown

if 'PSUnknown2' not in _M_Test.__dict__:
    _M_Test.PSUnknown2 = Ice.createTempClass()
    class PSUnknown2(_M_Test.Preserved):
        def __init__(self, pi=0, ps='', pb=None):
            _M_Test.Preserved.__init__(self, pi, ps)
            self.pb = pb

        def ice_id(self):
            return '::Test::PSUnknown2'

        @staticmethod
        def ice_staticId():
            return '::Test::PSUnknown2'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PSUnknown2)

        __repr__ = __str__

    _M_Test._t_PSUnknown2 = IcePy.declareValue('::Test::PSUnknown2')

    _M_Test._t_PSUnknown2 = IcePy.defineValue('::Test::PSUnknown2', PSUnknown2, -1, (), True, False, _M_Test._t_Preserved, (('pb', (), _M_Test._t_PBase, False, 0),))
    PSUnknown2._ice_type = _M_Test._t_PSUnknown2

    _M_Test.PSUnknown2 = PSUnknown2
    del PSUnknown2

if 'PSUnknownException' not in _M_Test.__dict__:
    _M_Test.PSUnknownException = Ice.createTempClass()
    class PSUnknownException(_M_Test.PreservedException):
        def __init__(self, p=None):
            _M_Test.PreservedException.__init__(self)
            self.p = p

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::PSUnknownException'

    _M_Test._t_PSUnknownException = IcePy.defineException('::Test::PSUnknownException', PSUnknownException, (), True, _M_Test._t_PreservedException, (('p', (), _M_Test._t_PSUnknown2, False, 0),))
    PSUnknownException._ice_type = _M_Test._t_PSUnknownException

    _M_Test.PSUnknownException = PSUnknownException
    del PSUnknownException

# End of module Test
