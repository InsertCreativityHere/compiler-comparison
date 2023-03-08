# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `LocalTest.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy

# Start of module LocalTest
_M_LocalTest = Ice.openModule('LocalTest')
__name__ = 'LocalTest'

if 'C1' not in _M_LocalTest.__dict__:
    _M_LocalTest.C1 = Ice.createTempClass()
    class C1(Ice.Value):
        def __init__(self, i=0):
            self.i = i

        def ice_id(self):
            return '::LocalTest::C1'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::C1'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_C1)

        __repr__ = __str__

    _M_LocalTest._t_C1 = IcePy.defineValue('::LocalTest::C1', C1, -1, (), False, False, None, (('i', (), IcePy._t_int, False, 0),))
    C1._ice_type = _M_LocalTest._t_C1

    _M_LocalTest.C1 = C1
    del C1

if 'S1' not in _M_LocalTest.__dict__:
    _M_LocalTest.S1 = Ice.createTempClass()
    class S1(object):
        def __init__(self, c1=None):
            self.c1 = c1

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S1):
                return NotImplemented
            else:
                if self.c1 != other.c1:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S1)

        __repr__ = __str__

    _M_LocalTest._t_S1 = IcePy.defineStruct('::LocalTest::S1', S1, (), (('c1', (), _M_LocalTest._t_C1),))

    _M_LocalTest.S1 = S1
    del S1

if '_t_C1Seq' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_C1Seq = IcePy.defineSequence('::LocalTest::C1Seq', (), _M_LocalTest._t_C1)

if '_t_S1Seq' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_S1Seq = IcePy.defineSequence('::LocalTest::S1Seq', (), _M_LocalTest._t_S1)

if '_t_C1Dict' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_C1Dict = IcePy.defineDictionary('::LocalTest::C1Dict', (), IcePy._t_int, _M_LocalTest._t_C1)

if '_t_S1Dict' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_S1Dict = IcePy.defineDictionary('::LocalTest::S1Dict', (), IcePy._t_int, _M_LocalTest._t_S1)

if '_t_C1SeqSeq' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_C1SeqSeq = IcePy.defineSequence('::LocalTest::C1SeqSeq', (), _M_LocalTest._t_C1Seq)

if '_t_S1SeqSeq' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_S1SeqSeq = IcePy.defineSequence('::LocalTest::S1SeqSeq', (), _M_LocalTest._t_S1Seq)

if 'S2' not in _M_LocalTest.__dict__:
    _M_LocalTest.S2 = Ice.createTempClass()
    class S2(object):
        def __init__(self, s1=Ice._struct_marker):
            if s1 is Ice._struct_marker:
                self.s1 = _M_LocalTest.S1()
            else:
                self.s1 = s1

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S2):
                return NotImplemented
            else:
                if self.s1 != other.s1:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S2)

        __repr__ = __str__

    _M_LocalTest._t_S2 = IcePy.defineStruct('::LocalTest::S2', S2, (), (('s1', (), _M_LocalTest._t_S1),))

    _M_LocalTest.S2 = S2
    del S2

if 'S3' not in _M_LocalTest.__dict__:
    _M_LocalTest.S3 = Ice.createTempClass()
    class S3(object):
        def __init__(self, c1seq=None):
            self.c1seq = c1seq

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S3):
                return NotImplemented
            else:
                if self.c1seq != other.c1seq:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S3)

        __repr__ = __str__

    _M_LocalTest._t_S3 = IcePy.defineStruct('::LocalTest::S3', S3, (), (('c1seq', (), _M_LocalTest._t_C1Seq),))

    _M_LocalTest.S3 = S3
    del S3

if 'S4' not in _M_LocalTest.__dict__:
    _M_LocalTest.S4 = Ice.createTempClass()
    class S4(object):
        def __init__(self, s1seq=None):
            self.s1seq = s1seq

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S4):
                return NotImplemented
            else:
                if self.s1seq != other.s1seq:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S4)

        __repr__ = __str__

    _M_LocalTest._t_S4 = IcePy.defineStruct('::LocalTest::S4', S4, (), (('s1seq', (), _M_LocalTest._t_S1Seq),))

    _M_LocalTest.S4 = S4
    del S4

if 'S5' not in _M_LocalTest.__dict__:
    _M_LocalTest.S5 = Ice.createTempClass()
    class S5(object):
        def __init__(self, c1dict=None):
            self.c1dict = c1dict

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S5):
                return NotImplemented
            else:
                if self.c1dict != other.c1dict:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S5)

        __repr__ = __str__

    _M_LocalTest._t_S5 = IcePy.defineStruct('::LocalTest::S5', S5, (), (('c1dict', (), _M_LocalTest._t_C1Dict),))

    _M_LocalTest.S5 = S5
    del S5

if 'S6' not in _M_LocalTest.__dict__:
    _M_LocalTest.S6 = Ice.createTempClass()
    class S6(object):
        def __init__(self, s1dict=None):
            self.s1dict = s1dict

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S6):
                return NotImplemented
            else:
                if self.s1dict != other.s1dict:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S6)

        __repr__ = __str__

    _M_LocalTest._t_S6 = IcePy.defineStruct('::LocalTest::S6', S6, (), (('s1dict', (), _M_LocalTest._t_S1Dict),))

    _M_LocalTest.S6 = S6
    del S6

if 'S7' not in _M_LocalTest.__dict__:
    _M_LocalTest.S7 = Ice.createTempClass()
    class S7(object):
        def __init__(self, c1seqseq=None):
            self.c1seqseq = c1seqseq

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S7):
                return NotImplemented
            else:
                if self.c1seqseq != other.c1seqseq:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S7)

        __repr__ = __str__

    _M_LocalTest._t_S7 = IcePy.defineStruct('::LocalTest::S7', S7, (), (('c1seqseq', (), _M_LocalTest._t_C1SeqSeq),))

    _M_LocalTest.S7 = S7
    del S7

if 'S8' not in _M_LocalTest.__dict__:
    _M_LocalTest.S8 = Ice.createTempClass()
    class S8(object):
        def __init__(self, s1seqseq=None):
            self.s1seqseq = s1seqseq

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_LocalTest.S8):
                return NotImplemented
            else:
                if self.s1seqseq != other.s1seqseq:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_S8)

        __repr__ = __str__

    _M_LocalTest._t_S8 = IcePy.defineStruct('::LocalTest::S8', S8, (), (('s1seqseq', (), _M_LocalTest._t_S1SeqSeq),))

    _M_LocalTest.S8 = S8
    del S8

if 'CB1' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB1 = Ice.createTempClass()
    class CB1(Ice.Value):
        def __init__(self, s1=Ice._struct_marker):
            if s1 is Ice._struct_marker:
                self.s1 = _M_LocalTest.S1()
            else:
                self.s1 = s1

        def ice_id(self):
            return '::LocalTest::CB1'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB1'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB1)

        __repr__ = __str__

    _M_LocalTest._t_CB1 = IcePy.declareValue('::LocalTest::CB1')

    _M_LocalTest._t_CB1 = IcePy.defineValue('::LocalTest::CB1', CB1, -1, (), False, False, None, (('s1', (), _M_LocalTest._t_S1, False, 0),))
    CB1._ice_type = _M_LocalTest._t_CB1

    _M_LocalTest.CB1 = CB1
    del CB1

if 'CB2' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB2 = Ice.createTempClass()
    class CB2(Ice.Value):
        def __init__(self, c1seq=None):
            self.c1seq = c1seq

        def ice_id(self):
            return '::LocalTest::CB2'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB2'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB2)

        __repr__ = __str__

    _M_LocalTest._t_CB2 = IcePy.declareValue('::LocalTest::CB2')

    _M_LocalTest._t_CB2 = IcePy.defineValue('::LocalTest::CB2', CB2, -1, (), False, False, None, (('c1seq', (), _M_LocalTest._t_C1Seq, False, 0),))
    CB2._ice_type = _M_LocalTest._t_CB2

    _M_LocalTest.CB2 = CB2
    del CB2

if 'CB3' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB3 = Ice.createTempClass()
    class CB3(Ice.Value):
        def __init__(self, s1seq=None):
            self.s1seq = s1seq

        def ice_id(self):
            return '::LocalTest::CB3'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB3'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB3)

        __repr__ = __str__

    _M_LocalTest._t_CB3 = IcePy.declareValue('::LocalTest::CB3')

    _M_LocalTest._t_CB3 = IcePy.defineValue('::LocalTest::CB3', CB3, -1, (), False, False, None, (('s1seq', (), _M_LocalTest._t_S1Seq, False, 0),))
    CB3._ice_type = _M_LocalTest._t_CB3

    _M_LocalTest.CB3 = CB3
    del CB3

if 'CB4' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB4 = Ice.createTempClass()
    class CB4(Ice.Value):
        def __init__(self, c1dict=None):
            self.c1dict = c1dict

        def ice_id(self):
            return '::LocalTest::CB4'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB4'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB4)

        __repr__ = __str__

    _M_LocalTest._t_CB4 = IcePy.declareValue('::LocalTest::CB4')

    _M_LocalTest._t_CB4 = IcePy.defineValue('::LocalTest::CB4', CB4, -1, (), False, False, None, (('c1dict', (), _M_LocalTest._t_C1Dict, False, 0),))
    CB4._ice_type = _M_LocalTest._t_CB4

    _M_LocalTest.CB4 = CB4
    del CB4

if 'CB5' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB5 = Ice.createTempClass()
    class CB5(Ice.Value):
        def __init__(self, s1dict=None):
            self.s1dict = s1dict

        def ice_id(self):
            return '::LocalTest::CB5'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB5'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB5)

        __repr__ = __str__

    _M_LocalTest._t_CB5 = IcePy.declareValue('::LocalTest::CB5')

    _M_LocalTest._t_CB5 = IcePy.defineValue('::LocalTest::CB5', CB5, -1, (), False, False, None, (('s1dict', (), _M_LocalTest._t_S1Dict, False, 0),))
    CB5._ice_type = _M_LocalTest._t_CB5

    _M_LocalTest.CB5 = CB5
    del CB5

if 'CB6' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB6 = Ice.createTempClass()
    class CB6(Ice.Value):
        def __init__(self, c1seqseq=None):
            self.c1seqseq = c1seqseq

        def ice_id(self):
            return '::LocalTest::CB6'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB6'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB6)

        __repr__ = __str__

    _M_LocalTest._t_CB6 = IcePy.declareValue('::LocalTest::CB6')

    _M_LocalTest._t_CB6 = IcePy.defineValue('::LocalTest::CB6', CB6, -1, (), False, False, None, (('c1seqseq', (), _M_LocalTest._t_C1SeqSeq, False, 0),))
    CB6._ice_type = _M_LocalTest._t_CB6

    _M_LocalTest.CB6 = CB6
    del CB6

if 'CB7' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB7 = Ice.createTempClass()
    class CB7(Ice.Value):
        def __init__(self, s1seqseq=None):
            self.s1seqseq = s1seqseq

        def ice_id(self):
            return '::LocalTest::CB7'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB7'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB7)

        __repr__ = __str__

    _M_LocalTest._t_CB7 = IcePy.declareValue('::LocalTest::CB7')

    _M_LocalTest._t_CB7 = IcePy.defineValue('::LocalTest::CB7', CB7, -1, (), False, False, None, (('s1seqseq', (), _M_LocalTest._t_S1SeqSeq, False, 0),))
    CB7._ice_type = _M_LocalTest._t_CB7

    _M_LocalTest.CB7 = CB7
    del CB7

if 'CB8' not in _M_LocalTest.__dict__:
    _M_LocalTest.CB8 = Ice.createTempClass()
    class CB8(Ice.Value):
        def __init__(self, s1=Ice._struct_marker, c1seq=None, s1dict=None):
            if s1 is Ice._struct_marker:
                self.s1 = _M_LocalTest.S1()
            else:
                self.s1 = s1
            self.c1seq = c1seq
            self.s1dict = s1dict

        def ice_id(self):
            return '::LocalTest::CB8'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::CB8'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_CB8)

        __repr__ = __str__

    _M_LocalTest._t_CB8 = IcePy.declareValue('::LocalTest::CB8')

    _M_LocalTest._t_CB8 = IcePy.defineValue('::LocalTest::CB8', CB8, -1, (), False, False, None, (
        ('s1', (), _M_LocalTest._t_S1, False, 0),
        ('c1seq', (), _M_LocalTest._t_C1Seq, False, 0),
        ('s1dict', (), _M_LocalTest._t_S1Dict, False, 0)
    ))
    CB8._ice_type = _M_LocalTest._t_CB8

    _M_LocalTest.CB8 = CB8
    del CB8

if 'StructKey' not in _M_LocalTest.__dict__:
    _M_LocalTest.StructKey = Ice.createTempClass()
    class StructKey(object):
        def __init__(self, i=0, j=0):
            self.i = i
            self.j = j

        def __hash__(self):
            _h = 0
            _h = 5 * _h + Ice.getHash(self.i)
            _h = 5 * _h + Ice.getHash(self.j)
            return _h % 0x7fffffff

        def __compare(self, other):
            if other is None:
                return 1
            elif not isinstance(other, _M_LocalTest.StructKey):
                return NotImplemented
            else:
                if self.i is None or other.i is None:
                    if self.i != other.i:
                        return (-1 if self.i is None else 1)
                else:
                    if self.i < other.i:
                        return -1
                    elif self.i > other.i:
                        return 1
                if self.j is None or other.j is None:
                    if self.j != other.j:
                        return (-1 if self.j is None else 1)
                else:
                    if self.j < other.j:
                        return -1
                    elif self.j > other.j:
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
            return IcePy.stringify(self, _M_LocalTest._t_StructKey)

        __repr__ = __str__

    _M_LocalTest._t_StructKey = IcePy.defineStruct('::LocalTest::StructKey', StructKey, (), (
        ('i', (), IcePy._t_int),
        ('j', (), IcePy._t_int)
    ))

    _M_LocalTest.StructKey = StructKey
    del StructKey

if '_t_StructDict1' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_StructDict1 = IcePy.defineDictionary('::LocalTest::StructDict1', (), _M_LocalTest._t_StructKey, _M_LocalTest._t_C1)

if '_t_StructDict2' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_StructDict2 = IcePy.defineDictionary('::LocalTest::StructDict2', (), _M_LocalTest._t_StructKey, _M_LocalTest._t_S1)

if '_t_C1DictDict' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_C1DictDict = IcePy.defineDictionary('::LocalTest::C1DictDict', (), IcePy._t_int, _M_LocalTest._t_C1Dict)

if '_t_S1DictDict' not in _M_LocalTest.__dict__:
    _M_LocalTest._t_S1DictDict = IcePy.defineDictionary('::LocalTest::S1DictDict', (), IcePy._t_int, _M_LocalTest._t_S1Dict)

if 'Opt' not in _M_LocalTest.__dict__:
    _M_LocalTest.Opt = Ice.createTempClass()
    class Opt(Ice.Value):
        def __init__(self, s1=Ice.Unset, c1seq=Ice.Unset, s1dict=Ice.Unset):
            self.s1 = s1
            self.c1seq = c1seq
            self.s1dict = s1dict

        def ice_id(self):
            return '::LocalTest::Opt'

        @staticmethod
        def ice_staticId():
            return '::LocalTest::Opt'

        def __str__(self):
            return IcePy.stringify(self, _M_LocalTest._t_Opt)

        __repr__ = __str__

    _M_LocalTest._t_Opt = IcePy.declareValue('::LocalTest::Opt')

    _M_LocalTest._t_Opt = IcePy.defineValue('::LocalTest::Opt', Opt, -1, (), False, False, None, (
        ('s1', (), _M_LocalTest._t_S1, True, 1),
        ('c1seq', (), _M_LocalTest._t_C1Seq, True, 2),
        ('s1dict', (), _M_LocalTest._t_S1Dict, True, 3)
    ))
    Opt._ice_type = _M_LocalTest._t_Opt

    _M_LocalTest.Opt = Opt
    del Opt

# End of module LocalTest
