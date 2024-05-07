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

import Ice, IcePy

# Start of module Test
_M_Test = Ice.openModule('Test')
__name__ = 'Test'

if 'SBase' not in _M_Test.__dict__:
    _M_Test.SBase = Ice.createTempClass()
    class SBase(Ice.Value):
        def __init__(self, sb=''):
            self.sb = sb

        def ice_id(self):
            return '::Test::SBase'

        @staticmethod
        def ice_staticId():
            return '::Test::SBase'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SBase)

        __repr__ = __str__

    _M_Test._t_SBase = IcePy.defineValue('::Test::SBase', SBase, -1, (), False, None, (('sb', (), IcePy._t_string, False, 0),))
    SBase._ice_type = _M_Test._t_SBase

    _M_Test.SBase = SBase
    del SBase

if 'SBSKnownDerived' not in _M_Test.__dict__:
    _M_Test.SBSKnownDerived = Ice.createTempClass()
    class SBSKnownDerived(_M_Test.SBase):
        def __init__(self, sb='', sbskd=''):
            _M_Test.SBase.__init__(self, sb)
            self.sbskd = sbskd

        def ice_id(self):
            return '::Test::SBSKnownDerived'

        @staticmethod
        def ice_staticId():
            return '::Test::SBSKnownDerived'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SBSKnownDerived)

        __repr__ = __str__

    _M_Test._t_SBSKnownDerived = IcePy.defineValue('::Test::SBSKnownDerived', SBSKnownDerived, -1, (), False, _M_Test._t_SBase, (('sbskd', (), IcePy._t_string, False, 0),))
    SBSKnownDerived._ice_type = _M_Test._t_SBSKnownDerived

    _M_Test.SBSKnownDerived = SBSKnownDerived
    del SBSKnownDerived

if 'B' not in _M_Test.__dict__:
    _M_Test.B = Ice.createTempClass()
    class B(Ice.Value):
        def __init__(self, sb='', pb=None):
            self.sb = sb
            self.pb = pb

        def ice_id(self):
            return '::Test::B'

        @staticmethod
        def ice_staticId():
            return '::Test::B'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_B)

        __repr__ = __str__

    _M_Test._t_B = IcePy.declareValue('::Test::B')

    _M_Test._t_B = IcePy.defineValue('::Test::B', B, -1, (), False, None, (
        ('sb', (), IcePy._t_string, False, 0),
        ('pb', (), _M_Test._t_B, False, 0)
    ))
    B._ice_type = _M_Test._t_B

    _M_Test.B = B
    del B

if 'D1' not in _M_Test.__dict__:
    _M_Test.D1 = Ice.createTempClass()
    class D1(_M_Test.B):
        def __init__(self, sb='', pb=None, sd1='', pd1=None):
            _M_Test.B.__init__(self, sb, pb)
            self.sd1 = sd1
            self.pd1 = pd1

        def ice_id(self):
            return '::Test::D1'

        @staticmethod
        def ice_staticId():
            return '::Test::D1'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_D1)

        __repr__ = __str__

    _M_Test._t_D1 = IcePy.declareValue('::Test::D1')

    _M_Test._t_D1 = IcePy.defineValue('::Test::D1', D1, -1, (), False, _M_Test._t_B, (
        ('sd1', (), IcePy._t_string, False, 0),
        ('pd1', (), _M_Test._t_B, False, 0)
    ))
    D1._ice_type = _M_Test._t_D1

    _M_Test.D1 = D1
    del D1

if '_t_BSeq' not in _M_Test.__dict__:
    _M_Test._t_BSeq = IcePy.defineSequence('::Test::BSeq', (), _M_Test._t_B)

if 'SS1' not in _M_Test.__dict__:
    _M_Test.SS1 = Ice.createTempClass()
    class SS1(Ice.Value):
        def __init__(self, s=None):
            self.s = s

        def ice_id(self):
            return '::Test::SS1'

        @staticmethod
        def ice_staticId():
            return '::Test::SS1'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SS1)

        __repr__ = __str__

    _M_Test._t_SS1 = IcePy.declareValue('::Test::SS1')

    _M_Test._t_SS1 = IcePy.defineValue('::Test::SS1', SS1, -1, (), False, None, (('s', (), _M_Test._t_BSeq, False, 0),))
    SS1._ice_type = _M_Test._t_SS1

    _M_Test.SS1 = SS1
    del SS1

if 'SS2' not in _M_Test.__dict__:
    _M_Test.SS2 = Ice.createTempClass()
    class SS2(Ice.Value):
        def __init__(self, s=None):
            self.s = s

        def ice_id(self):
            return '::Test::SS2'

        @staticmethod
        def ice_staticId():
            return '::Test::SS2'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SS2)

        __repr__ = __str__

    _M_Test._t_SS2 = IcePy.declareValue('::Test::SS2')

    _M_Test._t_SS2 = IcePy.defineValue('::Test::SS2', SS2, -1, (), False, None, (('s', (), _M_Test._t_BSeq, False, 0),))
    SS2._ice_type = _M_Test._t_SS2

    _M_Test.SS2 = SS2
    del SS2

if 'SS3' not in _M_Test.__dict__:
    _M_Test.SS3 = Ice.createTempClass()
    class SS3(object):
        def __init__(self, c1=None, c2=None):
            self.c1 = c1
            self.c2 = c2

        def __eq__(self, other):
            if other is None:
                return False
            elif not isinstance(other, _M_Test.SS3):
                return NotImplemented
            else:
                if self.c1 != other.c1:
                    return False
                if self.c2 != other.c2:
                    return False
                return True

        def __ne__(self, other):
            return not self.__eq__(other)

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_SS3)

        __repr__ = __str__

    _M_Test._t_SS3 = IcePy.defineStruct('::Test::SS3', SS3, (), (
        ('c1', (), _M_Test._t_SS1),
        ('c2', (), _M_Test._t_SS2)
    ))

    _M_Test.SS3 = SS3
    del SS3

if '_t_BDict' not in _M_Test.__dict__:
    _M_Test._t_BDict = IcePy.defineDictionary('::Test::BDict', (), IcePy._t_int, _M_Test._t_B)

if 'BaseException' not in _M_Test.__dict__:
    _M_Test.BaseException = Ice.createTempClass()
    class BaseException(Ice.UserException):
        def __init__(self, sbe='', pb=None):
            self.sbe = sbe
            self.pb = pb

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::BaseException'

    _M_Test._t_BaseException = IcePy.defineException('::Test::BaseException', BaseException, (), None, (
        ('sbe', (), IcePy._t_string, False, 0),
        ('pb', (), _M_Test._t_B, False, 0)
    ))
    BaseException._ice_type = _M_Test._t_BaseException

    _M_Test.BaseException = BaseException
    del BaseException

if 'DerivedException' not in _M_Test.__dict__:
    _M_Test.DerivedException = Ice.createTempClass()
    class DerivedException(_M_Test.BaseException):
        def __init__(self, sbe='', pb=None, sde='', pd1=None):
            _M_Test.BaseException.__init__(self, sbe, pb)
            self.sde = sde
            self.pd1 = pd1

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::DerivedException'

    _M_Test._t_DerivedException = IcePy.defineException('::Test::DerivedException', DerivedException, (), _M_Test._t_BaseException, (
        ('sde', (), IcePy._t_string, False, 0),
        ('pd1', (), _M_Test._t_D1, False, 0)
    ))
    DerivedException._ice_type = _M_Test._t_DerivedException

    _M_Test.DerivedException = DerivedException
    del DerivedException

if 'Forward' not in _M_Test.__dict__:
    _M_Test._t_Forward = IcePy.declareValue('::Test::Forward')

if 'PBase' not in _M_Test.__dict__:
    _M_Test.PBase = Ice.createTempClass()
    class PBase(Ice.Value):
        def __init__(self, pi=0):
            self.pi = pi

        def ice_id(self):
            return '::Test::PBase'

        @staticmethod
        def ice_staticId():
            return '::Test::PBase'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PBase)

        __repr__ = __str__

    _M_Test._t_PBase = IcePy.defineValue('::Test::PBase', PBase, -1, (), False, None, (('pi', (), IcePy._t_int, False, 0),))
    PBase._ice_type = _M_Test._t_PBase

    _M_Test.PBase = PBase
    del PBase

if '_t_PBaseSeq' not in _M_Test.__dict__:
    _M_Test._t_PBaseSeq = IcePy.defineSequence('::Test::PBaseSeq', (), _M_Test._t_PBase)

if 'Preserved' not in _M_Test.__dict__:
    _M_Test.Preserved = Ice.createTempClass()
    class Preserved(_M_Test.PBase):
        def __init__(self, pi=0, ps=''):
            _M_Test.PBase.__init__(self, pi)
            self.ps = ps

        def ice_id(self):
            return '::Test::Preserved'

        @staticmethod
        def ice_staticId():
            return '::Test::Preserved'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_Preserved)

        __repr__ = __str__

    _M_Test._t_Preserved = IcePy.defineValue('::Test::Preserved', Preserved, -1, (), False, _M_Test._t_PBase, (('ps', (), IcePy._t_string, False, 0),))
    Preserved._ice_type = _M_Test._t_Preserved

    _M_Test.Preserved = Preserved
    del Preserved

if 'PDerived' not in _M_Test.__dict__:
    _M_Test.PDerived = Ice.createTempClass()
    class PDerived(_M_Test.Preserved):
        def __init__(self, pi=0, ps='', pb=None):
            _M_Test.Preserved.__init__(self, pi, ps)
            self.pb = pb

        def ice_id(self):
            return '::Test::PDerived'

        @staticmethod
        def ice_staticId():
            return '::Test::PDerived'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PDerived)

        __repr__ = __str__

    _M_Test._t_PDerived = IcePy.declareValue('::Test::PDerived')

    _M_Test._t_PDerived = IcePy.defineValue('::Test::PDerived', PDerived, -1, (), False, _M_Test._t_Preserved, (('pb', (), _M_Test._t_PBase, False, 0),))
    PDerived._ice_type = _M_Test._t_PDerived

    _M_Test.PDerived = PDerived
    del PDerived

if 'CompactPDerived' not in _M_Test.__dict__:
    _M_Test.CompactPDerived = Ice.createTempClass()
    class CompactPDerived(_M_Test.Preserved):
        def __init__(self, pi=0, ps='', pb=None):
            _M_Test.Preserved.__init__(self, pi, ps)
            self.pb = pb

        def ice_id(self):
            return '::Test::CompactPDerived'

        @staticmethod
        def ice_staticId():
            return '::Test::CompactPDerived'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_CompactPDerived)

        __repr__ = __str__

    _M_Test._t_CompactPDerived = IcePy.declareValue('::Test::CompactPDerived')

    _M_Test._t_CompactPDerived = IcePy.defineValue('::Test::CompactPDerived', CompactPDerived, 56, (), False, _M_Test._t_Preserved, (('pb', (), _M_Test._t_PBase, False, 0),))
    CompactPDerived._ice_type = _M_Test._t_CompactPDerived

    _M_Test.CompactPDerived = CompactPDerived
    del CompactPDerived

if 'PNode' not in _M_Test.__dict__:
    _M_Test.PNode = Ice.createTempClass()
    class PNode(Ice.Value):
        def __init__(self, next=None):
            self.next = next

        def ice_id(self):
            return '::Test::PNode'

        @staticmethod
        def ice_staticId():
            return '::Test::PNode'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_PNode)

        __repr__ = __str__

    _M_Test._t_PNode = IcePy.declareValue('::Test::PNode')

    _M_Test._t_PNode = IcePy.defineValue('::Test::PNode', PNode, -1, (), False, None, (('next', (), _M_Test._t_PNode, False, 0),))
    PNode._ice_type = _M_Test._t_PNode

    _M_Test.PNode = PNode
    del PNode

if 'PreservedException' not in _M_Test.__dict__:
    _M_Test.PreservedException = Ice.createTempClass()
    class PreservedException(Ice.UserException):
        def __init__(self):
            pass

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::PreservedException'

    _M_Test._t_PreservedException = IcePy.defineException('::Test::PreservedException', PreservedException, (), None, ())
    PreservedException._ice_type = _M_Test._t_PreservedException

    _M_Test.PreservedException = PreservedException
    del PreservedException

_M_Test._t_TestIntf = IcePy.defineValue('::Test::TestIntf', Ice.Value, -1, (), True, None, ())

if 'TestIntfPrx' not in _M_Test.__dict__:
    _M_Test.TestIntfPrx = Ice.createTempClass()
    class TestIntfPrx(Ice.ObjectPrx):

        def SBaseAsObject(self, context=None):
            return _M_Test.TestIntf._op_SBaseAsObject.invoke(self, ((), context))

        def SBaseAsObjectAsync(self, context=None):
            return _M_Test.TestIntf._op_SBaseAsObject.invokeAsync(self, ((), context))

        def SBaseAsSBase(self, context=None):
            return _M_Test.TestIntf._op_SBaseAsSBase.invoke(self, ((), context))

        def SBaseAsSBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_SBaseAsSBase.invokeAsync(self, ((), context))

        def SBSKnownDerivedAsSBase(self, context=None):
            return _M_Test.TestIntf._op_SBSKnownDerivedAsSBase.invoke(self, ((), context))

        def SBSKnownDerivedAsSBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_SBSKnownDerivedAsSBase.invokeAsync(self, ((), context))

        def SBSKnownDerivedAsSBSKnownDerived(self, context=None):
            return _M_Test.TestIntf._op_SBSKnownDerivedAsSBSKnownDerived.invoke(self, ((), context))

        def SBSKnownDerivedAsSBSKnownDerivedAsync(self, context=None):
            return _M_Test.TestIntf._op_SBSKnownDerivedAsSBSKnownDerived.invokeAsync(self, ((), context))

        def SBSUnknownDerivedAsSBase(self, context=None):
            return _M_Test.TestIntf._op_SBSUnknownDerivedAsSBase.invoke(self, ((), context))

        def SBSUnknownDerivedAsSBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_SBSUnknownDerivedAsSBase.invokeAsync(self, ((), context))

        def SBSUnknownDerivedAsSBaseCompact(self, context=None):
            return _M_Test.TestIntf._op_SBSUnknownDerivedAsSBaseCompact.invoke(self, ((), context))

        def SBSUnknownDerivedAsSBaseCompactAsync(self, context=None):
            return _M_Test.TestIntf._op_SBSUnknownDerivedAsSBaseCompact.invokeAsync(self, ((), context))

        def SUnknownAsObject(self, context=None):
            return _M_Test.TestIntf._op_SUnknownAsObject.invoke(self, ((), context))

        def SUnknownAsObjectAsync(self, context=None):
            return _M_Test.TestIntf._op_SUnknownAsObject.invokeAsync(self, ((), context))

        def checkSUnknown(self, o, context=None):
            return _M_Test.TestIntf._op_checkSUnknown.invoke(self, ((o, ), context))

        def checkSUnknownAsync(self, o, context=None):
            return _M_Test.TestIntf._op_checkSUnknown.invokeAsync(self, ((o, ), context))

        def oneElementCycle(self, context=None):
            return _M_Test.TestIntf._op_oneElementCycle.invoke(self, ((), context))

        def oneElementCycleAsync(self, context=None):
            return _M_Test.TestIntf._op_oneElementCycle.invokeAsync(self, ((), context))

        def twoElementCycle(self, context=None):
            return _M_Test.TestIntf._op_twoElementCycle.invoke(self, ((), context))

        def twoElementCycleAsync(self, context=None):
            return _M_Test.TestIntf._op_twoElementCycle.invokeAsync(self, ((), context))

        def D1AsB(self, context=None):
            return _M_Test.TestIntf._op_D1AsB.invoke(self, ((), context))

        def D1AsBAsync(self, context=None):
            return _M_Test.TestIntf._op_D1AsB.invokeAsync(self, ((), context))

        def D1AsD1(self, context=None):
            return _M_Test.TestIntf._op_D1AsD1.invoke(self, ((), context))

        def D1AsD1Async(self, context=None):
            return _M_Test.TestIntf._op_D1AsD1.invokeAsync(self, ((), context))

        def D2AsB(self, context=None):
            return _M_Test.TestIntf._op_D2AsB.invoke(self, ((), context))

        def D2AsBAsync(self, context=None):
            return _M_Test.TestIntf._op_D2AsB.invokeAsync(self, ((), context))

        def paramTest1(self, context=None):
            return _M_Test.TestIntf._op_paramTest1.invoke(self, ((), context))

        def paramTest1Async(self, context=None):
            return _M_Test.TestIntf._op_paramTest1.invokeAsync(self, ((), context))

        def paramTest2(self, context=None):
            return _M_Test.TestIntf._op_paramTest2.invoke(self, ((), context))

        def paramTest2Async(self, context=None):
            return _M_Test.TestIntf._op_paramTest2.invokeAsync(self, ((), context))

        def paramTest3(self, context=None):
            return _M_Test.TestIntf._op_paramTest3.invoke(self, ((), context))

        def paramTest3Async(self, context=None):
            return _M_Test.TestIntf._op_paramTest3.invokeAsync(self, ((), context))

        def paramTest4(self, context=None):
            return _M_Test.TestIntf._op_paramTest4.invoke(self, ((), context))

        def paramTest4Async(self, context=None):
            return _M_Test.TestIntf._op_paramTest4.invokeAsync(self, ((), context))

        def returnTest1(self, context=None):
            return _M_Test.TestIntf._op_returnTest1.invoke(self, ((), context))

        def returnTest1Async(self, context=None):
            return _M_Test.TestIntf._op_returnTest1.invokeAsync(self, ((), context))

        def returnTest2(self, context=None):
            return _M_Test.TestIntf._op_returnTest2.invoke(self, ((), context))

        def returnTest2Async(self, context=None):
            return _M_Test.TestIntf._op_returnTest2.invokeAsync(self, ((), context))

        def returnTest3(self, p1, p2, context=None):
            return _M_Test.TestIntf._op_returnTest3.invoke(self, ((p1, p2), context))

        def returnTest3Async(self, p1, p2, context=None):
            return _M_Test.TestIntf._op_returnTest3.invokeAsync(self, ((p1, p2), context))

        def sequenceTest(self, p1, p2, context=None):
            return _M_Test.TestIntf._op_sequenceTest.invoke(self, ((p1, p2), context))

        def sequenceTestAsync(self, p1, p2, context=None):
            return _M_Test.TestIntf._op_sequenceTest.invokeAsync(self, ((p1, p2), context))

        def dictionaryTest(self, bin, context=None):
            return _M_Test.TestIntf._op_dictionaryTest.invoke(self, ((bin, ), context))

        def dictionaryTestAsync(self, bin, context=None):
            return _M_Test.TestIntf._op_dictionaryTest.invokeAsync(self, ((bin, ), context))

        def exchangePBase(self, pb, context=None):
            return _M_Test.TestIntf._op_exchangePBase.invoke(self, ((pb, ), context))

        def exchangePBaseAsync(self, pb, context=None):
            return _M_Test.TestIntf._op_exchangePBase.invokeAsync(self, ((pb, ), context))

        def PBSUnknownAsPreserved(self, context=None):
            return _M_Test.TestIntf._op_PBSUnknownAsPreserved.invoke(self, ((), context))

        def PBSUnknownAsPreservedAsync(self, context=None):
            return _M_Test.TestIntf._op_PBSUnknownAsPreserved.invokeAsync(self, ((), context))

        def checkPBSUnknown(self, p, context=None):
            return _M_Test.TestIntf._op_checkPBSUnknown.invoke(self, ((p, ), context))

        def checkPBSUnknownAsync(self, p, context=None):
            return _M_Test.TestIntf._op_checkPBSUnknown.invokeAsync(self, ((p, ), context))

        def PBSUnknownAsPreservedWithGraph(self, context=None):
            return _M_Test.TestIntf._op_PBSUnknownAsPreservedWithGraph.invoke(self, ((), context))

        def PBSUnknownAsPreservedWithGraphAsync(self, context=None):
            return _M_Test.TestIntf._op_PBSUnknownAsPreservedWithGraph.invokeAsync(self, ((), context))

        def checkPBSUnknownWithGraph(self, p, context=None):
            return _M_Test.TestIntf._op_checkPBSUnknownWithGraph.invoke(self, ((p, ), context))

        def checkPBSUnknownWithGraphAsync(self, p, context=None):
            return _M_Test.TestIntf._op_checkPBSUnknownWithGraph.invokeAsync(self, ((p, ), context))

        def PBSUnknown2AsPreservedWithGraph(self, context=None):
            return _M_Test.TestIntf._op_PBSUnknown2AsPreservedWithGraph.invoke(self, ((), context))

        def PBSUnknown2AsPreservedWithGraphAsync(self, context=None):
            return _M_Test.TestIntf._op_PBSUnknown2AsPreservedWithGraph.invokeAsync(self, ((), context))

        def checkPBSUnknown2WithGraph(self, p, context=None):
            return _M_Test.TestIntf._op_checkPBSUnknown2WithGraph.invoke(self, ((p, ), context))

        def checkPBSUnknown2WithGraphAsync(self, p, context=None):
            return _M_Test.TestIntf._op_checkPBSUnknown2WithGraph.invokeAsync(self, ((p, ), context))

        def exchangePNode(self, pn, context=None):
            return _M_Test.TestIntf._op_exchangePNode.invoke(self, ((pn, ), context))

        def exchangePNodeAsync(self, pn, context=None):
            return _M_Test.TestIntf._op_exchangePNode.invokeAsync(self, ((pn, ), context))

        def throwBaseAsBase(self, context=None):
            return _M_Test.TestIntf._op_throwBaseAsBase.invoke(self, ((), context))

        def throwBaseAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_throwBaseAsBase.invokeAsync(self, ((), context))

        def throwDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_throwDerivedAsBase.invoke(self, ((), context))

        def throwDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_throwDerivedAsBase.invokeAsync(self, ((), context))

        def throwDerivedAsDerived(self, context=None):
            return _M_Test.TestIntf._op_throwDerivedAsDerived.invoke(self, ((), context))

        def throwDerivedAsDerivedAsync(self, context=None):
            return _M_Test.TestIntf._op_throwDerivedAsDerived.invokeAsync(self, ((), context))

        def throwUnknownDerivedAsBase(self, context=None):
            return _M_Test.TestIntf._op_throwUnknownDerivedAsBase.invoke(self, ((), context))

        def throwUnknownDerivedAsBaseAsync(self, context=None):
            return _M_Test.TestIntf._op_throwUnknownDerivedAsBase.invokeAsync(self, ((), context))

        def throwPreservedException(self, context=None):
            return _M_Test.TestIntf._op_throwPreservedException.invoke(self, ((), context))

        def throwPreservedExceptionAsync(self, context=None):
            return _M_Test.TestIntf._op_throwPreservedException.invokeAsync(self, ((), context))

        """
        Use of forward-declared class to verify that code is generated correctly.
        Arguments:
        context -- The request context for the invocation.
        Returns:
        f -- 
        """
        def useForward(self, context=None):
            return _M_Test.TestIntf._op_useForward.invoke(self, ((), context))

        """
        Use of forward-declared class to verify that code is generated correctly.
        Arguments:
        context -- The request context for the invocation.
        Returns: A future object for the invocation.
        """
        def useForwardAsync(self, context=None):
            return _M_Test.TestIntf._op_useForward.invokeAsync(self, ((), context))

        def shutdown(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invoke(self, ((), context))

        def shutdownAsync(self, context=None):
            return _M_Test.TestIntf._op_shutdown.invokeAsync(self, ((), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Test.TestIntfPrx.ice_checkedCast(proxy, '::Test::TestIntf', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Test.TestIntfPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Test::TestIntf'
    _M_Test._t_TestIntfPrx = IcePy.defineProxy('::Test::TestIntf', TestIntfPrx)

    _M_Test.TestIntfPrx = TestIntfPrx
    del TestIntfPrx

    _M_Test.TestIntf = Ice.createTempClass()
    class TestIntf(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Test::TestIntf')

        def ice_id(self, current=None):
            return '::Test::TestIntf'

        @staticmethod
        def ice_staticId():
            return '::Test::TestIntf'

        def SBaseAsObject(self, current=None):
            raise NotImplementedError("servant method 'SBaseAsObject' not implemented")

        def SBaseAsSBase(self, current=None):
            raise NotImplementedError("servant method 'SBaseAsSBase' not implemented")

        def SBSKnownDerivedAsSBase(self, current=None):
            raise NotImplementedError("servant method 'SBSKnownDerivedAsSBase' not implemented")

        def SBSKnownDerivedAsSBSKnownDerived(self, current=None):
            raise NotImplementedError("servant method 'SBSKnownDerivedAsSBSKnownDerived' not implemented")

        def SBSUnknownDerivedAsSBase(self, current=None):
            raise NotImplementedError("servant method 'SBSUnknownDerivedAsSBase' not implemented")

        def SBSUnknownDerivedAsSBaseCompact(self, current=None):
            raise NotImplementedError("servant method 'SBSUnknownDerivedAsSBaseCompact' not implemented")

        def SUnknownAsObject(self, current=None):
            raise NotImplementedError("servant method 'SUnknownAsObject' not implemented")

        def checkSUnknown(self, o, current=None):
            raise NotImplementedError("servant method 'checkSUnknown' not implemented")

        def oneElementCycle(self, current=None):
            raise NotImplementedError("servant method 'oneElementCycle' not implemented")

        def twoElementCycle(self, current=None):
            raise NotImplementedError("servant method 'twoElementCycle' not implemented")

        def D1AsB(self, current=None):
            raise NotImplementedError("servant method 'D1AsB' not implemented")

        def D1AsD1(self, current=None):
            raise NotImplementedError("servant method 'D1AsD1' not implemented")

        def D2AsB(self, current=None):
            raise NotImplementedError("servant method 'D2AsB' not implemented")

        def paramTest1(self, current=None):
            raise NotImplementedError("servant method 'paramTest1' not implemented")

        def paramTest2(self, current=None):
            raise NotImplementedError("servant method 'paramTest2' not implemented")

        def paramTest3(self, current=None):
            raise NotImplementedError("servant method 'paramTest3' not implemented")

        def paramTest4(self, current=None):
            raise NotImplementedError("servant method 'paramTest4' not implemented")

        def returnTest1(self, current=None):
            raise NotImplementedError("servant method 'returnTest1' not implemented")

        def returnTest2(self, current=None):
            raise NotImplementedError("servant method 'returnTest2' not implemented")

        def returnTest3(self, p1, p2, current=None):
            raise NotImplementedError("servant method 'returnTest3' not implemented")

        def sequenceTest(self, p1, p2, current=None):
            raise NotImplementedError("servant method 'sequenceTest' not implemented")

        def dictionaryTest(self, bin, current=None):
            raise NotImplementedError("servant method 'dictionaryTest' not implemented")

        def exchangePBase(self, pb, current=None):
            raise NotImplementedError("servant method 'exchangePBase' not implemented")

        def PBSUnknownAsPreserved(self, current=None):
            raise NotImplementedError("servant method 'PBSUnknownAsPreserved' not implemented")

        def checkPBSUnknown(self, p, current=None):
            raise NotImplementedError("servant method 'checkPBSUnknown' not implemented")

        def PBSUnknownAsPreservedWithGraph(self, current=None):
            raise NotImplementedError("servant method 'PBSUnknownAsPreservedWithGraph' not implemented")

        def checkPBSUnknownWithGraph(self, p, current=None):
            raise NotImplementedError("servant method 'checkPBSUnknownWithGraph' not implemented")

        def PBSUnknown2AsPreservedWithGraph(self, current=None):
            raise NotImplementedError("servant method 'PBSUnknown2AsPreservedWithGraph' not implemented")

        def checkPBSUnknown2WithGraph(self, p, current=None):
            raise NotImplementedError("servant method 'checkPBSUnknown2WithGraph' not implemented")

        def exchangePNode(self, pn, current=None):
            raise NotImplementedError("servant method 'exchangePNode' not implemented")

        def throwBaseAsBase(self, current=None):
            raise NotImplementedError("servant method 'throwBaseAsBase' not implemented")

        def throwDerivedAsBase(self, current=None):
            raise NotImplementedError("servant method 'throwDerivedAsBase' not implemented")

        def throwDerivedAsDerived(self, current=None):
            raise NotImplementedError("servant method 'throwDerivedAsDerived' not implemented")

        def throwUnknownDerivedAsBase(self, current=None):
            raise NotImplementedError("servant method 'throwUnknownDerivedAsBase' not implemented")

        def throwPreservedException(self, current=None):
            raise NotImplementedError("servant method 'throwPreservedException' not implemented")

        def useForward(self, current=None):
            """
            Use of forward-declared class to verify that code is generated correctly.
            Arguments:
            current -- The Current object for the invocation.
            Returns: A future object for the invocation.
            """
            raise NotImplementedError("servant method 'useForward' not implemented")

        def shutdown(self, current=None):
            raise NotImplementedError("servant method 'shutdown' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_TestIntfDisp)

        __repr__ = __str__

    _M_Test._t_TestIntfDisp = IcePy.defineClass('::Test::TestIntf', TestIntf, (), None, ())
    TestIntf._ice_type = _M_Test._t_TestIntfDisp

    TestIntf._op_SBaseAsObject = IcePy.Operation('SBaseAsObject', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), IcePy._t_Value, False, 0), ())
    TestIntf._op_SBaseAsSBase = IcePy.Operation('SBaseAsSBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_SBase, False, 0), ())
    TestIntf._op_SBSKnownDerivedAsSBase = IcePy.Operation('SBSKnownDerivedAsSBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_SBase, False, 0), ())
    TestIntf._op_SBSKnownDerivedAsSBSKnownDerived = IcePy.Operation('SBSKnownDerivedAsSBSKnownDerived', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_SBSKnownDerived, False, 0), ())
    TestIntf._op_SBSUnknownDerivedAsSBase = IcePy.Operation('SBSUnknownDerivedAsSBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_SBase, False, 0), ())
    TestIntf._op_SBSUnknownDerivedAsSBaseCompact = IcePy.Operation('SBSUnknownDerivedAsSBaseCompact', Ice.OperationMode.Normal, False, Ice.FormatType.CompactFormat, (), (), (), ((), _M_Test._t_SBase, False, 0), ())
    TestIntf._op_SUnknownAsObject = IcePy.Operation('SUnknownAsObject', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), IcePy._t_Value, False, 0), ())
    TestIntf._op_checkSUnknown = IcePy.Operation('checkSUnknown', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), IcePy._t_Value, False, 0),), (), None, ())
    TestIntf._op_oneElementCycle = IcePy.Operation('oneElementCycle', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_twoElementCycle = IcePy.Operation('twoElementCycle', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_D1AsB = IcePy.Operation('D1AsB', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_D1AsD1 = IcePy.Operation('D1AsD1', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_D1, False, 0), ())
    TestIntf._op_D2AsB = IcePy.Operation('D2AsB', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_paramTest1 = IcePy.Operation('paramTest1', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (((), _M_Test._t_B, False, 0), ((), _M_Test._t_B, False, 0)), None, ())
    TestIntf._op_paramTest2 = IcePy.Operation('paramTest2', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (((), _M_Test._t_B, False, 0), ((), _M_Test._t_B, False, 0)), None, ())
    TestIntf._op_paramTest3 = IcePy.Operation('paramTest3', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (((), _M_Test._t_B, False, 0), ((), _M_Test._t_B, False, 0)), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_paramTest4 = IcePy.Operation('paramTest4', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (((), _M_Test._t_B, False, 0),), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_returnTest1 = IcePy.Operation('returnTest1', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (((), _M_Test._t_B, False, 0), ((), _M_Test._t_B, False, 0)), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_returnTest2 = IcePy.Operation('returnTest2', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (((), _M_Test._t_B, False, 0), ((), _M_Test._t_B, False, 0)), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_returnTest3 = IcePy.Operation('returnTest3', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_B, False, 0), ((), _M_Test._t_B, False, 0)), (), ((), _M_Test._t_B, False, 0), ())
    TestIntf._op_sequenceTest = IcePy.Operation('sequenceTest', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_SS1, False, 0), ((), _M_Test._t_SS2, False, 0)), (), ((), _M_Test._t_SS3, False, 0), ())
    TestIntf._op_dictionaryTest = IcePy.Operation('dictionaryTest', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_BDict, False, 0),), (((), _M_Test._t_BDict, False, 0),), ((), _M_Test._t_BDict, False, 0), ())
    TestIntf._op_exchangePBase = IcePy.Operation('exchangePBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_PBase, False, 0),), (), ((), _M_Test._t_PBase, False, 0), ())
    TestIntf._op_PBSUnknownAsPreserved = IcePy.Operation('PBSUnknownAsPreserved', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_Preserved, False, 0), ())
    TestIntf._op_checkPBSUnknown = IcePy.Operation('checkPBSUnknown', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_Preserved, False, 0),), (), None, ())
    TestIntf._op_PBSUnknownAsPreservedWithGraph = IcePy.Operation('PBSUnknownAsPreservedWithGraph', Ice.OperationMode.Normal, True, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_Preserved, False, 0), ())
    TestIntf._op_checkPBSUnknownWithGraph = IcePy.Operation('checkPBSUnknownWithGraph', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_Preserved, False, 0),), (), None, ())
    TestIntf._op_PBSUnknown2AsPreservedWithGraph = IcePy.Operation('PBSUnknown2AsPreservedWithGraph', Ice.OperationMode.Normal, True, Ice.FormatType.SlicedFormat, (), (), (), ((), _M_Test._t_Preserved, False, 0), ())
    TestIntf._op_checkPBSUnknown2WithGraph = IcePy.Operation('checkPBSUnknown2WithGraph', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_Preserved, False, 0),), (), None, ())
    TestIntf._op_exchangePNode = IcePy.Operation('exchangePNode', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (((), _M_Test._t_PNode, False, 0),), (), ((), _M_Test._t_PNode, False, 0), ())
    TestIntf._op_throwBaseAsBase = IcePy.Operation('throwBaseAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_BaseException,))
    TestIntf._op_throwDerivedAsBase = IcePy.Operation('throwDerivedAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_BaseException,))
    TestIntf._op_throwDerivedAsDerived = IcePy.Operation('throwDerivedAsDerived', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_DerivedException,))
    TestIntf._op_throwUnknownDerivedAsBase = IcePy.Operation('throwUnknownDerivedAsBase', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_BaseException,))
    TestIntf._op_throwPreservedException = IcePy.Operation('throwPreservedException', Ice.OperationMode.Normal, True, Ice.FormatType.SlicedFormat, (), (), (), None, (_M_Test._t_PreservedException,))
    TestIntf._op_useForward = IcePy.Operation('useForward', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (((), _M_Test._t_Forward, False, 0),), None, ())
    TestIntf._op_shutdown = IcePy.Operation('shutdown', Ice.OperationMode.Normal, False, Ice.FormatType.SlicedFormat, (), (), (), None, ())

    _M_Test.TestIntf = TestIntf
    del TestIntf

if 'Hidden' not in _M_Test.__dict__:
    _M_Test.Hidden = Ice.createTempClass()
    class Hidden(Ice.Value):
        def __init__(self, f=None):
            self.f = f

        def ice_id(self):
            return '::Test::Hidden'

        @staticmethod
        def ice_staticId():
            return '::Test::Hidden'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_Hidden)

        __repr__ = __str__

    _M_Test._t_Hidden = IcePy.declareValue('::Test::Hidden')

    _M_Test._t_Hidden = IcePy.defineValue('::Test::Hidden', Hidden, -1, (), False, None, (('f', (), _M_Test._t_Forward, False, 0),))
    Hidden._ice_type = _M_Test._t_Hidden

    _M_Test.Hidden = Hidden
    del Hidden

if 'Forward' not in _M_Test.__dict__:
    _M_Test.Forward = Ice.createTempClass()
    class Forward(Ice.Value):
        def __init__(self, h=None):
            self.h = h

        def ice_id(self):
            return '::Test::Forward'

        @staticmethod
        def ice_staticId():
            return '::Test::Forward'

        def __str__(self):
            return IcePy.stringify(self, _M_Test._t_Forward)

        __repr__ = __str__

    _M_Test._t_Forward = IcePy.defineValue('::Test::Forward', Forward, -1, (), False, None, (('h', (), _M_Test._t_Hidden, False, 0),))
    Forward._ice_type = _M_Test._t_Forward

    _M_Test.Forward = Forward
    del Forward

# End of module Test
