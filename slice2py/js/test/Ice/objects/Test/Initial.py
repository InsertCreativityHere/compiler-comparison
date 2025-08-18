# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Ice.Value_forward import _Ice_Value_t

from Test.B_forward import _Test_B_t

from Test.BaseSeq import _Test_BaseSeq_t

from Test.C_forward import _Test_C_t

from Test.Compact_forward import _Test_Compact_t

from Test.D1_forward import _Test_D1_t

from Test.D_forward import _Test_D_t

from Test.EDerived import _Test_EDerived_t

from Test.F1_forward import _Test_F1_t

from Test.F2_forward import _Test_F2Prx_t

from Test.F3_forward import _Test_F3_t

from Test.G_forward import _Test_G_t

from Test.Initial_forward import _Test_InitialPrx_t

from Test.Inner.A_forward import _Test_Inner_A_t

from Test.Inner.Ex import _Test_Inner_Ex_t

from Test.Inner.Sub.A_forward import _Test_Inner_Sub_A_t

from Test.Inner.Sub.Ex import _Test_Inner_Sub_Ex_t

from Test.K_forward import _Test_K_t

from Test.M_forward import _Test_M_t

from Test.Recursive_forward import _Test_Recursive_t

from Test.ValueMap import _Test_ValueMap_t

from Test.ValueSeq import _Test_ValueSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Value import Value
    from Test.B import B
    from Test.Base import Base
    from Test.C import C
    from Test.Compact import Compact
    from Test.D import D
    from Test.D1 import D1
    from Test.F1 import F1
    from Test.F2 import F2Prx
    from Test.F3 import F3
    from Test.G import G
    from Test.Inner.A import A
    from Test.Inner.Sub.A import A as _m_Test_Inner_Sub_A_A
    from Test.K import K
    from Test.M import M
    from Test.Recursive import Recursive
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class InitialPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_shutdown.invokeAsync(self, ((), context))

    def getB1(self, context: dict[str, str] | None = None) -> B | None:
        return Initial._op_getB1.invoke(self, ((), context))

    def getB1Async(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return Initial._op_getB1.invokeAsync(self, ((), context))

    def getB2(self, context: dict[str, str] | None = None) -> B | None:
        return Initial._op_getB2.invoke(self, ((), context))

    def getB2Async(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return Initial._op_getB2.invokeAsync(self, ((), context))

    def getC(self, context: dict[str, str] | None = None) -> C | None:
        return Initial._op_getC.invoke(self, ((), context))

    def getCAsync(self, context: dict[str, str] | None = None) -> Awaitable[C | None]:
        return Initial._op_getC.invokeAsync(self, ((), context))

    def getD(self, context: dict[str, str] | None = None) -> D | None:
        return Initial._op_getD.invoke(self, ((), context))

    def getDAsync(self, context: dict[str, str] | None = None) -> Awaitable[D | None]:
        return Initial._op_getD.invokeAsync(self, ((), context))

    def setRecursive(self, p: Recursive | None, context: dict[str, str] | None = None) -> None:
        return Initial._op_setRecursive.invoke(self, ((p, ), context))

    def setRecursiveAsync(self, p: Recursive | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_setRecursive.invokeAsync(self, ((p, ), context))

    def setCycle(self, r: Recursive | None, context: dict[str, str] | None = None) -> None:
        return Initial._op_setCycle.invoke(self, ((r, ), context))

    def setCycleAsync(self, r: Recursive | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_setCycle.invokeAsync(self, ((r, ), context))

    def acceptsClassCycles(self, context: dict[str, str] | None = None) -> bool:
        return Initial._op_acceptsClassCycles.invoke(self, ((), context))

    def acceptsClassCyclesAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return Initial._op_acceptsClassCycles.invokeAsync(self, ((), context))

    def getMB(self, context: dict[str, str] | None = None) -> B | None:
        return Initial._op_getMB.invoke(self, ((), context))

    def getMBAsync(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return Initial._op_getMB.invokeAsync(self, ((), context))

    def getAMDMB(self, context: dict[str, str] | None = None) -> B | None:
        return Initial._op_getAMDMB.invoke(self, ((), context))

    def getAMDMBAsync(self, context: dict[str, str] | None = None) -> Awaitable[B | None]:
        return Initial._op_getAMDMB.invokeAsync(self, ((), context))

    def getAll(self, context: dict[str, str] | None = None) -> tuple[B | None, B | None, C | None, D | None]:
        return Initial._op_getAll.invoke(self, ((), context))

    def getAllAsync(self, context: dict[str, str] | None = None) -> Awaitable[tuple[B | None, B | None, C | None, D | None]]:
        return Initial._op_getAll.invokeAsync(self, ((), context))

    def getK(self, context: dict[str, str] | None = None) -> K | None:
        return Initial._op_getK.invoke(self, ((), context))

    def getKAsync(self, context: dict[str, str] | None = None) -> Awaitable[K | None]:
        return Initial._op_getK.invokeAsync(self, ((), context))

    def opValue(self, v1: Value | None, context: dict[str, str] | None = None) -> tuple[Value | None, Value | None]:
        return Initial._op_opValue.invoke(self, ((v1, ), context))

    def opValueAsync(self, v1: Value | None, context: dict[str, str] | None = None) -> Awaitable[tuple[Value | None, Value | None]]:
        return Initial._op_opValue.invokeAsync(self, ((v1, ), context))

    def opValueSeq(self, v1: Sequence[Value | None], context: dict[str, str] | None = None) -> tuple[list[Value | None], list[Value | None]]:
        return Initial._op_opValueSeq.invoke(self, ((v1, ), context))

    def opValueSeqAsync(self, v1: Sequence[Value | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Value | None], list[Value | None]]]:
        return Initial._op_opValueSeq.invokeAsync(self, ((v1, ), context))

    def opValueMap(self, v1: Mapping[str, Value | None], context: dict[str, str] | None = None) -> tuple[dict[str, Value | None], dict[str, Value | None]]:
        return Initial._op_opValueMap.invoke(self, ((v1, ), context))

    def opValueMapAsync(self, v1: Mapping[str, Value | None], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, Value | None], dict[str, Value | None]]]:
        return Initial._op_opValueMap.invokeAsync(self, ((v1, ), context))

    def getD1(self, d1: D1 | None, context: dict[str, str] | None = None) -> D1 | None:
        return Initial._op_getD1.invoke(self, ((d1, ), context))

    def getD1Async(self, d1: D1 | None, context: dict[str, str] | None = None) -> Awaitable[D1 | None]:
        return Initial._op_getD1.invokeAsync(self, ((d1, ), context))

    def throwEDerived(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwEDerived.invoke(self, ((), context))

    def throwEDerivedAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwEDerived.invokeAsync(self, ((), context))

    def setG(self, theG: G | None, context: dict[str, str] | None = None) -> None:
        return Initial._op_setG.invoke(self, ((theG, ), context))

    def setGAsync(self, theG: G | None, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_setG.invokeAsync(self, ((theG, ), context))

    def opBaseSeq(self, inSeq: Sequence[Base | None], context: dict[str, str] | None = None) -> tuple[list[Base | None], list[Base | None]]:
        return Initial._op_opBaseSeq.invoke(self, ((inSeq, ), context))

    def opBaseSeqAsync(self, inSeq: Sequence[Base | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Base | None], list[Base | None]]]:
        return Initial._op_opBaseSeq.invokeAsync(self, ((inSeq, ), context))

    def getCompact(self, context: dict[str, str] | None = None) -> Compact | None:
        return Initial._op_getCompact.invoke(self, ((), context))

    def getCompactAsync(self, context: dict[str, str] | None = None) -> Awaitable[Compact | None]:
        return Initial._op_getCompact.invokeAsync(self, ((), context))

    def getInnerA(self, context: dict[str, str] | None = None) -> A | None:
        return Initial._op_getInnerA.invoke(self, ((), context))

    def getInnerAAsync(self, context: dict[str, str] | None = None) -> Awaitable[A | None]:
        return Initial._op_getInnerA.invokeAsync(self, ((), context))

    def getInnerSubA(self, context: dict[str, str] | None = None) -> _m_Test_Inner_Sub_A_A | None:
        return Initial._op_getInnerSubA.invoke(self, ((), context))

    def getInnerSubAAsync(self, context: dict[str, str] | None = None) -> Awaitable[_m_Test_Inner_Sub_A_A | None]:
        return Initial._op_getInnerSubA.invokeAsync(self, ((), context))

    def throwInnerEx(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwInnerEx.invoke(self, ((), context))

    def throwInnerExAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwInnerEx.invokeAsync(self, ((), context))

    def throwInnerSubEx(self, context: dict[str, str] | None = None) -> None:
        return Initial._op_throwInnerSubEx.invoke(self, ((), context))

    def throwInnerSubExAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Initial._op_throwInnerSubEx.invokeAsync(self, ((), context))

    def opM(self, v1: M | None, context: dict[str, str] | None = None) -> tuple[M | None, M | None]:
        return Initial._op_opM.invoke(self, ((v1, ), context))

    def opMAsync(self, v1: M | None, context: dict[str, str] | None = None) -> Awaitable[tuple[M | None, M | None]]:
        return Initial._op_opM.invokeAsync(self, ((v1, ), context))

    def opF1(self, f11: F1 | None, context: dict[str, str] | None = None) -> tuple[F1 | None, F1 | None]:
        return Initial._op_opF1.invoke(self, ((f11, ), context))

    def opF1Async(self, f11: F1 | None, context: dict[str, str] | None = None) -> Awaitable[tuple[F1 | None, F1 | None]]:
        return Initial._op_opF1.invokeAsync(self, ((f11, ), context))

    def opF2(self, f21: F2Prx | None, context: dict[str, str] | None = None) -> tuple[F2Prx | None, F2Prx | None]:
        return Initial._op_opF2.invoke(self, ((f21, ), context))

    def opF2Async(self, f21: F2Prx | None, context: dict[str, str] | None = None) -> Awaitable[tuple[F2Prx | None, F2Prx | None]]:
        return Initial._op_opF2.invokeAsync(self, ((f21, ), context))

    def opF3(self, f31: F3 | None, context: dict[str, str] | None = None) -> tuple[F3 | None, F3 | None]:
        return Initial._op_opF3.invoke(self, ((f31, ), context))

    def opF3Async(self, f31: F3 | None, context: dict[str, str] | None = None) -> Awaitable[tuple[F3 | None, F3 | None]]:
        return Initial._op_opF3.invokeAsync(self, ((f31, ), context))

    def hasF3(self, context: dict[str, str] | None = None) -> bool:
        return Initial._op_hasF3.invoke(self, ((), context))

    def hasF3Async(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return Initial._op_hasF3.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> InitialPrx | None:
        return checkedCast(InitialPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[InitialPrx | None ]:
        return checkedCastAsync(InitialPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> InitialPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> InitialPrx | None:
        return uncheckedCast(InitialPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

IcePy.defineProxy("::Test::Initial", InitialPrx)

class Initial(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Initial", )
    _op_shutdown: IcePy.Operation
    _op_getB1: IcePy.Operation
    _op_getB2: IcePy.Operation
    _op_getC: IcePy.Operation
    _op_getD: IcePy.Operation
    _op_setRecursive: IcePy.Operation
    _op_setCycle: IcePy.Operation
    _op_acceptsClassCycles: IcePy.Operation
    _op_getMB: IcePy.Operation
    _op_getAMDMB: IcePy.Operation
    _op_getAll: IcePy.Operation
    _op_getK: IcePy.Operation
    _op_opValue: IcePy.Operation
    _op_opValueSeq: IcePy.Operation
    _op_opValueMap: IcePy.Operation
    _op_getD1: IcePy.Operation
    _op_throwEDerived: IcePy.Operation
    _op_setG: IcePy.Operation
    _op_opBaseSeq: IcePy.Operation
    _op_getCompact: IcePy.Operation
    _op_getInnerA: IcePy.Operation
    _op_getInnerSubA: IcePy.Operation
    _op_throwInnerEx: IcePy.Operation
    _op_throwInnerSubEx: IcePy.Operation
    _op_opM: IcePy.Operation
    _op_opF1: IcePy.Operation
    _op_opF2: IcePy.Operation
    _op_opF3: IcePy.Operation
    _op_hasF3: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Initial"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def getB1(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def getB2(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def getC(self, current: Current) -> C | None | Awaitable[C | None]:
        pass

    @abstractmethod
    def getD(self, current: Current) -> D | None | Awaitable[D | None]:
        pass

    @abstractmethod
    def setRecursive(self, p: Recursive | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def setCycle(self, r: Recursive | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def acceptsClassCycles(self, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def getMB(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def getAMDMB(self, current: Current) -> B | None | Awaitable[B | None]:
        pass

    @abstractmethod
    def getAll(self, current: Current) -> tuple[B | None, B | None, C | None, D | None] | Awaitable[tuple[B | None, B | None, C | None, D | None]]:
        pass

    @abstractmethod
    def getK(self, current: Current) -> K | None | Awaitable[K | None]:
        pass

    @abstractmethod
    def opValue(self, v1: Value | None, current: Current) -> tuple[Value | None, Value | None] | Awaitable[tuple[Value | None, Value | None]]:
        pass

    @abstractmethod
    def opValueSeq(self, v1: list[Value | None], current: Current) -> tuple[Sequence[Value | None], Sequence[Value | None]] | Awaitable[tuple[Sequence[Value | None], Sequence[Value | None]]]:
        pass

    @abstractmethod
    def opValueMap(self, v1: dict[str, Value | None], current: Current) -> tuple[Mapping[str, Value | None], Mapping[str, Value | None]] | Awaitable[tuple[Mapping[str, Value | None], Mapping[str, Value | None]]]:
        pass

    @abstractmethod
    def getD1(self, d1: D1 | None, current: Current) -> D1 | None | Awaitable[D1 | None]:
        pass

    @abstractmethod
    def throwEDerived(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def setG(self, theG: G | None, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opBaseSeq(self, inSeq: list[Base | None], current: Current) -> tuple[Sequence[Base | None], Sequence[Base | None]] | Awaitable[tuple[Sequence[Base | None], Sequence[Base | None]]]:
        pass

    @abstractmethod
    def getCompact(self, current: Current) -> Compact | None | Awaitable[Compact | None]:
        pass

    @abstractmethod
    def getInnerA(self, current: Current) -> A | None | Awaitable[A | None]:
        pass

    @abstractmethod
    def getInnerSubA(self, current: Current) -> _m_Test_Inner_Sub_A_A | None | Awaitable[_m_Test_Inner_Sub_A_A | None]:
        pass

    @abstractmethod
    def throwInnerEx(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwInnerSubEx(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opM(self, v1: M | None, current: Current) -> tuple[M | None, M | None] | Awaitable[tuple[M | None, M | None]]:
        pass

    @abstractmethod
    def opF1(self, f11: F1 | None, current: Current) -> tuple[F1 | None, F1 | None] | Awaitable[tuple[F1 | None, F1 | None]]:
        pass

    @abstractmethod
    def opF2(self, f21: F2Prx | None, current: Current) -> tuple[F2Prx | None, F2Prx | None] | Awaitable[tuple[F2Prx | None, F2Prx | None]]:
        pass

    @abstractmethod
    def opF3(self, f31: F3 | None, current: Current) -> tuple[F3 | None, F3 | None] | Awaitable[tuple[F3 | None, F3 | None]]:
        pass

    @abstractmethod
    def hasF3(self, current: Current) -> bool | Awaitable[bool]:
        pass

Initial._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Initial._op_getB1 = IcePy.Operation(
    "getB1",
    "getB1",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_B_t, False, 0),
    ())

Initial._op_getB2 = IcePy.Operation(
    "getB2",
    "getB2",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_B_t, False, 0),
    ())

Initial._op_getC = IcePy.Operation(
    "getC",
    "getC",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_C_t, False, 0),
    ())

Initial._op_getD = IcePy.Operation(
    "getD",
    "getD",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_D_t, False, 0),
    ())

Initial._op_setRecursive = IcePy.Operation(
    "setRecursive",
    "setRecursive",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Recursive_t, False, 0),),
    (),
    None,
    ())

Initial._op_setCycle = IcePy.Operation(
    "setCycle",
    "setCycle",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_Recursive_t, False, 0),),
    (),
    None,
    ())

Initial._op_acceptsClassCycles = IcePy.Operation(
    "acceptsClassCycles",
    "acceptsClassCycles",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

Initial._op_getMB = IcePy.Operation(
    "getMB",
    "getMB",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_B_t, False, 0),
    ())

Initial._op_getAMDMB = IcePy.Operation(
    "getAMDMB",
    "getAMDMB",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_B_t, False, 0),
    ())

Initial._op_getAll = IcePy.Operation(
    "getAll",
    "getAll",
    OperationMode.Normal,
    None,
    (),
    (),
    (((), _Test_B_t, False, 0), ((), _Test_B_t, False, 0), ((), _Test_C_t, False, 0), ((), _Test_D_t, False, 0)),
    None,
    ())

Initial._op_getK = IcePy.Operation(
    "getK",
    "getK",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_K_t, False, 0),
    ())

Initial._op_opValue = IcePy.Operation(
    "opValue",
    "opValue",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_Value_t, False, 0),),
    (((), _Ice_Value_t, False, 0),),
    ((), _Ice_Value_t, False, 0),
    ())

Initial._op_opValueSeq = IcePy.Operation(
    "opValueSeq",
    "opValueSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ValueSeq_t, False, 0),),
    (((), _Test_ValueSeq_t, False, 0),),
    ((), _Test_ValueSeq_t, False, 0),
    ())

Initial._op_opValueMap = IcePy.Operation(
    "opValueMap",
    "opValueMap",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ValueMap_t, False, 0),),
    (((), _Test_ValueMap_t, False, 0),),
    ((), _Test_ValueMap_t, False, 0),
    ())

Initial._op_getD1 = IcePy.Operation(
    "getD1",
    "getD1",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_D1_t, False, 0),),
    (),
    ((), _Test_D1_t, False, 0),
    ())

Initial._op_throwEDerived = IcePy.Operation(
    "throwEDerived",
    "throwEDerived",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_EDerived_t,))

Initial._op_setG = IcePy.Operation(
    "setG",
    "setG",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_G_t, False, 0),),
    (),
    None,
    ())

Initial._op_opBaseSeq = IcePy.Operation(
    "opBaseSeq",
    "opBaseSeq",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_BaseSeq_t, False, 0),),
    (((), _Test_BaseSeq_t, False, 0),),
    ((), _Test_BaseSeq_t, False, 0),
    ())

Initial._op_getCompact = IcePy.Operation(
    "getCompact",
    "getCompact",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_Compact_t, False, 0),
    ())

Initial._op_getInnerA = IcePy.Operation(
    "getInnerA",
    "getInnerA",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_Inner_A_t, False, 0),
    ())

Initial._op_getInnerSubA = IcePy.Operation(
    "getInnerSubA",
    "getInnerSubA",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_Inner_Sub_A_t, False, 0),
    ())

Initial._op_throwInnerEx = IcePy.Operation(
    "throwInnerEx",
    "throwInnerEx",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_Inner_Ex_t,))

Initial._op_throwInnerSubEx = IcePy.Operation(
    "throwInnerSubEx",
    "throwInnerSubEx",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_Test_Inner_Sub_Ex_t,))

Initial._op_opM = IcePy.Operation(
    "opM",
    "opM",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_M_t, False, 0),),
    (((), _Test_M_t, False, 0),),
    ((), _Test_M_t, False, 0),
    ())

Initial._op_opF1 = IcePy.Operation(
    "opF1",
    "opF1",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_F1_t, False, 0),),
    (((), _Test_F1_t, False, 0),),
    ((), _Test_F1_t, False, 0),
    ())

Initial._op_opF2 = IcePy.Operation(
    "opF2",
    "opF2",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_F2Prx_t, False, 0),),
    (((), _Test_F2Prx_t, False, 0),),
    ((), _Test_F2Prx_t, False, 0),
    ())

Initial._op_opF3 = IcePy.Operation(
    "opF3",
    "opF3",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_F3_t, False, 0),),
    (((), _Test_F3_t, False, 0),),
    ((), _Test_F3_t, False, 0),
    ())

Initial._op_hasF3 = IcePy.Operation(
    "hasF3",
    "hasF3",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

__all__ = ["Initial", "InitialPrx", "_Test_InitialPrx_t"]
