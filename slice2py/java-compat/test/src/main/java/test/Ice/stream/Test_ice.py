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
import Ice.BuiltinSequences_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'MyEnum' not in _M_Test.__dict__:
    _M_Test.MyEnum = Ice.createTempClass()
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

if 'MyClass' not in _M_Test.__dict__:
    _M_Test._t_MyClass = IcePy.declareValue('::Test::MyClass')

if 'MyInterface' not in _M_Test.__dict__:
    _M_Test._t_MyInterfaceDisp = IcePy.declareClass('::Test::MyInterface')
    _M_Test._t_MyInterfacePrx = IcePy.declareProxy('::Test::MyInterface')

if '_t_SerialSmall' not in _M_Test.__dict__:
    _M_Test._t_SerialSmall = IcePy.defineSequence('::Test::SerialSmall', (), IcePy._t_byte)

if 'SmallStruct' not in _M_Test.__dict__:
    _M_Test.SmallStruct = Ice.createTempClass()
    class SmallStruct(object):
        def __init__(self, bo=False, by=0, sh=0, i=0, l=0, f=0.0, d=0.0, str='', e=_M_Test.MyEnum.enum1, c=None, p=None, ss=None):
            self.bo = bo
            self.by = by
            self.sh = sh
            self.i = i
            self.l = l
            self.f = f
            self.d = d
            self.str = str
            self.e = e
            self.c = c
            self.p = p
            self.ss = ss

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_Test.SmallStruct):
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
                if self.c != other.c:
                    return False
                if self.p != other.p:
                    return False
                if self.ss != other.ss:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SmallStruct)

        __repr__ = __str__

    _M_Test._t_SmallStruct = IcePy.defineStruct('::Test::SmallStruct', SmallStruct, (), (
        ('bo', (), IcePy._t_bool),
        ('by', (), IcePy._t_byte),
        ('sh', (), IcePy._t_short),
        ('i', (), IcePy._t_int),
        ('l', (), IcePy._t_long),
        ('f', (), IcePy._t_float),
        ('d', (), IcePy._t_double),
        ('str', (), IcePy._t_string),
        ('e', (), _M_Test._t_MyEnum),
        ('c', (), _M_Test._t_MyClass),
        ('p', (), _M_Test._t_MyInterfacePrx),
        ('ss', (), _M_Test._t_SerialSmall)
    ))

    _M_Test.SmallStruct = SmallStruct
    del SmallStruct

if 'Point' not in _M_Test.__dict__:
    _M_Test.Point = Ice.createTempClass()
    class Point(object):
        def __init__(self, x=0, y=0):
            self.x = x
            self.y = y

        def __hash__(self):
            _h = 0
            _h = 5 * _h + Ice.getHash(self.x)
            _h = 5 * _h + Ice.getHash(self.y)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M_Test.Point):
                return NotImplemented
            else:
                if self.x is None or other.x is None:
                    if self.x != other.x:
                        return (-1 if self.x is None else 1)
                else:
                    if self.x < other.x:
                        return -1
                    elif self.x > other.x:
                        return 1
                if self.y is None or other.y is None:
                    if self.y != other.y:
                        return (-1 if self.y is None else 1)
                else:
                    if self.y < other.y:
                        return -1
                    elif self.y > other.y:
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
            return IcePy.stringify(self, _M_Test._t_Point)

        __repr__ = __str__

    _M_Test._t_Point = IcePy.defineStruct('::Test::Point', Point, (), (
        ('x', (), IcePy._t_int),
        ('y', (), IcePy._t_int)
    ))

    _M_Test.Point = Point
    del Point

if '_t_MyEnumS' not in _M_Test.__dict__:
    _M_Test._t_MyEnumS = IcePy.defineSequence('::Test::MyEnumS', (), _M_Test._t_MyEnum)

if '_t_MyClassS' not in _M_Test.__dict__:
    _M_Test._t_MyClassS = IcePy.defineSequence('::Test::MyClassS', (), _M_Test._t_MyClass)

if '_t_ByteBoolD' not in _M_Test.__dict__:
    _M_Test._t_ByteBoolD = IcePy.defineDictionary('::Test::ByteBoolD', (), IcePy._t_byte, IcePy._t_bool)

if '_t_ShortIntD' not in _M_Test.__dict__:
    _M_Test._t_ShortIntD = IcePy.defineDictionary('::Test::ShortIntD', (), IcePy._t_short, IcePy._t_int)

if '_t_StringMyClassD' not in _M_Test.__dict__:
    _M_Test._t_StringMyClassD = IcePy.defineDictionary('::Test::StringMyClassD', (), IcePy._t_string, _M_Test._t_MyClass)

if 'OptionalClass' not in _M_Test.__dict__:
    _M_Test.OptionalClass = Ice.createTempClass()
    class OptionalClass(Ice.Value):
        def __init__(self, bo=False, by=0, sh=Ice.Unset, i=Ice.Unset, sm=Ice.Unset, enumS4=Ice.Unset, myClassS5=Ice.Unset, byteBoolD6=Ice.Unset, shortIntD7=Ice.Unset, enum8=Ice.Unset, class9=Ice.Unset, stringMyClassD10=Ice.Unset, intSeq12=Ice.Unset, byteSeq13=Ice.Unset, stringSeq14=Ice.Unset, p15=Ice.Unset):
            self.bo = bo
            self.by = by
            self.sh = sh
            self.i = i
            self.sm = sm
            self.enumS4 = enumS4
            self.myClassS5 = myClassS5
            self.byteBoolD6 = byteBoolD6
            self.shortIntD7 = shortIntD7
            self.enum8 = enum8
            self.class9 = class9
            self.stringMyClassD10 = stringMyClassD10
            self.intSeq12 = intSeq12
            self.byteSeq13 = byteSeq13
            self.stringSeq14 = stringSeq14
            self.p15 = p15

        def ice_id(self):
            return '::Test::OptionalClass'

        @staticmethod
        def ice_staticId():
            return '::Test::OptionalClass'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_OptionalClass)

        __repr__ = __str__

    _M_Test._t_OptionalClass = IcePy.declareValue('::Test::OptionalClass')

    _M_Test._t_OptionalClass = IcePy.defineValue('::Test::OptionalClass', OptionalClass, -1, (), False, False, None, (
        ('bo', (), IcePy._t_bool, False, 0),
        ('by', (), IcePy._t_byte, False, 0),
        ('sh', (), IcePy._t_short, True, 1),
        ('i', (), IcePy._t_int, True, 2),
        ('sm', (), _M_Test._t_SmallStruct, True, 3),
        ('enumS4', (), _M_Test._t_MyEnumS, True, 4),
        ('myClassS5', (), _M_Test._t_MyClassS, True, 5),
        ('byteBoolD6', (), _M_Test._t_ByteBoolD, True, 6),
        ('shortIntD7', (), _M_Test._t_ShortIntD, True, 7),
        ('enum8', (), _M_Test._t_MyEnum, True, 8),
        ('class9', (), _M_Test._t_MyClass, True, 9),
        ('stringMyClassD10', (), _M_Test._t_StringMyClassD, True, 10),
        ('intSeq12', (), _M_Ice._t_IntSeq, True, 12),
        ('byteSeq13', (), _M_Ice._t_ByteSeq, True, 13),
        ('stringSeq14', (), _M_Ice._t_StringSeq, True, 14),
        ('p15', (), _M_Test._t_Point, True, 15)
    ))
    OptionalClass._ice_type = _M_Test._t_OptionalClass

    _M_Test.OptionalClass = OptionalClass
    del OptionalClass

if '_t_BoolSS' not in _M_Test.__dict__:
    _M_Test._t_BoolSS = IcePy.defineSequence('::Test::BoolSS', (), _M_Ice._t_BoolSeq)

if '_t_ByteSS' not in _M_Test.__dict__:
    _M_Test._t_ByteSS = IcePy.defineSequence('::Test::ByteSS', (), _M_Ice._t_ByteSeq)

if '_t_ShortSS' not in _M_Test.__dict__:
    _M_Test._t_ShortSS = IcePy.defineSequence('::Test::ShortSS', (), _M_Ice._t_ShortSeq)

if '_t_IntSS' not in _M_Test.__dict__:
    _M_Test._t_IntSS = IcePy.defineSequence('::Test::IntSS', (), _M_Ice._t_IntSeq)

if '_t_LongSS' not in _M_Test.__dict__:
    _M_Test._t_LongSS = IcePy.defineSequence('::Test::LongSS', (), _M_Ice._t_LongSeq)

if '_t_FloatSS' not in _M_Test.__dict__:
    _M_Test._t_FloatSS = IcePy.defineSequence('::Test::FloatSS', (), _M_Ice._t_FloatSeq)

if '_t_DoubleSS' not in _M_Test.__dict__:
    _M_Test._t_DoubleSS = IcePy.defineSequence('::Test::DoubleSS', (), _M_Ice._t_DoubleSeq)

if '_t_StringSS' not in _M_Test.__dict__:
    _M_Test._t_StringSS = IcePy.defineSequence('::Test::StringSS', (), _M_Ice._t_StringSeq)

if '_t_MyEnumSS' not in _M_Test.__dict__:
    _M_Test._t_MyEnumSS = IcePy.defineSequence('::Test::MyEnumSS', (), _M_Test._t_MyEnumS)

if '_t_MyClassSS' not in _M_Test.__dict__:
    _M_Test._t_MyClassSS = IcePy.defineSequence('::Test::MyClassSS', (), _M_Test._t_MyClassS)

if '_t_LongFloatD' not in _M_Test.__dict__:
    _M_Test._t_LongFloatD = IcePy.defineDictionary('::Test::LongFloatD', (), IcePy._t_long, IcePy._t_float)

if '_t_StringStringD' not in _M_Test.__dict__:
    _M_Test._t_StringStringD = IcePy.defineDictionary('::Test::StringStringD', (), IcePy._t_string, IcePy._t_string)

if 'Bar' not in _M_Test.__dict__:
    _M_Test._t_Bar = IcePy.declareValue('::Test::Bar')

if 'MyClass' not in _M_Test.__dict__:
    _M_Test.MyClass = Ice.createTempClass()
    class MyClass(Ice.Value):
        def __init__(self, c=None, prx=None, o=None, s=Ice._struct_marker, seq1=None, seq2=None, seq3=None, seq4=None, seq5=None, seq6=None, seq7=None, seq8=None, seq9=None, seq10=None, d=None):
            self.c = c
            self.prx = prx
            self.o = o
            if s is Ice._struct_marker:
                self.s = _M_Test.SmallStruct()
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

    _M_Test._t_MyClass = IcePy.defineValue('::Test::MyClass', MyClass, -1, (), False, False, None, (
        ('c', (), _M_Test._t_MyClass, False, 0),
        ('prx', (), _M_Test._t_MyInterfacePrx, False, 0),
        ('o', (), IcePy._t_Value, False, 0),
        ('s', (), _M_Test._t_SmallStruct, False, 0),
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

_M_Test._t_MyInterface = IcePy.defineValue('::Test::MyInterface', Ice.Value, -1, (), False, True, None, ())

if 'MyInterfacePrx' not in _M_Test.__dict__:
    _M_Test.MyInterfacePrx = Ice.createTempClass()
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

    _M_Test.MyInterface = Ice.createTempClass()
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

if 'MyException' not in _M_Test.__dict__:
    _M_Test.MyException = Ice.createTempClass()
    class MyException(Ice.UserException):
        def __init__(self, c=None):
            self.c = c

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::MyException'

    _M_Test._t_MyException = IcePy.defineException('::Test::MyException', MyException, (), False, None, (('c', (), _M_Test._t_MyClass, False, 0),))
    MyException._ice_type = _M_Test._t_MyException

    _M_Test.MyException = MyException
    del MyException

# End of module Test
