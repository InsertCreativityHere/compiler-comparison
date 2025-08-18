# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.FormatType import FormatType

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Ice.Value_forward import _Ice_Value_t

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.slicing.objects.Test.BDict import _generated_test_Ice_slicing_objects_Test_BDict_t

from generated.test.Ice.slicing.objects.Test.B_forward import _generated_test_Ice_slicing_objects_Test_B_t

from generated.test.Ice.slicing.objects.Test.BaseException import _generated_test_Ice_slicing_objects_Test_BaseException_t

from generated.test.Ice.slicing.objects.Test.D1_forward import _generated_test_Ice_slicing_objects_Test_D1_t

from generated.test.Ice.slicing.objects.Test.DerivedException import _generated_test_Ice_slicing_objects_Test_DerivedException_t

from generated.test.Ice.slicing.objects.Test.Forward_forward import _generated_test_Ice_slicing_objects_Test_Forward_t

from generated.test.Ice.slicing.objects.Test.PBase_forward import _generated_test_Ice_slicing_objects_Test_PBase_t

from generated.test.Ice.slicing.objects.Test.PNode_forward import _generated_test_Ice_slicing_objects_Test_PNode_t

from generated.test.Ice.slicing.objects.Test.Preserved_forward import _generated_test_Ice_slicing_objects_Test_Preserved_t

from generated.test.Ice.slicing.objects.Test.SBSKnownDerived_forward import _generated_test_Ice_slicing_objects_Test_SBSKnownDerived_t

from generated.test.Ice.slicing.objects.Test.SBase_forward import _generated_test_Ice_slicing_objects_Test_SBase_t

from generated.test.Ice.slicing.objects.Test.SS1_forward import _generated_test_Ice_slicing_objects_Test_SS1_t

from generated.test.Ice.slicing.objects.Test.SS2_forward import _generated_test_Ice_slicing_objects_Test_SS2_t

from generated.test.Ice.slicing.objects.Test.SS3 import _generated_test_Ice_slicing_objects_Test_SS3_t

from generated.test.Ice.slicing.objects.Test.TestIntf_forward import _generated_test_Ice_slicing_objects_Test_TestIntfPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Value import Value
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence
    from generated.test.Ice.slicing.objects.Test.B import B
    from generated.test.Ice.slicing.objects.Test.D1 import D1
    from generated.test.Ice.slicing.objects.Test.Forward import Forward
    from generated.test.Ice.slicing.objects.Test.PBase import PBase
    from generated.test.Ice.slicing.objects.Test.PNode import PNode
    from generated.test.Ice.slicing.objects.Test.Preserved import Preserved
    from generated.test.Ice.slicing.objects.Test.SBSKnownDerived import SBSKnownDerived
    from generated.test.Ice.slicing.objects.Test.SBase import SBase
    from generated.test.Ice.slicing.objects.Test.SS1 import SS1
    from generated.test.Ice.slicing.objects.Test.SS2 import SS2
    from generated.test.Ice.slicing.objects.Test.SS3 import SS3


class TestIntfPrx(ObjectPrx):

    def SBaseAsObject(self, context: dict[str, str] | None = None) -> Value | None:
        return TestIntf._op_SBaseAsObject.invoke(self, ((), context))

    def SBaseAsObjectAsync(self, context: dict[str, str] | None = None) -> Awaitable[Value | None]:
        return TestIntf._op_SBaseAsObject.invokeAsync(self, ((), context))

    def SBaseAsSBase(self, context: dict[str, str] | None = None) -> SBase | None:
        return TestIntf._op_SBaseAsSBase.invoke(self, ((), context))

    def SBaseAsSBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[SBase | None]:
        return TestIntf._op_SBaseAsSBase.invokeAsync(self, ((), context))

    def SBSKnownDerivedAsSBase(self, context: dict[str, str] | None = None) -> SBase | None:
        return TestIntf._op_SBSKnownDerivedAsSBase.invoke(self, ((), context))

    def SBSKnownDerivedAsSBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[SBase | None]:
        return TestIntf._op_SBSKnownDerivedAsSBase.invokeAsync(self, ((), context))

    def SBSKnownDerivedAsSBSKnownDerived(self, context: dict[str, str] | None = None) -> SBSKnownDerived | None:
        return TestIntf._op_SBSKnownDerivedAsSBSKnownDerived.invoke(self, ((), context))

    def SBSKnownDerivedAsSBSKnownDerivedAsync(self, context: dict[str, str] | None = None) -> Awaitable[SBSKnownDerived | None]:
        return TestIntf._op_SBSKnownDerivedAsSBSKnownDerived.invokeAsync(self, ((), context))

    def SBSUnknownDerivedAsSBase(self, context: dict[str, str] | None = None) -> SBase | None:
        return TestIntf._op_SBSUnknownDerivedAsSBase.invoke(self, ((), context))

    def SBSUnknownDerivedAsSBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[SBase | None]:
        return TestIntf._op_SBSUnknownDerivedAsSBase.invokeAsync(self, ((), context))

    def SBSUnknownDerivedAsSBaseCompact(self, context: dict[str, str] | None = None) -> SBase | None:
        return TestIntf._op_SBSUnknownDerivedAsSBaseCompact.invoke(self, ((), context))

    def SBSUnknownDerivedAsSBaseCompactAsync(self, context: dict[str, str] | None = None) -> Awaitable[SBase | None]:
        return TestIntf._op_SBSUnknownDerivedAsSBaseCompact.invokeAsync(self, ((), context))

    def SUnknownAsObject(self, context: dict[str, str] | None = None) -> Value | None:
        return TestIntf._op_SUnknownAsObject.invoke(self, ((), context))

    def SUnknownAsObjectAsync(self, context: dict[str, str] | None = None) -> Awaitable[Value | None]:
        return TestIntf._op_SUnknownAsObject.invokeAsync(self, ((), context))

    def checkSUnknown(self, o: Value | None, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_checkSUnknown.invoke(self, ((o, ), context))

    def checkSUnknownAsync(self, o: Value | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_checkSUnknown.invokeAsync(self, ((o, ), context))

    def oneElementCycle(self, context: dict[str, str] | None = None) -> B | None:
        return TestIntf._op_oneElementCycle.invoke(self, ((), context))

    def oneElementCycleAsync(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return TestIntf._op_oneElementCycle.invokeAsync(self, ((), context))

    def twoElementCycle(self, context: dict[str, str] | None = None) -> B | None:
        return TestIntf._op_twoElementCycle.invoke(self, ((), context))

    def twoElementCycleAsync(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return TestIntf._op_twoElementCycle.invokeAsync(self, ((), context))

    def D1AsB(self, context: dict[str, str] | None = None) -> B | None:
        return TestIntf._op_D1AsB.invoke(self, ((), context))

    def D1AsBAsync(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return TestIntf._op_D1AsB.invokeAsync(self, ((), context))

    def D1AsD1(self, context: dict[str, str] | None = None) -> D1 | None:
        return TestIntf._op_D1AsD1.invoke(self, ((), context))

    def D1AsD1Async(self, context: dict[str, str] | None = None) -> Awaitable[D1 | None]:
        return TestIntf._op_D1AsD1.invokeAsync(self, ((), context))

    def D2AsB(self, context: dict[str, str] | None = None) -> B | None:
        return TestIntf._op_D2AsB.invoke(self, ((), context))

    def D2AsBAsync(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return TestIntf._op_D2AsB.invokeAsync(self, ((), context))

    def paramTest1(self, context: dict[str, str] | None = None) -> tuple[B | None, B | None]:
        return TestIntf._op_paramTest1.invoke(self, ((), context))

    def paramTest1Async(self, context: dict[str, str] | None = None) -> Awaitable[tuple[B | None, B | None]]:
        return TestIntf._op_paramTest1.invokeAsync(self, ((), context))

    def paramTest2(self, context: dict[str, str] | None = None) -> tuple[B | None, B | None]:
        return TestIntf._op_paramTest2.invoke(self, ((), context))

    def paramTest2Async(self, context: dict[str, str] | None = None) -> Awaitable[tuple[B | None, B | None]]:
        return TestIntf._op_paramTest2.invokeAsync(self, ((), context))

    def paramTest3(self, context: dict[str, str] | None = None) -> tuple[B | None, B | None, B | None]:
        return TestIntf._op_paramTest3.invoke(self, ((), context))

    def paramTest3Async(self, context: dict[str, str] | None = None) -> Awaitable[tuple[B | None, B | None, B | None]]:
        return TestIntf._op_paramTest3.invokeAsync(self, ((), context))

    def paramTest4(self, context: dict[str, str] | None = None) -> tuple[B | None, B | None]:
        return TestIntf._op_paramTest4.invoke(self, ((), context))

    def paramTest4Async(self, context: dict[str, str] | None = None) -> Awaitable[tuple[B | None, B | None]]:
        return TestIntf._op_paramTest4.invokeAsync(self, ((), context))

    def returnTest1(self, context: dict[str, str] | None = None) -> tuple[B | None, B | None, B | None]:
        return TestIntf._op_returnTest1.invoke(self, ((), context))

    def returnTest1Async(self, context: dict[str, str] | None = None) -> Awaitable[tuple[B | None, B | None, B | None]]:
        return TestIntf._op_returnTest1.invokeAsync(self, ((), context))

    def returnTest2(self, context: dict[str, str] | None = None) -> tuple[B | None, B | None, B | None]:
        return TestIntf._op_returnTest2.invoke(self, ((), context))

    def returnTest2Async(self, context: dict[str, str] | None = None) -> Awaitable[tuple[B | None, B | None, B | None]]:
        return TestIntf._op_returnTest2.invokeAsync(self, ((), context))

    def returnTest3(self, p1: B | None, p2: B | None, context: dict[str, str] | None = None) -> B | None:
        return TestIntf._op_returnTest3.invoke(self, ((p1, p2), context))

    def returnTest3Async(self, p1: B | None, p2: B | None, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return TestIntf._op_returnTest3.invokeAsync(self, ((p1, p2), context))

    def sequenceTest(self, p1: SS1 | None, p2: SS2 | None, context: dict[str, str] | None = None) -> SS3:
        return TestIntf._op_sequenceTest.invoke(self, ((p1, p2), context))

    def sequenceTestAsync(self, p1: SS1 | None, p2: SS2 | None, context: dict[str, str] | None = None) -> Awaitable[SS3]:
        return TestIntf._op_sequenceTest.invokeAsync(self, ((p1, p2), context))

    def dictionaryTest(self, bin: Mapping[int, B | None], context: dict[str, str] | None = None) -> tuple[dict[int, B | None], dict[int, B | None]]:
        return TestIntf._op_dictionaryTest.invoke(self, ((bin, ), context))

    def dictionaryTestAsync(self, bin: Mapping[int, B | None], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, B | None], dict[int, B | None]]]:
        return TestIntf._op_dictionaryTest.invokeAsync(self, ((bin, ), context))

    def exchangePBase(self, pb: PBase | None, context: dict[str, str] | None = None) -> PBase | None:
        return TestIntf._op_exchangePBase.invoke(self, ((pb, ), context))

    def exchangePBaseAsync(self, pb: PBase | None, context: dict[str, str] | None = None) -> Awaitable[PBase | None]:
        return TestIntf._op_exchangePBase.invokeAsync(self, ((pb, ), context))

    def PBSUnknownAsPreserved(self, context: dict[str, str] | None = None) -> Preserved | None:
        return TestIntf._op_PBSUnknownAsPreserved.invoke(self, ((), context))

    def PBSUnknownAsPreservedAsync(self, context: dict[str, str] | None = None) -> Awaitable[Preserved | None]:
        return TestIntf._op_PBSUnknownAsPreserved.invokeAsync(self, ((), context))

    def checkPBSUnknown(self, p: Preserved | None, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_checkPBSUnknown.invoke(self, ((p, ), context))

    def checkPBSUnknownAsync(self, p: Preserved | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_checkPBSUnknown.invokeAsync(self, ((p, ), context))

    def PBSUnknownAsPreservedWithGraph(self, context: dict[str, str] | None = None) -> Preserved | None:
        return TestIntf._op_PBSUnknownAsPreservedWithGraph.invoke(self, ((), context))

    def PBSUnknownAsPreservedWithGraphAsync(self, context: dict[str, str] | None = None) -> Awaitable[Preserved | None]:
        return TestIntf._op_PBSUnknownAsPreservedWithGraph.invokeAsync(self, ((), context))

    def checkPBSUnknownWithGraph(self, p: Preserved | None, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_checkPBSUnknownWithGraph.invoke(self, ((p, ), context))

    def checkPBSUnknownWithGraphAsync(self, p: Preserved | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_checkPBSUnknownWithGraph.invokeAsync(self, ((p, ), context))

    def PBSUnknown2AsPreservedWithGraph(self, context: dict[str, str] | None = None) -> Preserved | None:
        return TestIntf._op_PBSUnknown2AsPreservedWithGraph.invoke(self, ((), context))

    def PBSUnknown2AsPreservedWithGraphAsync(self, context: dict[str, str] | None = None) -> Awaitable[Preserved | None]:
        return TestIntf._op_PBSUnknown2AsPreservedWithGraph.invokeAsync(self, ((), context))

    def checkPBSUnknown2WithGraph(self, p: Preserved | None, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_checkPBSUnknown2WithGraph.invoke(self, ((p, ), context))

    def checkPBSUnknown2WithGraphAsync(self, p: Preserved | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_checkPBSUnknown2WithGraph.invokeAsync(self, ((p, ), context))

    def exchangePNode(self, pn: PNode | None, context: dict[str, str] | None = None) -> PNode | None:
        return TestIntf._op_exchangePNode.invoke(self, ((pn, ), context))

    def exchangePNodeAsync(self, pn: PNode | None, context: dict[str, str] | None = None) -> Awaitable[PNode | None]:
        return TestIntf._op_exchangePNode.invokeAsync(self, ((pn, ), context))

    def throwBaseAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwBaseAsBase.invoke(self, ((), context))

    def throwBaseAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwBaseAsBase.invokeAsync(self, ((), context))

    def throwDerivedAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwDerivedAsBase.invoke(self, ((), context))

    def throwDerivedAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwDerivedAsBase.invokeAsync(self, ((), context))

    def throwDerivedAsDerived(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwDerivedAsDerived.invoke(self, ((), context))

    def throwDerivedAsDerivedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwDerivedAsDerived.invokeAsync(self, ((), context))

    def throwUnknownDerivedAsBase(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_throwUnknownDerivedAsBase.invoke(self, ((), context))

    def throwUnknownDerivedAsBaseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_throwUnknownDerivedAsBase.invokeAsync(self, ((), context))

    def useForward(self, context: dict[str, str] | None = None) -> Forward | None:
        return TestIntf._op_useForward.invoke(self, ((), context))

    def useForwardAsync(self, context: dict[str, str] | None = None) -> Awaitable[Forward | None]:
        return TestIntf._op_useForward.invokeAsync(self, ((), context))

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return TestIntf._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return TestIntf._op_shutdown.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> TestIntfPrx | None:
        return checkedCast(TestIntfPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[TestIntfPrx | None ]:
        return checkedCastAsync(TestIntfPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> TestIntfPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> TestIntfPrx | None:
        return uncheckedCast(TestIntfPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

IcePy.defineProxy("::Test::TestIntf", TestIntfPrx)

class TestIntf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::TestIntf", )
    _op_SBaseAsObject: IcePy.Operation
    _op_SBaseAsSBase: IcePy.Operation
    _op_SBSKnownDerivedAsSBase: IcePy.Operation
    _op_SBSKnownDerivedAsSBSKnownDerived: IcePy.Operation
    _op_SBSUnknownDerivedAsSBase: IcePy.Operation
    _op_SBSUnknownDerivedAsSBaseCompact: IcePy.Operation
    _op_SUnknownAsObject: IcePy.Operation
    _op_checkSUnknown: IcePy.Operation
    _op_oneElementCycle: IcePy.Operation
    _op_twoElementCycle: IcePy.Operation
    _op_D1AsB: IcePy.Operation
    _op_D1AsD1: IcePy.Operation
    _op_D2AsB: IcePy.Operation
    _op_paramTest1: IcePy.Operation
    _op_paramTest2: IcePy.Operation
    _op_paramTest3: IcePy.Operation
    _op_paramTest4: IcePy.Operation
    _op_returnTest1: IcePy.Operation
    _op_returnTest2: IcePy.Operation
    _op_returnTest3: IcePy.Operation
    _op_sequenceTest: IcePy.Operation
    _op_dictionaryTest: IcePy.Operation
    _op_exchangePBase: IcePy.Operation
    _op_PBSUnknownAsPreserved: IcePy.Operation
    _op_checkPBSUnknown: IcePy.Operation
    _op_PBSUnknownAsPreservedWithGraph: IcePy.Operation
    _op_checkPBSUnknownWithGraph: IcePy.Operation
    _op_PBSUnknown2AsPreservedWithGraph: IcePy.Operation
    _op_checkPBSUnknown2WithGraph: IcePy.Operation
    _op_exchangePNode: IcePy.Operation
    _op_throwBaseAsBase: IcePy.Operation
    _op_throwDerivedAsBase: IcePy.Operation
    _op_throwDerivedAsDerived: IcePy.Operation
    _op_throwUnknownDerivedAsBase: IcePy.Operation
    _op_useForward: IcePy.Operation
    _op_shutdown: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def SBaseAsObject(self, current: Current) -> Value | None | Awaitable[Value | None]:
        pass

    @abstractmethod
    def SBaseAsSBase(self, current: Current) -> SBase | None | Awaitable[SBase | None]:
        pass

    @abstractmethod
    def SBSKnownDerivedAsSBase(self, current: Current) -> SBase | None | Awaitable[SBase | None]:
        pass

    @abstractmethod
    def SBSKnownDerivedAsSBSKnownDerived(self, current: Current) -> SBSKnownDerived | None | Awaitable[SBSKnownDerived | None]:
        pass

    @abstractmethod
    def SBSUnknownDerivedAsSBase(self, current: Current) -> SBase | None | Awaitable[SBase | None]:
        pass

    @abstractmethod
    def SBSUnknownDerivedAsSBaseCompact(self, current: Current) -> SBase | None | Awaitable[SBase | None]:
        pass

    @abstractmethod
    def SUnknownAsObject(self, current: Current) -> Value | None | Awaitable[Value | None]:
        pass

    @abstractmethod
    def checkSUnknown(self, o: Value | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def oneElementCycle(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def twoElementCycle(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def D1AsB(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def D1AsD1(self, current: Current) -> D1 | None | Awaitable[D1 | None]:
        pass

    @abstractmethod
    def D2AsB(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def paramTest1(self, current: Current) -> tuple[B | None, B | None] | Awaitable[tuple[B | None, B | None]]:
        pass

    @abstractmethod
    def paramTest2(self, current: Current) -> tuple[B | None, B | None] | Awaitable[tuple[B | None, B | None]]:
        pass

    @abstractmethod
    def paramTest3(self, current: Current) -> tuple[B | None, B | None, B | None] | Awaitable[tuple[B | None, B | None, B | None]]:
        pass

    @abstractmethod
    def paramTest4(self, current: Current) -> tuple[B | None, B | None] | Awaitable[tuple[B | None, B | None]]:
        pass

    @abstractmethod
    def returnTest1(self, current: Current) -> tuple[B | None, B | None, B | None] | Awaitable[tuple[B | None, B | None, B | None]]:
        pass

    @abstractmethod
    def returnTest2(self, current: Current) -> tuple[B | None, B | None, B | None] | Awaitable[tuple[B | None, B | None, B | None]]:
        pass

    @abstractmethod
    def returnTest3(self, p1: B | None, p2: B | None, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def sequenceTest(self, p1: SS1 | None, p2: SS2 | None, current: Current) -> SS3 | Awaitable[SS3]:
        pass

    @abstractmethod
    def dictionaryTest(self, bin: dict[int, B | None], current: Current) -> tuple[Mapping[int, B | None], Mapping[int, B | None]] | Awaitable[tuple[Mapping[int, B | None], Mapping[int, B | None]]]:
        pass

    @abstractmethod
    def exchangePBase(self, pb: PBase | None, current: Current) -> PBase | None | Awaitable[PBase | None]:
        pass

    @abstractmethod
    def PBSUnknownAsPreserved(self, current: Current) -> Preserved | None | Awaitable[Preserved | None]:
        pass

    @abstractmethod
    def checkPBSUnknown(self, p: Preserved | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def PBSUnknownAsPreservedWithGraph(self, current: Current) -> Preserved | None | Awaitable[Preserved | None]:
        pass

    @abstractmethod
    def checkPBSUnknownWithGraph(self, p: Preserved | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def PBSUnknown2AsPreservedWithGraph(self, current: Current) -> Preserved | None | Awaitable[Preserved | None]:
        pass

    @abstractmethod
    def checkPBSUnknown2WithGraph(self, p: Preserved | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def exchangePNode(self, pn: PNode | None, current: Current) -> PNode | None | Awaitable[PNode | None]:
        pass

    @abstractmethod
    def throwBaseAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwDerivedAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwDerivedAsDerived(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwUnknownDerivedAsBase(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def useForward(self, current: Current) -> Forward | None | Awaitable[Forward | None]:
        pass

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

TestIntf._op_SBaseAsObject = IcePy.Operation(
    "SBaseAsObject",
    "SBaseAsObject",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _Ice_Value_t, False, 0),
    ())

TestIntf._op_SBaseAsSBase = IcePy.Operation(
    "SBaseAsSBase",
    "SBaseAsSBase",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_SBase_t, False, 0),
    ())

TestIntf._op_SBSKnownDerivedAsSBase = IcePy.Operation(
    "SBSKnownDerivedAsSBase",
    "SBSKnownDerivedAsSBase",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_SBase_t, False, 0),
    ())

TestIntf._op_SBSKnownDerivedAsSBSKnownDerived = IcePy.Operation(
    "SBSKnownDerivedAsSBSKnownDerived",
    "SBSKnownDerivedAsSBSKnownDerived",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_SBSKnownDerived_t, False, 0),
    ())

TestIntf._op_SBSUnknownDerivedAsSBase = IcePy.Operation(
    "SBSUnknownDerivedAsSBase",
    "SBSUnknownDerivedAsSBase",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_SBase_t, False, 0),
    ())

TestIntf._op_SBSUnknownDerivedAsSBaseCompact = IcePy.Operation(
    "SBSUnknownDerivedAsSBaseCompact",
    "SBSUnknownDerivedAsSBaseCompact",
    OperationMode.Normal,
    FormatType.CompactFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_SBase_t, False, 0),
    ())

TestIntf._op_SUnknownAsObject = IcePy.Operation(
    "SUnknownAsObject",
    "SUnknownAsObject",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _Ice_Value_t, False, 0),
    ())

TestIntf._op_checkSUnknown = IcePy.Operation(
    "checkSUnknown",
    "checkSUnknown",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _Ice_Value_t, False, 0),),
    (),
    None,
    ())

TestIntf._op_oneElementCycle = IcePy.Operation(
    "oneElementCycle",
    "oneElementCycle",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_twoElementCycle = IcePy.Operation(
    "twoElementCycle",
    "twoElementCycle",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_D1AsB = IcePy.Operation(
    "D1AsB",
    "D1AsB",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_D1AsD1 = IcePy.Operation(
    "D1AsD1",
    "D1AsD1",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_D1_t, False, 0),
    ())

TestIntf._op_D2AsB = IcePy.Operation(
    "D2AsB",
    "D2AsB",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_paramTest1 = IcePy.Operation(
    "paramTest1",
    "paramTest1",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0), ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)),
    None,
    ())

TestIntf._op_paramTest2 = IcePy.Operation(
    "paramTest2",
    "paramTest2",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0), ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)),
    None,
    ())

TestIntf._op_paramTest3 = IcePy.Operation(
    "paramTest3",
    "paramTest3",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0), ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_paramTest4 = IcePy.Operation(
    "paramTest4",
    "paramTest4",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_returnTest1 = IcePy.Operation(
    "returnTest1",
    "returnTest1",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0), ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_returnTest2 = IcePy.Operation(
    "returnTest2",
    "returnTest2",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0), ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_returnTest3 = IcePy.Operation(
    "returnTest3",
    "returnTest3",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0), ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_B_t, False, 0),
    ())

TestIntf._op_sequenceTest = IcePy.Operation(
    "sequenceTest",
    "sequenceTest",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_SS1_t, False, 0), ((), _generated_test_Ice_slicing_objects_Test_SS2_t, False, 0)),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_SS3_t, False, 0),
    ())

TestIntf._op_dictionaryTest = IcePy.Operation(
    "dictionaryTest",
    "dictionaryTest",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_BDict_t, False, 0),),
    (((), _generated_test_Ice_slicing_objects_Test_BDict_t, False, 0),),
    ((), _generated_test_Ice_slicing_objects_Test_BDict_t, False, 0),
    ())

TestIntf._op_exchangePBase = IcePy.Operation(
    "exchangePBase",
    "exchangePBase",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_PBase_t, False, 0),),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_PBase_t, False, 0),
    ())

TestIntf._op_PBSUnknownAsPreserved = IcePy.Operation(
    "PBSUnknownAsPreserved",
    "PBSUnknownAsPreserved",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_Preserved_t, False, 0),
    ())

TestIntf._op_checkPBSUnknown = IcePy.Operation(
    "checkPBSUnknown",
    "checkPBSUnknown",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_Preserved_t, False, 0),),
    (),
    None,
    ())

TestIntf._op_PBSUnknownAsPreservedWithGraph = IcePy.Operation(
    "PBSUnknownAsPreservedWithGraph",
    "PBSUnknownAsPreservedWithGraph",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_Preserved_t, False, 0),
    ())

TestIntf._op_checkPBSUnknownWithGraph = IcePy.Operation(
    "checkPBSUnknownWithGraph",
    "checkPBSUnknownWithGraph",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_Preserved_t, False, 0),),
    (),
    None,
    ())

TestIntf._op_PBSUnknown2AsPreservedWithGraph = IcePy.Operation(
    "PBSUnknown2AsPreservedWithGraph",
    "PBSUnknown2AsPreservedWithGraph",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_Preserved_t, False, 0),
    ())

TestIntf._op_checkPBSUnknown2WithGraph = IcePy.Operation(
    "checkPBSUnknown2WithGraph",
    "checkPBSUnknown2WithGraph",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_Preserved_t, False, 0),),
    (),
    None,
    ())

TestIntf._op_exchangePNode = IcePy.Operation(
    "exchangePNode",
    "exchangePNode",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (((), _generated_test_Ice_slicing_objects_Test_PNode_t, False, 0),),
    (),
    ((), _generated_test_Ice_slicing_objects_Test_PNode_t, False, 0),
    ())

TestIntf._op_throwBaseAsBase = IcePy.Operation(
    "throwBaseAsBase",
    "throwBaseAsBase",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_objects_Test_BaseException_t,))

TestIntf._op_throwDerivedAsBase = IcePy.Operation(
    "throwDerivedAsBase",
    "throwDerivedAsBase",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_objects_Test_BaseException_t,))

TestIntf._op_throwDerivedAsDerived = IcePy.Operation(
    "throwDerivedAsDerived",
    "throwDerivedAsDerived",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_objects_Test_DerivedException_t,))

TestIntf._op_throwUnknownDerivedAsBase = IcePy.Operation(
    "throwUnknownDerivedAsBase",
    "throwUnknownDerivedAsBase",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_slicing_objects_Test_BaseException_t,))

TestIntf._op_useForward = IcePy.Operation(
    "useForward",
    "useForward",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (((), _generated_test_Ice_slicing_objects_Test_Forward_t, False, 0),),
    None,
    ())

TestIntf._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    FormatType.SlicedFormat,
    (),
    (),
    (),
    None,
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_generated_test_Ice_slicing_objects_Test_TestIntfPrx_t"]
