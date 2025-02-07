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

if 'StructKey' not in _M_Test.__dict__:
    _M_Test.StructKey = None
    class StructKey(object):
        def __init__(self, value=0):
            self.value = value

        def __hash__(self):
            _h = 0
            _h = 5 * _h + _builtins.hash(self.value)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M_Test.StructKey):
                return NotImplemented
            else:
                if self.value is None or other.value is None:
                    if self.value != other.value:
                        return (-1 if self.value is None else 1)
                else:
                    if self.value < other.value:
                        return -1
                    elif self.value > other.value:
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
            return IcePy.stringify(self, _M_Test._t_StructKey)

        __repr__ = __str__

    _M_Test._t_StructKey = IcePy.defineStruct('::Test::StructKey', StructKey, (), (('value', (), IcePy._t_int),))

    _M_Test.StructKey = StructKey
    del StructKey

if 'ClassKey' not in _M_Test.__dict__:
    _M_Test._t_ClassKey = IcePy.declareValue('::Test::ClassKey')

if 'ClassKey' not in _M_Test.__dict__:
    _M_Test.ClassKey = None
    class ClassKey(Ice.Value):
        def __init__(self, value=0):
            self.value = value

        def ice_id(self):
            return '::Test::ClassKey'

        @staticmethod
        def ice_staticId():
            return '::Test::ClassKey'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_ClassKey)

        __repr__ = __str__

    _M_Test._t_ClassKey = IcePy.defineValue('::Test::ClassKey', ClassKey, -1, (), False, None, (('value', (), IcePy._t_int, False, 0),))
    ClassKey._ice_type = _M_Test._t_ClassKey

    _M_Test.ClassKey = ClassKey
    del ClassKey

# End of module Test
