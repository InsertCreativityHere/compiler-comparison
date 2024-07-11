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

import Ice
import IcePy
import builtins as _builtins
import Ice.BuiltinSequences_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'
_M_Test.MyEnum = None
class MyEnum(Ice.EnumBase):

    def __init__(self, _n, _v):
        Ice.EnumBase.__init__(self, _n, _v)

    def valueOf(self, _n):
        if _n in self._enumerators:
            return self._enumerators[_n]
        return None
    valueOf = classmethod(valueOf)

MyEnum.enum1 = MyEnum("enum1", 0)
MyEnum.enum2 = MyEnum("enum2", 1)
MyEnum.enum3 = MyEnum("enum3", 2)
MyEnum._enumerators = { 0:MyEnum.enum1, 1:MyEnum.enum2, 2:MyEnum.enum3 }

_M_Test._t_MyEnum = IcePy.defineEnum('::Test::MyEnum', MyEnum, (), MyEnum._enumerators)

_M_Test.MyEnum = MyEnum
del MyEnum
_M_Test._t_MyClass = IcePy.declareValue('::Test::MyClass')
_M_Test._t_MyInterfaceDisp = IcePy.declareClass('::Test::MyInterface')
_M_Test._t_MyInterfacePrx = IcePy.declareProxy('::Test::MyInterface')
_M_Test.LargeStruct = None
class LargeStruct(object):
    def __init__(self, bo=False, by=0, sh=0, i=0, l=0, f=0.0, d=0.0, str='', e=_M_Test.MyEnum.enum1, p=None):
        self.bo = bo
        self.by = by
        self.sh = sh
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.e = e
        self.p = p

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_Test.LargeStruct):
            return NotImplemented
        else:
            if self.bo != other.bo:
                return False
            if self.by != other.by:
                return False
            if self.sh != other.sh:
                return False
            if self.i != other.i:
                return False
            if self.l != other.l:
                return False
            if self.f != other.f:
                return False
            if self.d != other.d:
                return False
            if self.str != other.str:
                return False
            if self.e != other.e:
                return False
            if self.p != other.p:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_LargeStruct)

    __repr__ = __str__

_M_Test._t_LargeStruct = IcePy.defineStruct('::Test::LargeStruct', LargeStruct, (), (
    ('bo', (), IcePy._t_bool),
    ('by', (), IcePy._t_byte),
    ('sh', (), IcePy._t_short),
    ('i', (), IcePy._t_int),
    ('l', (), IcePy._t_long),
    ('f', (), IcePy._t_float),
    ('d', (), IcePy._t_double),
    ('str', (), IcePy._t_string),
    ('e', (), _M_Test._t_MyEnum),
    ('p', (), _M_Test._t_MyInterfacePrx)
))

_M_Test.LargeStruct = LargeStruct
del LargeStruct
_M_Test.OptionalClass = None
class OptionalClass(Ice.Value):
    def __init__(self, bo=False, by=0, sh=Ice.Unset, i=Ice.Unset):
        self.bo = bo
        self.by = by
        self.sh = sh
        self.i = i

    def ice_id(self):
        return '::Test::OptionalClass'

    @staticmethod
    def ice_staticId():
        return '::Test::OptionalClass'

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_OptionalClass)

    __repr__ = __str__

_M_Test._t_OptionalClass = IcePy.defineValue('::Test::OptionalClass', OptionalClass, -1, (), False, None, (
    ('bo', (), IcePy._t_bool, False, 0),
    ('by', (), IcePy._t_byte, False, 0),
    ('sh', (), IcePy._t_short, True, 1),
    ('i', (), IcePy._t_int, True, 2)
))
OptionalClass._ice_type = _M_Test._t_OptionalClass

_M_Test.OptionalClass = OptionalClass
del OptionalClass
_M_Test._t_MyEnumS = IcePy.defineSequence('::Test::MyEnumS', (), _M_Test._t_MyEnum)
_M_Test._t_MyClassS = IcePy.defineSequence('::Test::MyClassS', (), _M_Test._t_MyClass)
_M_Test._t_BoolSS = IcePy.defineSequence('::Test::BoolSS', (), _M_Ice._t_BoolSeq)
_M_Test._t_ByteSS = IcePy.defineSequence('::Test::ByteSS', (), _M_Ice._t_ByteSeq)
_M_Test._t_ShortSS = IcePy.defineSequence('::Test::ShortSS', (), _M_Ice._t_ShortSeq)
_M_Test._t_IntSS = IcePy.defineSequence('::Test::IntSS', (), _M_Ice._t_IntSeq)
_M_Test._t_LongSS = IcePy.defineSequence('::Test::LongSS', (), _M_Ice._t_LongSeq)
_M_Test._t_FloatSS = IcePy.defineSequence('::Test::FloatSS', (), _M_Ice._t_FloatSeq)
_M_Test._t_DoubleSS = IcePy.defineSequence('::Test::DoubleSS', (), _M_Ice._t_DoubleSeq)
_M_Test._t_StringSS = IcePy.defineSequence('::Test::StringSS', (), _M_Ice._t_StringSeq)
_M_Test._t_MyEnumSS = IcePy.defineSequence('::Test::MyEnumSS', (), _M_Test._t_MyEnumS)
_M_Test._t_MyClassSS = IcePy.defineSequence('::Test::MyClassSS', (), _M_Test._t_MyClassS)
_M_Test._t_ByteBoolD = IcePy.defineDictionary('::Test::ByteBoolD', (), IcePy._t_byte, IcePy._t_bool)
_M_Test._t_ShortIntD = IcePy.defineDictionary('::Test::ShortIntD', (), IcePy._t_short, IcePy._t_int)
_M_Test._t_LongFloatD = IcePy.defineDictionary('::Test::LongFloatD', (), IcePy._t_long, IcePy._t_float)
_M_Test._t_StringStringD = IcePy.defineDictionary('::Test::StringStringD', (), IcePy._t_string, IcePy._t_string)
_M_Test._t_StringMyClassD = IcePy.defineDictionary('::Test::StringMyClassD', (), IcePy._t_string, _M_Test._t_MyClass)
_M_Test.MyClass = None
class MyClass(Ice.Value):
    def __init__(self, c=None, o=None, s=None, seq1=None, seq2=None, seq3=None, seq4=None, seq5=None, seq6=None, seq7=None, seq8=None, seq9=None, seq10=None, d=None):
        self.c = c
        self.o = o
        if s is None:
            self.s = _M_Test.LargeStruct()
        else:
            self.s = s
        self.seq1 = seq1
        self.seq2 = seq2
        self.seq3 = seq3
        self.seq4 = seq4
        self.seq5 = seq5
        self.seq6 = seq6
        self.seq7 = seq7
        self.seq8 = seq8
        self.seq9 = seq9
        self.seq10 = seq10
        self.d = d

    def ice_id(self):
        return '::Test::MyClass'

    @staticmethod
    def ice_staticId():
        return '::Test::MyClass'

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_MyClass)

    __repr__ = __str__

_M_Test._t_MyClass = IcePy.defineValue('::Test::MyClass', MyClass, -1, (), False, None, (
    ('c', (), _M_Test._t_MyClass, False, 0),
    ('o', (), IcePy._t_Value, False, 0),
    ('s', (), _M_Test._t_LargeStruct, False, 0),
    ('seq1', (), _M_Ice._t_BoolSeq, False, 0),
    ('seq2', (), _M_Ice._t_ByteSeq, False, 0),
    ('seq3', (), _M_Ice._t_ShortSeq, False, 0),
    ('seq4', (), _M_Ice._t_IntSeq, False, 0),
    ('seq5', (), _M_Ice._t_LongSeq, False, 0),
    ('seq6', (), _M_Ice._t_FloatSeq, False, 0),
    ('seq7', (), _M_Ice._t_DoubleSeq, False, 0),
    ('seq8', (), _M_Ice._t_StringSeq, False, 0),
    ('seq9', (), _M_Test._t_MyEnumS, False, 0),
    ('seq10', (), _M_Test._t_MyClassS, False, 0),
    ('d', (), _M_Test._t_StringMyClassD, False, 0)
))
MyClass._ice_type = _M_Test._t_MyClass

_M_Test.MyClass = MyClass
del MyClass
_M_Test.MyException = None
class MyException(Ice.UserException):
    def __init__(self, c=None):
        self.c = c

    def __str__(self):
        return IcePy.stringifyException(self)

    __repr__ = __str__

    _ice_id = '::Test::MyException'

_M_Test._t_MyException = IcePy.defineException('::Test::MyException', MyException, (), None, (('c', (), _M_Test._t_MyClass, False, 0),))
MyException._ice_type = _M_Test._t_MyException

_M_Test.MyException = MyException
del MyException

_M_Test._t_MyInterface = IcePy.defineValue('::Test::MyInterface', Ice.Value, -1, (), True, None, ())
_M_Test.MyInterfacePrx = None
class MyInterfacePrx(Ice.ObjectPrx):

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

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_MyInterfaceDisp)

    __repr__ = __str__

_M_Test._t_MyInterfaceDisp = IcePy.defineClass('::Test::MyInterface', MyInterface, (), None, ())
MyInterface._ice_type = _M_Test._t_MyInterfaceDisp

_M_Test.MyInterface = MyInterface
del MyInterface

# End of module Test
