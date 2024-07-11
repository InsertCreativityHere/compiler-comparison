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

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'
_M_Test.Color = None
class Color(Ice.EnumBase):

    def __init__(self, _n, _v):
        Ice.EnumBase.__init__(self, _n, _v)

    def valueOf(self, _n):
        if _n in self._enumerators:
            return self._enumerators[_n]
        return None
    valueOf = classmethod(valueOf)

Color.red = Color("red", 0)
Color.green = Color("green", 1)
Color.blue = Color("blue", 2)
Color._enumerators = { 0:Color.red, 1:Color.green, 2:Color.blue }

_M_Test._t_Color = IcePy.defineEnum('::Test::Color', Color, (), Color._enumerators)

_M_Test.Color = Color
del Color

# Start of module Test.Nested
_M_Test.Nested = Ice.openModule('Test.Nested')
__name__ = 'Test.Nested'
_M_Test.Nested.Color = None
class Color(Ice.EnumBase):

    def __init__(self, _n, _v):
        Ice.EnumBase.__init__(self, _n, _v)

    def valueOf(self, _n):
        if _n in self._enumerators:
            return self._enumerators[_n]
        return None
    valueOf = classmethod(valueOf)

Color.red = Color("red", 0)
Color.green = Color("green", 1)
Color.blue = Color("blue", 2)
Color._enumerators = { 0:Color.red, 1:Color.green, 2:Color.blue }

_M_Test.Nested._t_Color = IcePy.defineEnum('::Test::Nested::Color', Color, (), Color._enumerators)

_M_Test.Nested.Color = Color
del Color

# End of module Test.Nested

__name__ = 'Test'
_M_Test.Struct1 = None
class Struct1(object):
    def __init__(self, boolFalse=False, boolTrue=True, b=254, s=16000, i=3, l=4, f=5.1, d=6.2, str="foo \\ \"bar\n \r\n\t\v\f\a\b?", c1=_M_Test.Color.red, c2=_M_Test.Color.green, c3=_M_Test.Color.blue, nc1=_M_Test.Nested.Color.red, nc2=_M_Test.Nested.Color.green, nc3=_M_Test.Nested.Color.blue, noDefault='', zeroI=0, zeroL=0, zeroF=0, zeroDotF=0, zeroD=0, zeroDotD=0):
        self.boolFalse = boolFalse
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3
        self.noDefault = noDefault
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_Test.Struct1):
            return NotImplemented
        else:
            if self.boolFalse != other.boolFalse:
                return False
            if self.boolTrue != other.boolTrue:
                return False
            if self.b != other.b:
                return False
            if self.s != other.s:
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
            if self.c1 != other.c1:
                return False
            if self.c2 != other.c2:
                return False
            if self.c3 != other.c3:
                return False
            if self.nc1 != other.nc1:
                return False
            if self.nc2 != other.nc2:
                return False
            if self.nc3 != other.nc3:
                return False
            if self.noDefault != other.noDefault:
                return False
            if self.zeroI != other.zeroI:
                return False
            if self.zeroL != other.zeroL:
                return False
            if self.zeroF != other.zeroF:
                return False
            if self.zeroDotF != other.zeroDotF:
                return False
            if self.zeroD != other.zeroD:
                return False
            if self.zeroDotD != other.zeroDotD:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_Struct1)

    __repr__ = __str__

_M_Test._t_Struct1 = IcePy.defineStruct('::Test::Struct1', Struct1, (), (
    ('boolFalse', (), IcePy._t_bool),
    ('boolTrue', (), IcePy._t_bool),
    ('b', (), IcePy._t_byte),
    ('s', (), IcePy._t_short),
    ('i', (), IcePy._t_int),
    ('l', (), IcePy._t_long),
    ('f', (), IcePy._t_float),
    ('d', (), IcePy._t_double),
    ('str', (), IcePy._t_string),
    ('c1', (), _M_Test._t_Color),
    ('c2', (), _M_Test._t_Color),
    ('c3', (), _M_Test._t_Color),
    ('nc1', (), _M_Test.Nested._t_Color),
    ('nc2', (), _M_Test.Nested._t_Color),
    ('nc3', (), _M_Test.Nested._t_Color),
    ('noDefault', (), IcePy._t_string),
    ('zeroI', (), IcePy._t_int),
    ('zeroL', (), IcePy._t_long),
    ('zeroF', (), IcePy._t_float),
    ('zeroDotF', (), IcePy._t_float),
    ('zeroD', (), IcePy._t_double),
    ('zeroDotD', (), IcePy._t_double)
))

_M_Test.Struct1 = Struct1
del Struct1

_M_Test.ConstBool = True

_M_Test.ConstByte = 254

_M_Test.ConstShort = 16000

_M_Test.ConstInt = 3

_M_Test.ConstLong = 4

_M_Test.ConstFloat = 5.1

_M_Test.ConstDouble = 6.2

_M_Test.ConstString = "foo \\ \"bar\n \r\n\t\v\f\a\b?"

_M_Test.ConstColor1 = _M_Test.Color.red

_M_Test.ConstColor2 = _M_Test.Color.green

_M_Test.ConstColor3 = _M_Test.Color.blue

_M_Test.ConstNestedColor1 = _M_Test.Nested.Color.red

_M_Test.ConstNestedColor2 = _M_Test.Nested.Color.green

_M_Test.ConstNestedColor3 = _M_Test.Nested.Color.blue

_M_Test.ConstZeroI = 0

_M_Test.ConstZeroL = 0

_M_Test.ConstZeroF = 0

_M_Test.ConstZeroDotF = 0

_M_Test.ConstZeroD = 0

_M_Test.ConstZeroDotD = 0
_M_Test.Struct2 = None
class Struct2(object):
    def __init__(self, boolTrue=_M_Test.ConstBool, b=_M_Test.ConstByte, s=_M_Test.ConstShort, i=_M_Test.ConstInt, l=_M_Test.ConstLong, f=_M_Test.ConstFloat, d=_M_Test.ConstDouble, str=_M_Test.ConstString, c1=_M_Test.ConstColor1, c2=_M_Test.ConstColor2, c3=_M_Test.ConstColor3, nc1=_M_Test.ConstNestedColor1, nc2=_M_Test.ConstNestedColor2, nc3=_M_Test.ConstNestedColor3, zeroI=_M_Test.ConstZeroI, zeroL=_M_Test.ConstZeroL, zeroF=_M_Test.ConstZeroF, zeroDotF=_M_Test.ConstZeroDotF, zeroD=_M_Test.ConstZeroD, zeroDotD=_M_Test.ConstZeroDotD):
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_Test.Struct2):
            return NotImplemented
        else:
            if self.boolTrue != other.boolTrue:
                return False
            if self.b != other.b:
                return False
            if self.s != other.s:
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
            if self.c1 != other.c1:
                return False
            if self.c2 != other.c2:
                return False
            if self.c3 != other.c3:
                return False
            if self.nc1 != other.nc1:
                return False
            if self.nc2 != other.nc2:
                return False
            if self.nc3 != other.nc3:
                return False
            if self.zeroI != other.zeroI:
                return False
            if self.zeroL != other.zeroL:
                return False
            if self.zeroF != other.zeroF:
                return False
            if self.zeroDotF != other.zeroDotF:
                return False
            if self.zeroD != other.zeroD:
                return False
            if self.zeroDotD != other.zeroDotD:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_Struct2)

    __repr__ = __str__

_M_Test._t_Struct2 = IcePy.defineStruct('::Test::Struct2', Struct2, (), (
    ('boolTrue', (), IcePy._t_bool),
    ('b', (), IcePy._t_byte),
    ('s', (), IcePy._t_short),
    ('i', (), IcePy._t_int),
    ('l', (), IcePy._t_long),
    ('f', (), IcePy._t_float),
    ('d', (), IcePy._t_double),
    ('str', (), IcePy._t_string),
    ('c1', (), _M_Test._t_Color),
    ('c2', (), _M_Test._t_Color),
    ('c3', (), _M_Test._t_Color),
    ('nc1', (), _M_Test.Nested._t_Color),
    ('nc2', (), _M_Test.Nested._t_Color),
    ('nc3', (), _M_Test.Nested._t_Color),
    ('zeroI', (), IcePy._t_int),
    ('zeroL', (), IcePy._t_long),
    ('zeroF', (), IcePy._t_float),
    ('zeroDotF', (), IcePy._t_float),
    ('zeroD', (), IcePy._t_double),
    ('zeroDotD', (), IcePy._t_double)
))

_M_Test.Struct2 = Struct2
del Struct2
_M_Test.Struct3 = None
class Struct3(object):
    def __init__(self, boolFalse=False, boolTrue=True, b=1, s=2, i=3, l=4, f=5.1, d=6.2, str="foo \\ \"bar\n \r\n\t\v\f\a\b?", c1=_M_Test.Color.red, c2=_M_Test.Color.green, c3=_M_Test.Color.blue, nc1=_M_Test.Nested.Color.red, nc2=_M_Test.Nested.Color.green, nc3=_M_Test.Nested.Color.blue, noDefault='', zeroI=0, zeroL=0, zeroF=0, zeroDotF=0, zeroD=0, zeroDotD=0):
        self.boolFalse = boolFalse
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3
        self.noDefault = noDefault
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_Test.Struct3):
            return NotImplemented
        else:
            if self.boolFalse != other.boolFalse:
                return False
            if self.boolTrue != other.boolTrue:
                return False
            if self.b != other.b:
                return False
            if self.s != other.s:
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
            if self.c1 != other.c1:
                return False
            if self.c2 != other.c2:
                return False
            if self.c3 != other.c3:
                return False
            if self.nc1 != other.nc1:
                return False
            if self.nc2 != other.nc2:
                return False
            if self.nc3 != other.nc3:
                return False
            if self.noDefault != other.noDefault:
                return False
            if self.zeroI != other.zeroI:
                return False
            if self.zeroL != other.zeroL:
                return False
            if self.zeroF != other.zeroF:
                return False
            if self.zeroDotF != other.zeroDotF:
                return False
            if self.zeroD != other.zeroD:
                return False
            if self.zeroDotD != other.zeroDotD:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_Struct3)

    __repr__ = __str__

_M_Test._t_Struct3 = IcePy.defineStruct('::Test::Struct3', Struct3, (), (
    ('boolFalse', (), IcePy._t_bool),
    ('boolTrue', (), IcePy._t_bool),
    ('b', (), IcePy._t_byte),
    ('s', (), IcePy._t_short),
    ('i', (), IcePy._t_int),
    ('l', (), IcePy._t_long),
    ('f', (), IcePy._t_float),
    ('d', (), IcePy._t_double),
    ('str', (), IcePy._t_string),
    ('c1', (), _M_Test._t_Color),
    ('c2', (), _M_Test._t_Color),
    ('c3', (), _M_Test._t_Color),
    ('nc1', (), _M_Test.Nested._t_Color),
    ('nc2', (), _M_Test.Nested._t_Color),
    ('nc3', (), _M_Test.Nested._t_Color),
    ('noDefault', (), IcePy._t_string),
    ('zeroI', (), IcePy._t_int),
    ('zeroL', (), IcePy._t_long),
    ('zeroF', (), IcePy._t_float),
    ('zeroDotF', (), IcePy._t_float),
    ('zeroD', (), IcePy._t_double),
    ('zeroDotD', (), IcePy._t_double)
))

_M_Test.Struct3 = Struct3
del Struct3
_M_Test.Base = None
class Base(Ice.Value):
    def __init__(self, boolFalse=False, boolTrue=True, b=1, s=2, i=3, l=4, f=5.1, d=6.2, str="foo \\ \"bar\n \r\n\t\v\f\a\b?", noDefault='', zeroI=0, zeroL=0, zeroF=0, zeroDotF=0, zeroD=0, zeroDotD=0):
        self.boolFalse = boolFalse
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.noDefault = noDefault
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD

    def ice_id(self):
        return '::Test::Base'

    @staticmethod
    def ice_staticId():
        return '::Test::Base'

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_Base)

    __repr__ = __str__

_M_Test._t_Base = IcePy.defineValue('::Test::Base', Base, -1, (), False, None, (
    ('boolFalse', (), IcePy._t_bool, False, 0),
    ('boolTrue', (), IcePy._t_bool, False, 0),
    ('b', (), IcePy._t_byte, False, 0),
    ('s', (), IcePy._t_short, False, 0),
    ('i', (), IcePy._t_int, False, 0),
    ('l', (), IcePy._t_long, False, 0),
    ('f', (), IcePy._t_float, False, 0),
    ('d', (), IcePy._t_double, False, 0),
    ('str', (), IcePy._t_string, False, 0),
    ('noDefault', (), IcePy._t_string, False, 0),
    ('zeroI', (), IcePy._t_int, False, 0),
    ('zeroL', (), IcePy._t_long, False, 0),
    ('zeroF', (), IcePy._t_float, False, 0),
    ('zeroDotF', (), IcePy._t_float, False, 0),
    ('zeroD', (), IcePy._t_double, False, 0),
    ('zeroDotD', (), IcePy._t_double, False, 0)
))
Base._ice_type = _M_Test._t_Base

_M_Test.Base = Base
del Base
_M_Test.Derived = None
class Derived(_M_Test.Base):
    def __init__(self, boolFalse=False, boolTrue=True, b=1, s=2, i=3, l=4, f=5.1, d=6.2, str="foo \\ \"bar\n \r\n\t\v\f\a\b?", noDefault='', zeroI=0, zeroL=0, zeroF=0, zeroDotF=0, zeroD=0, zeroDotD=0, c1=_M_Test.Color.red, c2=_M_Test.Color.green, c3=_M_Test.Color.blue, nc1=_M_Test.Nested.Color.red, nc2=_M_Test.Nested.Color.green, nc3=_M_Test.Nested.Color.blue):
        _M_Test.Base.__init__(self, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3

    def ice_id(self):
        return '::Test::Derived'

    @staticmethod
    def ice_staticId():
        return '::Test::Derived'

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_Derived)

    __repr__ = __str__

_M_Test._t_Derived = IcePy.defineValue('::Test::Derived', Derived, -1, (), False, _M_Test._t_Base, (
    ('c1', (), _M_Test._t_Color, False, 0),
    ('c2', (), _M_Test._t_Color, False, 0),
    ('c3', (), _M_Test._t_Color, False, 0),
    ('nc1', (), _M_Test.Nested._t_Color, False, 0),
    ('nc2', (), _M_Test.Nested._t_Color, False, 0),
    ('nc3', (), _M_Test.Nested._t_Color, False, 0)
))
Derived._ice_type = _M_Test._t_Derived

_M_Test.Derived = Derived
del Derived
_M_Test.BaseEx = None
class BaseEx(Ice.UserException):
    def __init__(self, boolFalse=False, boolTrue=True, b=1, s=2, i=3, l=4, f=5.1, d=6.2, str="foo \\ \"bar\n \r\n\t\v\f\a\b?", noDefault='', zeroI=0, zeroL=0, zeroF=0, zeroDotF=0, zeroD=0, zeroDotD=0):
        self.boolFalse = boolFalse
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.noDefault = noDefault
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD

    def __str__(self):
        return IcePy.stringifyException(self)

    __repr__ = __str__

    _ice_id = '::Test::BaseEx'

_M_Test._t_BaseEx = IcePy.defineException('::Test::BaseEx', BaseEx, (), None, (
    ('boolFalse', (), IcePy._t_bool, False, 0),
    ('boolTrue', (), IcePy._t_bool, False, 0),
    ('b', (), IcePy._t_byte, False, 0),
    ('s', (), IcePy._t_short, False, 0),
    ('i', (), IcePy._t_int, False, 0),
    ('l', (), IcePy._t_long, False, 0),
    ('f', (), IcePy._t_float, False, 0),
    ('d', (), IcePy._t_double, False, 0),
    ('str', (), IcePy._t_string, False, 0),
    ('noDefault', (), IcePy._t_string, False, 0),
    ('zeroI', (), IcePy._t_int, False, 0),
    ('zeroL', (), IcePy._t_long, False, 0),
    ('zeroF', (), IcePy._t_float, False, 0),
    ('zeroDotF', (), IcePy._t_float, False, 0),
    ('zeroD', (), IcePy._t_double, False, 0),
    ('zeroDotD', (), IcePy._t_double, False, 0)
))
BaseEx._ice_type = _M_Test._t_BaseEx

_M_Test.BaseEx = BaseEx
del BaseEx
_M_Test.DerivedEx = None
class DerivedEx(_M_Test.BaseEx):
    def __init__(self, boolFalse=False, boolTrue=True, b=1, s=2, i=3, l=4, f=5.1, d=6.2, str="foo \\ \"bar\n \r\n\t\v\f\a\b?", noDefault='', zeroI=0, zeroL=0, zeroF=0, zeroDotF=0, zeroD=0, zeroDotD=0, c1=_M_Test.ConstColor1, c2=_M_Test.ConstColor2, c3=_M_Test.ConstColor3, nc1=_M_Test.ConstNestedColor1, nc2=_M_Test.ConstNestedColor2, nc3=_M_Test.ConstNestedColor3):
        _M_Test.BaseEx.__init__(self, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3

    def __str__(self):
        return IcePy.stringifyException(self)

    __repr__ = __str__

    _ice_id = '::Test::DerivedEx'

_M_Test._t_DerivedEx = IcePy.defineException('::Test::DerivedEx', DerivedEx, (), _M_Test._t_BaseEx, (
    ('c1', (), _M_Test._t_Color, False, 0),
    ('c2', (), _M_Test._t_Color, False, 0),
    ('c3', (), _M_Test._t_Color, False, 0),
    ('nc1', (), _M_Test.Nested._t_Color, False, 0),
    ('nc2', (), _M_Test.Nested._t_Color, False, 0),
    ('nc3', (), _M_Test.Nested._t_Color, False, 0)
))
DerivedEx._ice_type = _M_Test._t_DerivedEx

_M_Test.DerivedEx = DerivedEx
del DerivedEx
_M_Test._t_ByteSeq = IcePy.defineSequence('::Test::ByteSeq', (), IcePy._t_byte)
_M_Test._t_IntSeq = IcePy.defineSequence('::Test::IntSeq', (), IcePy._t_int)
_M_Test._t_IntStringDict = IcePy.defineDictionary('::Test::IntStringDict', (), IcePy._t_int, IcePy._t_string)
_M_Test.InnerStruct = None
class InnerStruct(object):
    def __init__(self, a=0):
        self.a = a

    def __hash__(self):
        _h = 0
        _h = 5 * _h + _builtins.hash(self.a)
        return _h % 0x7fffffff

    def __compare(self, other):
        if other is None:
            return 1
        elif not isinstance(other, _M_Test.InnerStruct):
            return NotImplemented
        else:
            if self.a is None or other.a is None:
                if self.a != other.a:
                    return (-1 if self.a is None else 1)
            else:
                if self.a < other.a:
                    return -1
                elif self.a > other.a:
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
        return IcePy.stringify(self, _M_Test._t_InnerStruct)

    __repr__ = __str__

_M_Test._t_InnerStruct = IcePy.defineStruct('::Test::InnerStruct', InnerStruct, (), (('a', (), IcePy._t_int),))

_M_Test.InnerStruct = InnerStruct
del InnerStruct
_M_Test.StructNoDefaults = None
class StructNoDefaults(object):
    def __init__(self, bo=False, b=0, s=0, i=0, l=0, f=0.0, d=0.0, str='', c1=_M_Test.Color.red, bs=None, _is=None, st=None, dict=None):
        self.bo = bo
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.c1 = c1
        self.bs = bs
        self._is = _is
        if st is None:
            self.st = _M_Test.InnerStruct()
        else:
            self.st = st
        self.dict = dict

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_Test.StructNoDefaults):
            return NotImplemented
        else:
            if self.bo != other.bo:
                return False
            if self.b != other.b:
                return False
            if self.s != other.s:
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
            if self.c1 != other.c1:
                return False
            if self.bs != other.bs:
                return False
            if self._is != other._is:
                return False
            if self.st != other.st:
                return False
            if self.dict != other.dict:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_StructNoDefaults)

    __repr__ = __str__

_M_Test._t_StructNoDefaults = IcePy.defineStruct('::Test::StructNoDefaults', StructNoDefaults, (), (
    ('bo', (), IcePy._t_bool),
    ('b', (), IcePy._t_byte),
    ('s', (), IcePy._t_short),
    ('i', (), IcePy._t_int),
    ('l', (), IcePy._t_long),
    ('f', (), IcePy._t_float),
    ('d', (), IcePy._t_double),
    ('str', (), IcePy._t_string),
    ('c1', (), _M_Test._t_Color),
    ('bs', (), _M_Test._t_ByteSeq),
    ('_is', (), _M_Test._t_IntSeq),
    ('st', (), _M_Test._t_InnerStruct),
    ('dict', (), _M_Test._t_IntStringDict)
))

_M_Test.StructNoDefaults = StructNoDefaults
del StructNoDefaults
_M_Test.ExceptionNoDefaultsBase = None
class ExceptionNoDefaultsBase(Ice.UserException):
    def __init__(self, str='', c1=_M_Test.Color.red, bs=None):
        self.str = str
        self.c1 = c1
        self.bs = bs

    def __str__(self):
        return IcePy.stringifyException(self)

    __repr__ = __str__

    _ice_id = '::Test::ExceptionNoDefaultsBase'

_M_Test._t_ExceptionNoDefaultsBase = IcePy.defineException('::Test::ExceptionNoDefaultsBase', ExceptionNoDefaultsBase, (), None, (
    ('str', (), IcePy._t_string, False, 0),
    ('c1', (), _M_Test._t_Color, False, 0),
    ('bs', (), _M_Test._t_ByteSeq, False, 0)
))
ExceptionNoDefaultsBase._ice_type = _M_Test._t_ExceptionNoDefaultsBase

_M_Test.ExceptionNoDefaultsBase = ExceptionNoDefaultsBase
del ExceptionNoDefaultsBase
_M_Test.ExceptionNoDefaults = None
class ExceptionNoDefaults(_M_Test.ExceptionNoDefaultsBase):
    def __init__(self, str='', c1=_M_Test.Color.red, bs=None, st=None, dict=None):
        _M_Test.ExceptionNoDefaultsBase.__init__(self, str, c1, bs)
        if st is None:
            self.st = _M_Test.InnerStruct()
        else:
            self.st = st
        self.dict = dict

    def __str__(self):
        return IcePy.stringifyException(self)

    __repr__ = __str__

    _ice_id = '::Test::ExceptionNoDefaults'

_M_Test._t_ExceptionNoDefaults = IcePy.defineException('::Test::ExceptionNoDefaults', ExceptionNoDefaults, (), _M_Test._t_ExceptionNoDefaultsBase, (
    ('st', (), _M_Test._t_InnerStruct, False, 0),
    ('dict', (), _M_Test._t_IntStringDict, False, 0)
))
ExceptionNoDefaults._ice_type = _M_Test._t_ExceptionNoDefaults

_M_Test.ExceptionNoDefaults = ExceptionNoDefaults
del ExceptionNoDefaults
_M_Test.ClassNoDefaultsBase = None
class ClassNoDefaultsBase(Ice.Value):
    def __init__(self, str='', c1=_M_Test.Color.red, bs=None):
        self.str = str
        self.c1 = c1
        self.bs = bs

    def ice_id(self):
        return '::Test::ClassNoDefaultsBase'

    @staticmethod
    def ice_staticId():
        return '::Test::ClassNoDefaultsBase'

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_ClassNoDefaultsBase)

    __repr__ = __str__

_M_Test._t_ClassNoDefaultsBase = IcePy.defineValue('::Test::ClassNoDefaultsBase', ClassNoDefaultsBase, -1, (), False, None, (
    ('str', (), IcePy._t_string, False, 0),
    ('c1', (), _M_Test._t_Color, False, 0),
    ('bs', (), _M_Test._t_ByteSeq, False, 0)
))
ClassNoDefaultsBase._ice_type = _M_Test._t_ClassNoDefaultsBase

_M_Test.ClassNoDefaultsBase = ClassNoDefaultsBase
del ClassNoDefaultsBase
_M_Test.ClassNoDefaults = None
class ClassNoDefaults(_M_Test.ClassNoDefaultsBase):
    def __init__(self, str='', c1=_M_Test.Color.red, bs=None, st=None, dict=None):
        _M_Test.ClassNoDefaultsBase.__init__(self, str, c1, bs)
        if st is None:
            self.st = _M_Test.InnerStruct()
        else:
            self.st = st
        self.dict = dict

    def ice_id(self):
        return '::Test::ClassNoDefaults'

    @staticmethod
    def ice_staticId():
        return '::Test::ClassNoDefaults'

    def __str__(self):
        return IcePy.stringify(self, _M_Test._t_ClassNoDefaults)

    __repr__ = __str__

_M_Test._t_ClassNoDefaults = IcePy.defineValue('::Test::ClassNoDefaults', ClassNoDefaults, -1, (), False, _M_Test._t_ClassNoDefaultsBase, (
    ('st', (), _M_Test._t_InnerStruct, False, 0),
    ('dict', (), _M_Test._t_IntStringDict, False, 0)
))
ClassNoDefaults._ice_type = _M_Test._t_ClassNoDefaults

_M_Test.ClassNoDefaults = ClassNoDefaults
del ClassNoDefaults

# End of module Test
