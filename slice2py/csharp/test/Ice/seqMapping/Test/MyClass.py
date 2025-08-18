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

from Test.ABoolS import _Test_ABoolS_t

from Test.AByteS import _Test_AByteS_t

from Test.ACRS import _Test_ACRS_t

from Test.ACVS import _Test_ACVS_t

from Test.ADoubleS import _Test_ADoubleS_t

from Test.AEnS import _Test_AEnS_t

from Test.AFloatS import _Test_AFloatS_t

from Test.AIPrxS import _Test_AIPrxS_t

from Test.AIntS import _Test_AIntS_t

from Test.ALongS import _Test_ALongS_t

from Test.AObjectPrxS import _Test_AObjectPrxS_t

from Test.AObjectS import _Test_AObjectS_t

from Test.AShortS import _Test_AShortS_t

from Test.AStringS import _Test_AStringS_t

from Test.AStructS import _Test_AStructS_t

from Test.AStructSD import _Test_AStructSD_t

from Test.CustomCVS import _Test_CustomCVS_t

from Test.CustomCVSS import _Test_CustomCVSS_t

from Test.CustomIntS import _Test_CustomIntS_t

from Test.CustomIntSS import _Test_CustomIntSS_t

from Test.KBoolS import _Test_KBoolS_t

from Test.KByteS import _Test_KByteS_t

from Test.KDoubleS import _Test_KDoubleS_t

from Test.KEnS import _Test_KEnS_t

from Test.KFloatS import _Test_KFloatS_t

from Test.KIPrxS import _Test_KIPrxS_t

from Test.KIntS import _Test_KIntS_t

from Test.KLongS import _Test_KLongS_t

from Test.KObjectPrxS import _Test_KObjectPrxS_t

from Test.KShortS import _Test_KShortS_t

from Test.KStringS import _Test_KStringS_t

from Test.KStructS import _Test_KStructS_t

from Test.KStructSD import _Test_KStructSD_t

from Test.LBoolS import _Test_LBoolS_t

from Test.LByteS import _Test_LByteS_t

from Test.LCRS import _Test_LCRS_t

from Test.LCVS import _Test_LCVS_t

from Test.LDoubleS import _Test_LDoubleS_t

from Test.LEnS import _Test_LEnS_t

from Test.LFloatS import _Test_LFloatS_t

from Test.LIPrxS import _Test_LIPrxS_t

from Test.LIntS import _Test_LIntS_t

from Test.LLongS import _Test_LLongS_t

from Test.LObjectPrxS import _Test_LObjectPrxS_t

from Test.LObjectS import _Test_LObjectS_t

from Test.LShortS import _Test_LShortS_t

from Test.LStringS import _Test_LStringS_t

from Test.LStructS import _Test_LStructS_t

from Test.LStructSD import _Test_LStructSD_t

from Test.MyClass_forward import _Test_MyClassPrx_t

from Test.QBoolS import _Test_QBoolS_t

from Test.QByteS import _Test_QByteS_t

from Test.QDoubleS import _Test_QDoubleS_t

from Test.QEnS import _Test_QEnS_t

from Test.QFloatS import _Test_QFloatS_t

from Test.QIPrxS import _Test_QIPrxS_t

from Test.QIntS import _Test_QIntS_t

from Test.QLongS import _Test_QLongS_t

from Test.QObjectPrxS import _Test_QObjectPrxS_t

from Test.QShortS import _Test_QShortS_t

from Test.QStringS import _Test_QStringS_t

from Test.QStructS import _Test_QStructS_t

from Test.QStructSD import _Test_QStructSD_t

from Test.SBoolS import _Test_SBoolS_t

from Test.SByteS import _Test_SByteS_t

from Test.SDoubleS import _Test_SDoubleS_t

from Test.SEnS import _Test_SEnS_t

from Test.SFloatS import _Test_SFloatS_t

from Test.SIPrxS import _Test_SIPrxS_t

from Test.SIntS import _Test_SIntS_t

from Test.SLongS import _Test_SLongS_t

from Test.SObjectPrxS import _Test_SObjectPrxS_t

from Test.SShortS import _Test_SShortS_t

from Test.SStringS import _Test_SStringS_t

from Test.SStructS import _Test_SStructS_t

from Test.SStructSD import _Test_SStructSD_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Value import Value
    from Test.CR import CR
    from Test.CV import CV
    from Test.En import En
    from Test.I import IPrx
    from Test.S import S
    from Test.SD import SD
    from collections.abc import Awaitable
    from collections.abc import Sequence


class MyClassPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_shutdown.invokeAsync(self, ((), context))

    def opAByteS(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opAByteS.invoke(self, ((i, ), context))

    def opAByteSAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opAByteS.invokeAsync(self, ((i, ), context))

    def opLByteS(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opLByteS.invoke(self, ((i, ), context))

    def opLByteSAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opLByteS.invokeAsync(self, ((i, ), context))

    def opKByteS(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opKByteS.invoke(self, ((i, ), context))

    def opKByteSAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opKByteS.invokeAsync(self, ((i, ), context))

    def opQByteS(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opQByteS.invoke(self, ((i, ), context))

    def opQByteSAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opQByteS.invokeAsync(self, ((i, ), context))

    def opSByteS(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> tuple[bytes, bytes]:
        return MyClass._op_opSByteS.invoke(self, ((i, ), context))

    def opSByteSAsync(self, i: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[tuple[bytes, bytes]]:
        return MyClass._op_opSByteS.invokeAsync(self, ((i, ), context))

    def opABoolS(self, i: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return MyClass._op_opABoolS.invoke(self, ((i, ), context))

    def opABoolSAsync(self, i: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return MyClass._op_opABoolS.invokeAsync(self, ((i, ), context))

    def opLBoolS(self, i: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return MyClass._op_opLBoolS.invoke(self, ((i, ), context))

    def opLBoolSAsync(self, i: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return MyClass._op_opLBoolS.invokeAsync(self, ((i, ), context))

    def opKBoolS(self, i: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return MyClass._op_opKBoolS.invoke(self, ((i, ), context))

    def opKBoolSAsync(self, i: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return MyClass._op_opKBoolS.invokeAsync(self, ((i, ), context))

    def opQBoolS(self, i: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return MyClass._op_opQBoolS.invoke(self, ((i, ), context))

    def opQBoolSAsync(self, i: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return MyClass._op_opQBoolS.invokeAsync(self, ((i, ), context))

    def opSBoolS(self, i: Sequence[bool], context: dict[str, str] | None = None) -> tuple[list[bool], list[bool]]:
        return MyClass._op_opSBoolS.invoke(self, ((i, ), context))

    def opSBoolSAsync(self, i: Sequence[bool], context: dict[str, str] | None = None) -> Awaitable[tuple[list[bool], list[bool]]]:
        return MyClass._op_opSBoolS.invokeAsync(self, ((i, ), context))

    def opAShortS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opAShortS.invoke(self, ((i, ), context))

    def opAShortSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opAShortS.invokeAsync(self, ((i, ), context))

    def opLShortS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opLShortS.invoke(self, ((i, ), context))

    def opLShortSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opLShortS.invokeAsync(self, ((i, ), context))

    def opKShortS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opKShortS.invoke(self, ((i, ), context))

    def opKShortSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opKShortS.invokeAsync(self, ((i, ), context))

    def opQShortS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opQShortS.invoke(self, ((i, ), context))

    def opQShortSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opQShortS.invokeAsync(self, ((i, ), context))

    def opSShortS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opSShortS.invoke(self, ((i, ), context))

    def opSShortSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opSShortS.invokeAsync(self, ((i, ), context))

    def opAIntS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opAIntS.invoke(self, ((i, ), context))

    def opAIntSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opAIntS.invokeAsync(self, ((i, ), context))

    def opLIntS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opLIntS.invoke(self, ((i, ), context))

    def opLIntSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opLIntS.invokeAsync(self, ((i, ), context))

    def opKIntS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opKIntS.invoke(self, ((i, ), context))

    def opKIntSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opKIntS.invokeAsync(self, ((i, ), context))

    def opQIntS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opQIntS.invoke(self, ((i, ), context))

    def opQIntSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opQIntS.invokeAsync(self, ((i, ), context))

    def opSIntS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opSIntS.invoke(self, ((i, ), context))

    def opSIntSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opSIntS.invokeAsync(self, ((i, ), context))

    def opALongS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opALongS.invoke(self, ((i, ), context))

    def opALongSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opALongS.invokeAsync(self, ((i, ), context))

    def opLLongS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opLLongS.invoke(self, ((i, ), context))

    def opLLongSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opLLongS.invokeAsync(self, ((i, ), context))

    def opKLongS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opKLongS.invoke(self, ((i, ), context))

    def opKLongSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opKLongS.invokeAsync(self, ((i, ), context))

    def opQLongS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opQLongS.invoke(self, ((i, ), context))

    def opQLongSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opQLongS.invokeAsync(self, ((i, ), context))

    def opSLongS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opSLongS.invoke(self, ((i, ), context))

    def opSLongSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opSLongS.invokeAsync(self, ((i, ), context))

    def opAFloatS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opAFloatS.invoke(self, ((i, ), context))

    def opAFloatSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opAFloatS.invokeAsync(self, ((i, ), context))

    def opLFloatS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opLFloatS.invoke(self, ((i, ), context))

    def opLFloatSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opLFloatS.invokeAsync(self, ((i, ), context))

    def opKFloatS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opKFloatS.invoke(self, ((i, ), context))

    def opKFloatSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opKFloatS.invokeAsync(self, ((i, ), context))

    def opQFloatS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opQFloatS.invoke(self, ((i, ), context))

    def opQFloatSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opQFloatS.invokeAsync(self, ((i, ), context))

    def opSFloatS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opSFloatS.invoke(self, ((i, ), context))

    def opSFloatSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opSFloatS.invokeAsync(self, ((i, ), context))

    def opADoubleS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opADoubleS.invoke(self, ((i, ), context))

    def opADoubleSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opADoubleS.invokeAsync(self, ((i, ), context))

    def opLDoubleS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opLDoubleS.invoke(self, ((i, ), context))

    def opLDoubleSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opLDoubleS.invokeAsync(self, ((i, ), context))

    def opKDoubleS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opKDoubleS.invoke(self, ((i, ), context))

    def opKDoubleSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opKDoubleS.invokeAsync(self, ((i, ), context))

    def opQDoubleS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opQDoubleS.invoke(self, ((i, ), context))

    def opQDoubleSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opQDoubleS.invokeAsync(self, ((i, ), context))

    def opSDoubleS(self, i: Sequence[float], context: dict[str, str] | None = None) -> tuple[list[float], list[float]]:
        return MyClass._op_opSDoubleS.invoke(self, ((i, ), context))

    def opSDoubleSAsync(self, i: Sequence[float], context: dict[str, str] | None = None) -> Awaitable[tuple[list[float], list[float]]]:
        return MyClass._op_opSDoubleS.invokeAsync(self, ((i, ), context))

    def opAStringS(self, i: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return MyClass._op_opAStringS.invoke(self, ((i, ), context))

    def opAStringSAsync(self, i: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return MyClass._op_opAStringS.invokeAsync(self, ((i, ), context))

    def opLStringS(self, i: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return MyClass._op_opLStringS.invoke(self, ((i, ), context))

    def opLStringSAsync(self, i: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return MyClass._op_opLStringS.invokeAsync(self, ((i, ), context))

    def opKStringS(self, i: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return MyClass._op_opKStringS.invoke(self, ((i, ), context))

    def opKStringSAsync(self, i: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return MyClass._op_opKStringS.invokeAsync(self, ((i, ), context))

    def opQStringS(self, i: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return MyClass._op_opQStringS.invoke(self, ((i, ), context))

    def opQStringSAsync(self, i: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return MyClass._op_opQStringS.invokeAsync(self, ((i, ), context))

    def opSStringS(self, i: Sequence[str], context: dict[str, str] | None = None) -> tuple[list[str], list[str]]:
        return MyClass._op_opSStringS.invoke(self, ((i, ), context))

    def opSStringSAsync(self, i: Sequence[str], context: dict[str, str] | None = None) -> Awaitable[tuple[list[str], list[str]]]:
        return MyClass._op_opSStringS.invokeAsync(self, ((i, ), context))

    def opAObjectS(self, i: Sequence[Value | None], context: dict[str, str] | None = None) -> tuple[list[Value | None], list[Value | None]]:
        return MyClass._op_opAObjectS.invoke(self, ((i, ), context))

    def opAObjectSAsync(self, i: Sequence[Value | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Value | None], list[Value | None]]]:
        return MyClass._op_opAObjectS.invokeAsync(self, ((i, ), context))

    def opLObjectS(self, i: Sequence[Value | None], context: dict[str, str] | None = None) -> tuple[list[Value | None], list[Value | None]]:
        return MyClass._op_opLObjectS.invoke(self, ((i, ), context))

    def opLObjectSAsync(self, i: Sequence[Value | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[Value | None], list[Value | None]]]:
        return MyClass._op_opLObjectS.invokeAsync(self, ((i, ), context))

    def opAObjectPrxS(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> tuple[list[ObjectPrx | None], list[ObjectPrx | None]]:
        return MyClass._op_opAObjectPrxS.invoke(self, ((i, ), context))

    def opAObjectPrxSAsync(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[ObjectPrx | None], list[ObjectPrx | None]]]:
        return MyClass._op_opAObjectPrxS.invokeAsync(self, ((i, ), context))

    def opLObjectPrxS(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> tuple[list[ObjectPrx | None], list[ObjectPrx | None]]:
        return MyClass._op_opLObjectPrxS.invoke(self, ((i, ), context))

    def opLObjectPrxSAsync(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[ObjectPrx | None], list[ObjectPrx | None]]]:
        return MyClass._op_opLObjectPrxS.invokeAsync(self, ((i, ), context))

    def opKObjectPrxS(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> tuple[list[ObjectPrx | None], list[ObjectPrx | None]]:
        return MyClass._op_opKObjectPrxS.invoke(self, ((i, ), context))

    def opKObjectPrxSAsync(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[ObjectPrx | None], list[ObjectPrx | None]]]:
        return MyClass._op_opKObjectPrxS.invokeAsync(self, ((i, ), context))

    def opQObjectPrxS(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> tuple[list[ObjectPrx | None], list[ObjectPrx | None]]:
        return MyClass._op_opQObjectPrxS.invoke(self, ((i, ), context))

    def opQObjectPrxSAsync(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[ObjectPrx | None], list[ObjectPrx | None]]]:
        return MyClass._op_opQObjectPrxS.invokeAsync(self, ((i, ), context))

    def opSObjectPrxS(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> tuple[list[ObjectPrx | None], list[ObjectPrx | None]]:
        return MyClass._op_opSObjectPrxS.invoke(self, ((i, ), context))

    def opSObjectPrxSAsync(self, i: Sequence[ObjectPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[ObjectPrx | None], list[ObjectPrx | None]]]:
        return MyClass._op_opSObjectPrxS.invokeAsync(self, ((i, ), context))

    def opAStructS(self, i: Sequence[S], context: dict[str, str] | None = None) -> tuple[list[S], list[S]]:
        return MyClass._op_opAStructS.invoke(self, ((i, ), context))

    def opAStructSAsync(self, i: Sequence[S], context: dict[str, str] | None = None) -> Awaitable[tuple[list[S], list[S]]]:
        return MyClass._op_opAStructS.invokeAsync(self, ((i, ), context))

    def opLStructS(self, i: Sequence[S], context: dict[str, str] | None = None) -> tuple[list[S], list[S]]:
        return MyClass._op_opLStructS.invoke(self, ((i, ), context))

    def opLStructSAsync(self, i: Sequence[S], context: dict[str, str] | None = None) -> Awaitable[tuple[list[S], list[S]]]:
        return MyClass._op_opLStructS.invokeAsync(self, ((i, ), context))

    def opKStructS(self, i: Sequence[S], context: dict[str, str] | None = None) -> tuple[list[S], list[S]]:
        return MyClass._op_opKStructS.invoke(self, ((i, ), context))

    def opKStructSAsync(self, i: Sequence[S], context: dict[str, str] | None = None) -> Awaitable[tuple[list[S], list[S]]]:
        return MyClass._op_opKStructS.invokeAsync(self, ((i, ), context))

    def opQStructS(self, i: Sequence[S], context: dict[str, str] | None = None) -> tuple[list[S], list[S]]:
        return MyClass._op_opQStructS.invoke(self, ((i, ), context))

    def opQStructSAsync(self, i: Sequence[S], context: dict[str, str] | None = None) -> Awaitable[tuple[list[S], list[S]]]:
        return MyClass._op_opQStructS.invokeAsync(self, ((i, ), context))

    def opSStructS(self, i: Sequence[S], context: dict[str, str] | None = None) -> tuple[list[S], list[S]]:
        return MyClass._op_opSStructS.invoke(self, ((i, ), context))

    def opSStructSAsync(self, i: Sequence[S], context: dict[str, str] | None = None) -> Awaitable[tuple[list[S], list[S]]]:
        return MyClass._op_opSStructS.invokeAsync(self, ((i, ), context))

    def opAStructSD(self, i: Sequence[SD], context: dict[str, str] | None = None) -> tuple[list[SD], list[SD]]:
        return MyClass._op_opAStructSD.invoke(self, ((i, ), context))

    def opAStructSDAsync(self, i: Sequence[SD], context: dict[str, str] | None = None) -> Awaitable[tuple[list[SD], list[SD]]]:
        return MyClass._op_opAStructSD.invokeAsync(self, ((i, ), context))

    def opLStructSD(self, i: Sequence[SD], context: dict[str, str] | None = None) -> tuple[list[SD], list[SD]]:
        return MyClass._op_opLStructSD.invoke(self, ((i, ), context))

    def opLStructSDAsync(self, i: Sequence[SD], context: dict[str, str] | None = None) -> Awaitable[tuple[list[SD], list[SD]]]:
        return MyClass._op_opLStructSD.invokeAsync(self, ((i, ), context))

    def opKStructSD(self, i: Sequence[SD], context: dict[str, str] | None = None) -> tuple[list[SD], list[SD]]:
        return MyClass._op_opKStructSD.invoke(self, ((i, ), context))

    def opKStructSDAsync(self, i: Sequence[SD], context: dict[str, str] | None = None) -> Awaitable[tuple[list[SD], list[SD]]]:
        return MyClass._op_opKStructSD.invokeAsync(self, ((i, ), context))

    def opQStructSD(self, i: Sequence[SD], context: dict[str, str] | None = None) -> tuple[list[SD], list[SD]]:
        return MyClass._op_opQStructSD.invoke(self, ((i, ), context))

    def opQStructSDAsync(self, i: Sequence[SD], context: dict[str, str] | None = None) -> Awaitable[tuple[list[SD], list[SD]]]:
        return MyClass._op_opQStructSD.invokeAsync(self, ((i, ), context))

    def opSStructSD(self, i: Sequence[SD], context: dict[str, str] | None = None) -> tuple[list[SD], list[SD]]:
        return MyClass._op_opSStructSD.invoke(self, ((i, ), context))

    def opSStructSDAsync(self, i: Sequence[SD], context: dict[str, str] | None = None) -> Awaitable[tuple[list[SD], list[SD]]]:
        return MyClass._op_opSStructSD.invokeAsync(self, ((i, ), context))

    def opACVS(self, i: Sequence[CV | None], context: dict[str, str] | None = None) -> tuple[list[CV | None], list[CV | None]]:
        return MyClass._op_opACVS.invoke(self, ((i, ), context))

    def opACVSAsync(self, i: Sequence[CV | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[CV | None], list[CV | None]]]:
        return MyClass._op_opACVS.invokeAsync(self, ((i, ), context))

    def opLCVS(self, i: Sequence[CV | None], context: dict[str, str] | None = None) -> tuple[list[CV | None], list[CV | None]]:
        return MyClass._op_opLCVS.invoke(self, ((i, ), context))

    def opLCVSAsync(self, i: Sequence[CV | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[CV | None], list[CV | None]]]:
        return MyClass._op_opLCVS.invokeAsync(self, ((i, ), context))

    def opACRS(self, i: Sequence[CR | None], context: dict[str, str] | None = None) -> tuple[list[CR | None], list[CR | None]]:
        return MyClass._op_opACRS.invoke(self, ((i, ), context))

    def opACRSAsync(self, i: Sequence[CR | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[CR | None], list[CR | None]]]:
        return MyClass._op_opACRS.invokeAsync(self, ((i, ), context))

    def opLCRS(self, i: Sequence[CR | None], context: dict[str, str] | None = None) -> tuple[list[CR | None], list[CR | None]]:
        return MyClass._op_opLCRS.invoke(self, ((i, ), context))

    def opLCRSAsync(self, i: Sequence[CR | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[CR | None], list[CR | None]]]:
        return MyClass._op_opLCRS.invokeAsync(self, ((i, ), context))

    def opAEnS(self, i: Sequence[En], context: dict[str, str] | None = None) -> tuple[list[En], list[En]]:
        return MyClass._op_opAEnS.invoke(self, ((i, ), context))

    def opAEnSAsync(self, i: Sequence[En], context: dict[str, str] | None = None) -> Awaitable[tuple[list[En], list[En]]]:
        return MyClass._op_opAEnS.invokeAsync(self, ((i, ), context))

    def opLEnS(self, i: Sequence[En], context: dict[str, str] | None = None) -> tuple[list[En], list[En]]:
        return MyClass._op_opLEnS.invoke(self, ((i, ), context))

    def opLEnSAsync(self, i: Sequence[En], context: dict[str, str] | None = None) -> Awaitable[tuple[list[En], list[En]]]:
        return MyClass._op_opLEnS.invokeAsync(self, ((i, ), context))

    def opKEnS(self, i: Sequence[En], context: dict[str, str] | None = None) -> tuple[list[En], list[En]]:
        return MyClass._op_opKEnS.invoke(self, ((i, ), context))

    def opKEnSAsync(self, i: Sequence[En], context: dict[str, str] | None = None) -> Awaitable[tuple[list[En], list[En]]]:
        return MyClass._op_opKEnS.invokeAsync(self, ((i, ), context))

    def opQEnS(self, i: Sequence[En], context: dict[str, str] | None = None) -> tuple[list[En], list[En]]:
        return MyClass._op_opQEnS.invoke(self, ((i, ), context))

    def opQEnSAsync(self, i: Sequence[En], context: dict[str, str] | None = None) -> Awaitable[tuple[list[En], list[En]]]:
        return MyClass._op_opQEnS.invokeAsync(self, ((i, ), context))

    def opSEnS(self, i: Sequence[En], context: dict[str, str] | None = None) -> tuple[list[En], list[En]]:
        return MyClass._op_opSEnS.invoke(self, ((i, ), context))

    def opSEnSAsync(self, i: Sequence[En], context: dict[str, str] | None = None) -> Awaitable[tuple[list[En], list[En]]]:
        return MyClass._op_opSEnS.invokeAsync(self, ((i, ), context))

    def opAIPrxS(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> tuple[list[IPrx | None], list[IPrx | None]]:
        return MyClass._op_opAIPrxS.invoke(self, ((i, ), context))

    def opAIPrxSAsync(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[IPrx | None], list[IPrx | None]]]:
        return MyClass._op_opAIPrxS.invokeAsync(self, ((i, ), context))

    def opLIPrxS(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> tuple[list[IPrx | None], list[IPrx | None]]:
        return MyClass._op_opLIPrxS.invoke(self, ((i, ), context))

    def opLIPrxSAsync(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[IPrx | None], list[IPrx | None]]]:
        return MyClass._op_opLIPrxS.invokeAsync(self, ((i, ), context))

    def opKIPrxS(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> tuple[list[IPrx | None], list[IPrx | None]]:
        return MyClass._op_opKIPrxS.invoke(self, ((i, ), context))

    def opKIPrxSAsync(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[IPrx | None], list[IPrx | None]]]:
        return MyClass._op_opKIPrxS.invokeAsync(self, ((i, ), context))

    def opQIPrxS(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> tuple[list[IPrx | None], list[IPrx | None]]:
        return MyClass._op_opQIPrxS.invoke(self, ((i, ), context))

    def opQIPrxSAsync(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[IPrx | None], list[IPrx | None]]]:
        return MyClass._op_opQIPrxS.invokeAsync(self, ((i, ), context))

    def opSIPrxS(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> tuple[list[IPrx | None], list[IPrx | None]]:
        return MyClass._op_opSIPrxS.invoke(self, ((i, ), context))

    def opSIPrxSAsync(self, i: Sequence[IPrx | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[IPrx | None], list[IPrx | None]]]:
        return MyClass._op_opSIPrxS.invokeAsync(self, ((i, ), context))

    def opCustomIntS(self, i: Sequence[int], context: dict[str, str] | None = None) -> tuple[list[int], list[int]]:
        return MyClass._op_opCustomIntS.invoke(self, ((i, ), context))

    def opCustomIntSAsync(self, i: Sequence[int], context: dict[str, str] | None = None) -> Awaitable[tuple[list[int], list[int]]]:
        return MyClass._op_opCustomIntS.invokeAsync(self, ((i, ), context))

    def opCustomCVS(self, i: Sequence[CV | None], context: dict[str, str] | None = None) -> tuple[list[CV | None], list[CV | None]]:
        return MyClass._op_opCustomCVS.invoke(self, ((i, ), context))

    def opCustomCVSAsync(self, i: Sequence[CV | None], context: dict[str, str] | None = None) -> Awaitable[tuple[list[CV | None], list[CV | None]]]:
        return MyClass._op_opCustomCVS.invokeAsync(self, ((i, ), context))

    def opCustomIntSS(self, i: Sequence[Sequence[int]], context: dict[str, str] | None = None) -> tuple[list[list[int]], list[list[int]]]:
        return MyClass._op_opCustomIntSS.invoke(self, ((i, ), context))

    def opCustomIntSSAsync(self, i: Sequence[Sequence[int]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[int]], list[list[int]]]]:
        return MyClass._op_opCustomIntSS.invokeAsync(self, ((i, ), context))

    def opCustomCVSS(self, i: Sequence[Sequence[CV | None]], context: dict[str, str] | None = None) -> tuple[list[list[CV | None]], list[list[CV | None]]]:
        return MyClass._op_opCustomCVSS.invoke(self, ((i, ), context))

    def opCustomCVSSAsync(self, i: Sequence[Sequence[CV | None]], context: dict[str, str] | None = None) -> Awaitable[tuple[list[list[CV | None]], list[list[CV | None]]]]:
        return MyClass._op_opCustomCVSS.invokeAsync(self, ((i, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyClassPrx | None:
        return checkedCast(MyClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyClassPrx | None ]:
        return checkedCastAsync(MyClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyClassPrx | None:
        return uncheckedCast(MyClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

IcePy.defineProxy("::Test::MyClass", MyClassPrx)

class MyClass(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyClass", )
    _op_shutdown: IcePy.Operation
    _op_opAByteS: IcePy.Operation
    _op_opLByteS: IcePy.Operation
    _op_opKByteS: IcePy.Operation
    _op_opQByteS: IcePy.Operation
    _op_opSByteS: IcePy.Operation
    _op_opABoolS: IcePy.Operation
    _op_opLBoolS: IcePy.Operation
    _op_opKBoolS: IcePy.Operation
    _op_opQBoolS: IcePy.Operation
    _op_opSBoolS: IcePy.Operation
    _op_opAShortS: IcePy.Operation
    _op_opLShortS: IcePy.Operation
    _op_opKShortS: IcePy.Operation
    _op_opQShortS: IcePy.Operation
    _op_opSShortS: IcePy.Operation
    _op_opAIntS: IcePy.Operation
    _op_opLIntS: IcePy.Operation
    _op_opKIntS: IcePy.Operation
    _op_opQIntS: IcePy.Operation
    _op_opSIntS: IcePy.Operation
    _op_opALongS: IcePy.Operation
    _op_opLLongS: IcePy.Operation
    _op_opKLongS: IcePy.Operation
    _op_opQLongS: IcePy.Operation
    _op_opSLongS: IcePy.Operation
    _op_opAFloatS: IcePy.Operation
    _op_opLFloatS: IcePy.Operation
    _op_opKFloatS: IcePy.Operation
    _op_opQFloatS: IcePy.Operation
    _op_opSFloatS: IcePy.Operation
    _op_opADoubleS: IcePy.Operation
    _op_opLDoubleS: IcePy.Operation
    _op_opKDoubleS: IcePy.Operation
    _op_opQDoubleS: IcePy.Operation
    _op_opSDoubleS: IcePy.Operation
    _op_opAStringS: IcePy.Operation
    _op_opLStringS: IcePy.Operation
    _op_opKStringS: IcePy.Operation
    _op_opQStringS: IcePy.Operation
    _op_opSStringS: IcePy.Operation
    _op_opAObjectS: IcePy.Operation
    _op_opLObjectS: IcePy.Operation
    _op_opAObjectPrxS: IcePy.Operation
    _op_opLObjectPrxS: IcePy.Operation
    _op_opKObjectPrxS: IcePy.Operation
    _op_opQObjectPrxS: IcePy.Operation
    _op_opSObjectPrxS: IcePy.Operation
    _op_opAStructS: IcePy.Operation
    _op_opLStructS: IcePy.Operation
    _op_opKStructS: IcePy.Operation
    _op_opQStructS: IcePy.Operation
    _op_opSStructS: IcePy.Operation
    _op_opAStructSD: IcePy.Operation
    _op_opLStructSD: IcePy.Operation
    _op_opKStructSD: IcePy.Operation
    _op_opQStructSD: IcePy.Operation
    _op_opSStructSD: IcePy.Operation
    _op_opACVS: IcePy.Operation
    _op_opLCVS: IcePy.Operation
    _op_opACRS: IcePy.Operation
    _op_opLCRS: IcePy.Operation
    _op_opAEnS: IcePy.Operation
    _op_opLEnS: IcePy.Operation
    _op_opKEnS: IcePy.Operation
    _op_opQEnS: IcePy.Operation
    _op_opSEnS: IcePy.Operation
    _op_opAIPrxS: IcePy.Operation
    _op_opLIPrxS: IcePy.Operation
    _op_opKIPrxS: IcePy.Operation
    _op_opQIPrxS: IcePy.Operation
    _op_opSIPrxS: IcePy.Operation
    _op_opCustomIntS: IcePy.Operation
    _op_opCustomCVS: IcePy.Operation
    _op_opCustomIntSS: IcePy.Operation
    _op_opCustomCVSS: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opAByteS(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opLByteS(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opKByteS(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opQByteS(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opSByteS(self, i: bytes, current: Current) -> tuple[Sequence[int] | bytes, Sequence[int] | bytes] | Awaitable[tuple[Sequence[int] | bytes, Sequence[int] | bytes]]:
        pass

    @abstractmethod
    def opABoolS(self, i: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opLBoolS(self, i: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opKBoolS(self, i: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opQBoolS(self, i: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opSBoolS(self, i: list[bool], current: Current) -> tuple[Sequence[bool], Sequence[bool]] | Awaitable[tuple[Sequence[bool], Sequence[bool]]]:
        pass

    @abstractmethod
    def opAShortS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opLShortS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opKShortS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opQShortS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opSShortS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opAIntS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opLIntS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opKIntS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opQIntS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opSIntS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opALongS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opLLongS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opKLongS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opQLongS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opSLongS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opAFloatS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opLFloatS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opKFloatS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opQFloatS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opSFloatS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opADoubleS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opLDoubleS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opKDoubleS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opQDoubleS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opSDoubleS(self, i: list[float], current: Current) -> tuple[Sequence[float], Sequence[float]] | Awaitable[tuple[Sequence[float], Sequence[float]]]:
        pass

    @abstractmethod
    def opAStringS(self, i: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opLStringS(self, i: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opKStringS(self, i: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opQStringS(self, i: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opSStringS(self, i: list[str], current: Current) -> tuple[Sequence[str], Sequence[str]] | Awaitable[tuple[Sequence[str], Sequence[str]]]:
        pass

    @abstractmethod
    def opAObjectS(self, i: list[Value | None], current: Current) -> tuple[Sequence[Value | None], Sequence[Value | None]] | Awaitable[tuple[Sequence[Value | None], Sequence[Value | None]]]:
        pass

    @abstractmethod
    def opLObjectS(self, i: list[Value | None], current: Current) -> tuple[Sequence[Value | None], Sequence[Value | None]] | Awaitable[tuple[Sequence[Value | None], Sequence[Value | None]]]:
        pass

    @abstractmethod
    def opAObjectPrxS(self, i: list[ObjectPrx | None], current: Current) -> tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]] | Awaitable[tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]]]:
        pass

    @abstractmethod
    def opLObjectPrxS(self, i: list[ObjectPrx | None], current: Current) -> tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]] | Awaitable[tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]]]:
        pass

    @abstractmethod
    def opKObjectPrxS(self, i: list[ObjectPrx | None], current: Current) -> tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]] | Awaitable[tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]]]:
        pass

    @abstractmethod
    def opQObjectPrxS(self, i: list[ObjectPrx | None], current: Current) -> tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]] | Awaitable[tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]]]:
        pass

    @abstractmethod
    def opSObjectPrxS(self, i: list[ObjectPrx | None], current: Current) -> tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]] | Awaitable[tuple[Sequence[ObjectPrx | None], Sequence[ObjectPrx | None]]]:
        pass

    @abstractmethod
    def opAStructS(self, i: list[S], current: Current) -> tuple[Sequence[S], Sequence[S]] | Awaitable[tuple[Sequence[S], Sequence[S]]]:
        pass

    @abstractmethod
    def opLStructS(self, i: list[S], current: Current) -> tuple[Sequence[S], Sequence[S]] | Awaitable[tuple[Sequence[S], Sequence[S]]]:
        pass

    @abstractmethod
    def opKStructS(self, i: list[S], current: Current) -> tuple[Sequence[S], Sequence[S]] | Awaitable[tuple[Sequence[S], Sequence[S]]]:
        pass

    @abstractmethod
    def opQStructS(self, i: list[S], current: Current) -> tuple[Sequence[S], Sequence[S]] | Awaitable[tuple[Sequence[S], Sequence[S]]]:
        pass

    @abstractmethod
    def opSStructS(self, i: list[S], current: Current) -> tuple[Sequence[S], Sequence[S]] | Awaitable[tuple[Sequence[S], Sequence[S]]]:
        pass

    @abstractmethod
    def opAStructSD(self, i: list[SD], current: Current) -> tuple[Sequence[SD], Sequence[SD]] | Awaitable[tuple[Sequence[SD], Sequence[SD]]]:
        pass

    @abstractmethod
    def opLStructSD(self, i: list[SD], current: Current) -> tuple[Sequence[SD], Sequence[SD]] | Awaitable[tuple[Sequence[SD], Sequence[SD]]]:
        pass

    @abstractmethod
    def opKStructSD(self, i: list[SD], current: Current) -> tuple[Sequence[SD], Sequence[SD]] | Awaitable[tuple[Sequence[SD], Sequence[SD]]]:
        pass

    @abstractmethod
    def opQStructSD(self, i: list[SD], current: Current) -> tuple[Sequence[SD], Sequence[SD]] | Awaitable[tuple[Sequence[SD], Sequence[SD]]]:
        pass

    @abstractmethod
    def opSStructSD(self, i: list[SD], current: Current) -> tuple[Sequence[SD], Sequence[SD]] | Awaitable[tuple[Sequence[SD], Sequence[SD]]]:
        pass

    @abstractmethod
    def opACVS(self, i: list[CV | None], current: Current) -> tuple[Sequence[CV | None], Sequence[CV | None]] | Awaitable[tuple[Sequence[CV | None], Sequence[CV | None]]]:
        pass

    @abstractmethod
    def opLCVS(self, i: list[CV | None], current: Current) -> tuple[Sequence[CV | None], Sequence[CV | None]] | Awaitable[tuple[Sequence[CV | None], Sequence[CV | None]]]:
        pass

    @abstractmethod
    def opACRS(self, i: list[CR | None], current: Current) -> tuple[Sequence[CR | None], Sequence[CR | None]] | Awaitable[tuple[Sequence[CR | None], Sequence[CR | None]]]:
        pass

    @abstractmethod
    def opLCRS(self, i: list[CR | None], current: Current) -> tuple[Sequence[CR | None], Sequence[CR | None]] | Awaitable[tuple[Sequence[CR | None], Sequence[CR | None]]]:
        pass

    @abstractmethod
    def opAEnS(self, i: list[En], current: Current) -> tuple[Sequence[En], Sequence[En]] | Awaitable[tuple[Sequence[En], Sequence[En]]]:
        pass

    @abstractmethod
    def opLEnS(self, i: list[En], current: Current) -> tuple[Sequence[En], Sequence[En]] | Awaitable[tuple[Sequence[En], Sequence[En]]]:
        pass

    @abstractmethod
    def opKEnS(self, i: list[En], current: Current) -> tuple[Sequence[En], Sequence[En]] | Awaitable[tuple[Sequence[En], Sequence[En]]]:
        pass

    @abstractmethod
    def opQEnS(self, i: list[En], current: Current) -> tuple[Sequence[En], Sequence[En]] | Awaitable[tuple[Sequence[En], Sequence[En]]]:
        pass

    @abstractmethod
    def opSEnS(self, i: list[En], current: Current) -> tuple[Sequence[En], Sequence[En]] | Awaitable[tuple[Sequence[En], Sequence[En]]]:
        pass

    @abstractmethod
    def opAIPrxS(self, i: list[IPrx | None], current: Current) -> tuple[Sequence[IPrx | None], Sequence[IPrx | None]] | Awaitable[tuple[Sequence[IPrx | None], Sequence[IPrx | None]]]:
        pass

    @abstractmethod
    def opLIPrxS(self, i: list[IPrx | None], current: Current) -> tuple[Sequence[IPrx | None], Sequence[IPrx | None]] | Awaitable[tuple[Sequence[IPrx | None], Sequence[IPrx | None]]]:
        pass

    @abstractmethod
    def opKIPrxS(self, i: list[IPrx | None], current: Current) -> tuple[Sequence[IPrx | None], Sequence[IPrx | None]] | Awaitable[tuple[Sequence[IPrx | None], Sequence[IPrx | None]]]:
        pass

    @abstractmethod
    def opQIPrxS(self, i: list[IPrx | None], current: Current) -> tuple[Sequence[IPrx | None], Sequence[IPrx | None]] | Awaitable[tuple[Sequence[IPrx | None], Sequence[IPrx | None]]]:
        pass

    @abstractmethod
    def opSIPrxS(self, i: list[IPrx | None], current: Current) -> tuple[Sequence[IPrx | None], Sequence[IPrx | None]] | Awaitable[tuple[Sequence[IPrx | None], Sequence[IPrx | None]]]:
        pass

    @abstractmethod
    def opCustomIntS(self, i: list[int], current: Current) -> tuple[Sequence[int], Sequence[int]] | Awaitable[tuple[Sequence[int], Sequence[int]]]:
        pass

    @abstractmethod
    def opCustomCVS(self, i: list[CV | None], current: Current) -> tuple[Sequence[CV | None], Sequence[CV | None]] | Awaitable[tuple[Sequence[CV | None], Sequence[CV | None]]]:
        pass

    @abstractmethod
    def opCustomIntSS(self, i: list[list[int]], current: Current) -> tuple[Sequence[Sequence[int]], Sequence[Sequence[int]]] | Awaitable[tuple[Sequence[Sequence[int]], Sequence[Sequence[int]]]]:
        pass

    @abstractmethod
    def opCustomCVSS(self, i: list[list[CV | None]], current: Current) -> tuple[Sequence[Sequence[CV | None]], Sequence[Sequence[CV | None]]] | Awaitable[tuple[Sequence[Sequence[CV | None]], Sequence[Sequence[CV | None]]]]:
        pass

MyClass._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_opAByteS = IcePy.Operation(
    "opAByteS",
    "opAByteS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AByteS_t, False, 0),),
    (((), _Test_AByteS_t, False, 0),),
    ((), _Test_AByteS_t, False, 0),
    ())

MyClass._op_opLByteS = IcePy.Operation(
    "opLByteS",
    "opLByteS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LByteS_t, False, 0),),
    (((), _Test_LByteS_t, False, 0),),
    ((), _Test_LByteS_t, False, 0),
    ())

MyClass._op_opKByteS = IcePy.Operation(
    "opKByteS",
    "opKByteS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KByteS_t, False, 0),),
    (((), _Test_KByteS_t, False, 0),),
    ((), _Test_KByteS_t, False, 0),
    ())

MyClass._op_opQByteS = IcePy.Operation(
    "opQByteS",
    "opQByteS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QByteS_t, False, 0),),
    (((), _Test_QByteS_t, False, 0),),
    ((), _Test_QByteS_t, False, 0),
    ())

MyClass._op_opSByteS = IcePy.Operation(
    "opSByteS",
    "opSByteS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SByteS_t, False, 0),),
    (((), _Test_SByteS_t, False, 0),),
    ((), _Test_SByteS_t, False, 0),
    ())

MyClass._op_opABoolS = IcePy.Operation(
    "opABoolS",
    "opABoolS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ABoolS_t, False, 0),),
    (((), _Test_ABoolS_t, False, 0),),
    ((), _Test_ABoolS_t, False, 0),
    ())

MyClass._op_opLBoolS = IcePy.Operation(
    "opLBoolS",
    "opLBoolS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LBoolS_t, False, 0),),
    (((), _Test_LBoolS_t, False, 0),),
    ((), _Test_LBoolS_t, False, 0),
    ())

MyClass._op_opKBoolS = IcePy.Operation(
    "opKBoolS",
    "opKBoolS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KBoolS_t, False, 0),),
    (((), _Test_KBoolS_t, False, 0),),
    ((), _Test_KBoolS_t, False, 0),
    ())

MyClass._op_opQBoolS = IcePy.Operation(
    "opQBoolS",
    "opQBoolS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QBoolS_t, False, 0),),
    (((), _Test_QBoolS_t, False, 0),),
    ((), _Test_QBoolS_t, False, 0),
    ())

MyClass._op_opSBoolS = IcePy.Operation(
    "opSBoolS",
    "opSBoolS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SBoolS_t, False, 0),),
    (((), _Test_SBoolS_t, False, 0),),
    ((), _Test_SBoolS_t, False, 0),
    ())

MyClass._op_opAShortS = IcePy.Operation(
    "opAShortS",
    "opAShortS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AShortS_t, False, 0),),
    (((), _Test_AShortS_t, False, 0),),
    ((), _Test_AShortS_t, False, 0),
    ())

MyClass._op_opLShortS = IcePy.Operation(
    "opLShortS",
    "opLShortS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LShortS_t, False, 0),),
    (((), _Test_LShortS_t, False, 0),),
    ((), _Test_LShortS_t, False, 0),
    ())

MyClass._op_opKShortS = IcePy.Operation(
    "opKShortS",
    "opKShortS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KShortS_t, False, 0),),
    (((), _Test_KShortS_t, False, 0),),
    ((), _Test_KShortS_t, False, 0),
    ())

MyClass._op_opQShortS = IcePy.Operation(
    "opQShortS",
    "opQShortS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QShortS_t, False, 0),),
    (((), _Test_QShortS_t, False, 0),),
    ((), _Test_QShortS_t, False, 0),
    ())

MyClass._op_opSShortS = IcePy.Operation(
    "opSShortS",
    "opSShortS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SShortS_t, False, 0),),
    (((), _Test_SShortS_t, False, 0),),
    ((), _Test_SShortS_t, False, 0),
    ())

MyClass._op_opAIntS = IcePy.Operation(
    "opAIntS",
    "opAIntS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AIntS_t, False, 0),),
    (((), _Test_AIntS_t, False, 0),),
    ((), _Test_AIntS_t, False, 0),
    ())

MyClass._op_opLIntS = IcePy.Operation(
    "opLIntS",
    "opLIntS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LIntS_t, False, 0),),
    (((), _Test_LIntS_t, False, 0),),
    ((), _Test_LIntS_t, False, 0),
    ())

MyClass._op_opKIntS = IcePy.Operation(
    "opKIntS",
    "opKIntS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KIntS_t, False, 0),),
    (((), _Test_KIntS_t, False, 0),),
    ((), _Test_KIntS_t, False, 0),
    ())

MyClass._op_opQIntS = IcePy.Operation(
    "opQIntS",
    "opQIntS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QIntS_t, False, 0),),
    (((), _Test_QIntS_t, False, 0),),
    ((), _Test_QIntS_t, False, 0),
    ())

MyClass._op_opSIntS = IcePy.Operation(
    "opSIntS",
    "opSIntS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SIntS_t, False, 0),),
    (((), _Test_SIntS_t, False, 0),),
    ((), _Test_SIntS_t, False, 0),
    ())

MyClass._op_opALongS = IcePy.Operation(
    "opALongS",
    "opALongS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ALongS_t, False, 0),),
    (((), _Test_ALongS_t, False, 0),),
    ((), _Test_ALongS_t, False, 0),
    ())

MyClass._op_opLLongS = IcePy.Operation(
    "opLLongS",
    "opLLongS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LLongS_t, False, 0),),
    (((), _Test_LLongS_t, False, 0),),
    ((), _Test_LLongS_t, False, 0),
    ())

MyClass._op_opKLongS = IcePy.Operation(
    "opKLongS",
    "opKLongS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KLongS_t, False, 0),),
    (((), _Test_KLongS_t, False, 0),),
    ((), _Test_KLongS_t, False, 0),
    ())

MyClass._op_opQLongS = IcePy.Operation(
    "opQLongS",
    "opQLongS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QLongS_t, False, 0),),
    (((), _Test_QLongS_t, False, 0),),
    ((), _Test_QLongS_t, False, 0),
    ())

MyClass._op_opSLongS = IcePy.Operation(
    "opSLongS",
    "opSLongS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SLongS_t, False, 0),),
    (((), _Test_SLongS_t, False, 0),),
    ((), _Test_SLongS_t, False, 0),
    ())

MyClass._op_opAFloatS = IcePy.Operation(
    "opAFloatS",
    "opAFloatS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AFloatS_t, False, 0),),
    (((), _Test_AFloatS_t, False, 0),),
    ((), _Test_AFloatS_t, False, 0),
    ())

MyClass._op_opLFloatS = IcePy.Operation(
    "opLFloatS",
    "opLFloatS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LFloatS_t, False, 0),),
    (((), _Test_LFloatS_t, False, 0),),
    ((), _Test_LFloatS_t, False, 0),
    ())

MyClass._op_opKFloatS = IcePy.Operation(
    "opKFloatS",
    "opKFloatS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KFloatS_t, False, 0),),
    (((), _Test_KFloatS_t, False, 0),),
    ((), _Test_KFloatS_t, False, 0),
    ())

MyClass._op_opQFloatS = IcePy.Operation(
    "opQFloatS",
    "opQFloatS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QFloatS_t, False, 0),),
    (((), _Test_QFloatS_t, False, 0),),
    ((), _Test_QFloatS_t, False, 0),
    ())

MyClass._op_opSFloatS = IcePy.Operation(
    "opSFloatS",
    "opSFloatS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SFloatS_t, False, 0),),
    (((), _Test_SFloatS_t, False, 0),),
    ((), _Test_SFloatS_t, False, 0),
    ())

MyClass._op_opADoubleS = IcePy.Operation(
    "opADoubleS",
    "opADoubleS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ADoubleS_t, False, 0),),
    (((), _Test_ADoubleS_t, False, 0),),
    ((), _Test_ADoubleS_t, False, 0),
    ())

MyClass._op_opLDoubleS = IcePy.Operation(
    "opLDoubleS",
    "opLDoubleS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LDoubleS_t, False, 0),),
    (((), _Test_LDoubleS_t, False, 0),),
    ((), _Test_LDoubleS_t, False, 0),
    ())

MyClass._op_opKDoubleS = IcePy.Operation(
    "opKDoubleS",
    "opKDoubleS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KDoubleS_t, False, 0),),
    (((), _Test_KDoubleS_t, False, 0),),
    ((), _Test_KDoubleS_t, False, 0),
    ())

MyClass._op_opQDoubleS = IcePy.Operation(
    "opQDoubleS",
    "opQDoubleS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QDoubleS_t, False, 0),),
    (((), _Test_QDoubleS_t, False, 0),),
    ((), _Test_QDoubleS_t, False, 0),
    ())

MyClass._op_opSDoubleS = IcePy.Operation(
    "opSDoubleS",
    "opSDoubleS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SDoubleS_t, False, 0),),
    (((), _Test_SDoubleS_t, False, 0),),
    ((), _Test_SDoubleS_t, False, 0),
    ())

MyClass._op_opAStringS = IcePy.Operation(
    "opAStringS",
    "opAStringS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AStringS_t, False, 0),),
    (((), _Test_AStringS_t, False, 0),),
    ((), _Test_AStringS_t, False, 0),
    ())

MyClass._op_opLStringS = IcePy.Operation(
    "opLStringS",
    "opLStringS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LStringS_t, False, 0),),
    (((), _Test_LStringS_t, False, 0),),
    ((), _Test_LStringS_t, False, 0),
    ())

MyClass._op_opKStringS = IcePy.Operation(
    "opKStringS",
    "opKStringS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KStringS_t, False, 0),),
    (((), _Test_KStringS_t, False, 0),),
    ((), _Test_KStringS_t, False, 0),
    ())

MyClass._op_opQStringS = IcePy.Operation(
    "opQStringS",
    "opQStringS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QStringS_t, False, 0),),
    (((), _Test_QStringS_t, False, 0),),
    ((), _Test_QStringS_t, False, 0),
    ())

MyClass._op_opSStringS = IcePy.Operation(
    "opSStringS",
    "opSStringS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SStringS_t, False, 0),),
    (((), _Test_SStringS_t, False, 0),),
    ((), _Test_SStringS_t, False, 0),
    ())

MyClass._op_opAObjectS = IcePy.Operation(
    "opAObjectS",
    "opAObjectS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AObjectS_t, False, 0),),
    (((), _Test_AObjectS_t, False, 0),),
    ((), _Test_AObjectS_t, False, 0),
    ())

MyClass._op_opLObjectS = IcePy.Operation(
    "opLObjectS",
    "opLObjectS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LObjectS_t, False, 0),),
    (((), _Test_LObjectS_t, False, 0),),
    ((), _Test_LObjectS_t, False, 0),
    ())

MyClass._op_opAObjectPrxS = IcePy.Operation(
    "opAObjectPrxS",
    "opAObjectPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AObjectPrxS_t, False, 0),),
    (((), _Test_AObjectPrxS_t, False, 0),),
    ((), _Test_AObjectPrxS_t, False, 0),
    ())

MyClass._op_opLObjectPrxS = IcePy.Operation(
    "opLObjectPrxS",
    "opLObjectPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LObjectPrxS_t, False, 0),),
    (((), _Test_LObjectPrxS_t, False, 0),),
    ((), _Test_LObjectPrxS_t, False, 0),
    ())

MyClass._op_opKObjectPrxS = IcePy.Operation(
    "opKObjectPrxS",
    "opKObjectPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KObjectPrxS_t, False, 0),),
    (((), _Test_KObjectPrxS_t, False, 0),),
    ((), _Test_KObjectPrxS_t, False, 0),
    ())

MyClass._op_opQObjectPrxS = IcePy.Operation(
    "opQObjectPrxS",
    "opQObjectPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QObjectPrxS_t, False, 0),),
    (((), _Test_QObjectPrxS_t, False, 0),),
    ((), _Test_QObjectPrxS_t, False, 0),
    ())

MyClass._op_opSObjectPrxS = IcePy.Operation(
    "opSObjectPrxS",
    "opSObjectPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SObjectPrxS_t, False, 0),),
    (((), _Test_SObjectPrxS_t, False, 0),),
    ((), _Test_SObjectPrxS_t, False, 0),
    ())

MyClass._op_opAStructS = IcePy.Operation(
    "opAStructS",
    "opAStructS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AStructS_t, False, 0),),
    (((), _Test_AStructS_t, False, 0),),
    ((), _Test_AStructS_t, False, 0),
    ())

MyClass._op_opLStructS = IcePy.Operation(
    "opLStructS",
    "opLStructS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LStructS_t, False, 0),),
    (((), _Test_LStructS_t, False, 0),),
    ((), _Test_LStructS_t, False, 0),
    ())

MyClass._op_opKStructS = IcePy.Operation(
    "opKStructS",
    "opKStructS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KStructS_t, False, 0),),
    (((), _Test_KStructS_t, False, 0),),
    ((), _Test_KStructS_t, False, 0),
    ())

MyClass._op_opQStructS = IcePy.Operation(
    "opQStructS",
    "opQStructS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QStructS_t, False, 0),),
    (((), _Test_QStructS_t, False, 0),),
    ((), _Test_QStructS_t, False, 0),
    ())

MyClass._op_opSStructS = IcePy.Operation(
    "opSStructS",
    "opSStructS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SStructS_t, False, 0),),
    (((), _Test_SStructS_t, False, 0),),
    ((), _Test_SStructS_t, False, 0),
    ())

MyClass._op_opAStructSD = IcePy.Operation(
    "opAStructSD",
    "opAStructSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AStructSD_t, False, 0),),
    (((), _Test_AStructSD_t, False, 0),),
    ((), _Test_AStructSD_t, False, 0),
    ())

MyClass._op_opLStructSD = IcePy.Operation(
    "opLStructSD",
    "opLStructSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LStructSD_t, False, 0),),
    (((), _Test_LStructSD_t, False, 0),),
    ((), _Test_LStructSD_t, False, 0),
    ())

MyClass._op_opKStructSD = IcePy.Operation(
    "opKStructSD",
    "opKStructSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KStructSD_t, False, 0),),
    (((), _Test_KStructSD_t, False, 0),),
    ((), _Test_KStructSD_t, False, 0),
    ())

MyClass._op_opQStructSD = IcePy.Operation(
    "opQStructSD",
    "opQStructSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QStructSD_t, False, 0),),
    (((), _Test_QStructSD_t, False, 0),),
    ((), _Test_QStructSD_t, False, 0),
    ())

MyClass._op_opSStructSD = IcePy.Operation(
    "opSStructSD",
    "opSStructSD",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SStructSD_t, False, 0),),
    (((), _Test_SStructSD_t, False, 0),),
    ((), _Test_SStructSD_t, False, 0),
    ())

MyClass._op_opACVS = IcePy.Operation(
    "opACVS",
    "opACVS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ACVS_t, False, 0),),
    (((), _Test_ACVS_t, False, 0),),
    ((), _Test_ACVS_t, False, 0),
    ())

MyClass._op_opLCVS = IcePy.Operation(
    "opLCVS",
    "opLCVS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LCVS_t, False, 0),),
    (((), _Test_LCVS_t, False, 0),),
    ((), _Test_LCVS_t, False, 0),
    ())

MyClass._op_opACRS = IcePy.Operation(
    "opACRS",
    "opACRS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_ACRS_t, False, 0),),
    (((), _Test_ACRS_t, False, 0),),
    ((), _Test_ACRS_t, False, 0),
    ())

MyClass._op_opLCRS = IcePy.Operation(
    "opLCRS",
    "opLCRS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LCRS_t, False, 0),),
    (((), _Test_LCRS_t, False, 0),),
    ((), _Test_LCRS_t, False, 0),
    ())

MyClass._op_opAEnS = IcePy.Operation(
    "opAEnS",
    "opAEnS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AEnS_t, False, 0),),
    (((), _Test_AEnS_t, False, 0),),
    ((), _Test_AEnS_t, False, 0),
    ())

MyClass._op_opLEnS = IcePy.Operation(
    "opLEnS",
    "opLEnS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LEnS_t, False, 0),),
    (((), _Test_LEnS_t, False, 0),),
    ((), _Test_LEnS_t, False, 0),
    ())

MyClass._op_opKEnS = IcePy.Operation(
    "opKEnS",
    "opKEnS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KEnS_t, False, 0),),
    (((), _Test_KEnS_t, False, 0),),
    ((), _Test_KEnS_t, False, 0),
    ())

MyClass._op_opQEnS = IcePy.Operation(
    "opQEnS",
    "opQEnS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QEnS_t, False, 0),),
    (((), _Test_QEnS_t, False, 0),),
    ((), _Test_QEnS_t, False, 0),
    ())

MyClass._op_opSEnS = IcePy.Operation(
    "opSEnS",
    "opSEnS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SEnS_t, False, 0),),
    (((), _Test_SEnS_t, False, 0),),
    ((), _Test_SEnS_t, False, 0),
    ())

MyClass._op_opAIPrxS = IcePy.Operation(
    "opAIPrxS",
    "opAIPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_AIPrxS_t, False, 0),),
    (((), _Test_AIPrxS_t, False, 0),),
    ((), _Test_AIPrxS_t, False, 0),
    ())

MyClass._op_opLIPrxS = IcePy.Operation(
    "opLIPrxS",
    "opLIPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_LIPrxS_t, False, 0),),
    (((), _Test_LIPrxS_t, False, 0),),
    ((), _Test_LIPrxS_t, False, 0),
    ())

MyClass._op_opKIPrxS = IcePy.Operation(
    "opKIPrxS",
    "opKIPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_KIPrxS_t, False, 0),),
    (((), _Test_KIPrxS_t, False, 0),),
    ((), _Test_KIPrxS_t, False, 0),
    ())

MyClass._op_opQIPrxS = IcePy.Operation(
    "opQIPrxS",
    "opQIPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_QIPrxS_t, False, 0),),
    (((), _Test_QIPrxS_t, False, 0),),
    ((), _Test_QIPrxS_t, False, 0),
    ())

MyClass._op_opSIPrxS = IcePy.Operation(
    "opSIPrxS",
    "opSIPrxS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_SIPrxS_t, False, 0),),
    (((), _Test_SIPrxS_t, False, 0),),
    ((), _Test_SIPrxS_t, False, 0),
    ())

MyClass._op_opCustomIntS = IcePy.Operation(
    "opCustomIntS",
    "opCustomIntS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_CustomIntS_t, False, 0),),
    (((), _Test_CustomIntS_t, False, 0),),
    ((), _Test_CustomIntS_t, False, 0),
    ())

MyClass._op_opCustomCVS = IcePy.Operation(
    "opCustomCVS",
    "opCustomCVS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_CustomCVS_t, False, 0),),
    (((), _Test_CustomCVS_t, False, 0),),
    ((), _Test_CustomCVS_t, False, 0),
    ())

MyClass._op_opCustomIntSS = IcePy.Operation(
    "opCustomIntSS",
    "opCustomIntSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_CustomIntSS_t, False, 0),),
    (((), _Test_CustomIntSS_t, False, 0),),
    ((), _Test_CustomIntSS_t, False, 0),
    ())

MyClass._op_opCustomCVSS = IcePy.Operation(
    "opCustomCVSS",
    "opCustomCVSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_CustomCVSS_t, False, 0),),
    (((), _Test_CustomCVSS_t, False, 0),),
    ((), _Test_CustomCVSS_t, False, 0),
    ())

__all__ = ["MyClass", "MyClassPrx", "_Test_MyClassPrx_t"]
