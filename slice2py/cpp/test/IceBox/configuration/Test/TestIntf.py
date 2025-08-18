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

from Ice.StringSeq import _Ice_StringSeq_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class TestIntfPrx(ObjectPrx):

    def getProperty(self, name: str, context: dict[str, str] | None = None) -> str:
        return TestIntf._op_getProperty.invoke(self, ((name, ), context))

    def getPropertyAsync(self, name: str, context: dict[str, str] | None = None) -> Awaitable[str]:
        return TestIntf._op_getProperty.invokeAsync(self, ((name, ), context))

    def getArgs(self, context: dict[str, str] | None = None) -> list[str]:
        return TestIntf._op_getArgs.invoke(self, ((), context))

    def getArgsAsync(self, context: dict[str, str] | None = None) -> Awaitable[list[str]]:
        return TestIntf._op_getArgs.invokeAsync(self, ((), context))

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
    _op_getProperty: IcePy.Operation
    _op_getArgs: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::TestIntf"

    @abstractmethod
    def getProperty(self, name: str, current: Current) -> str | Awaitable[str]:
        pass

    @abstractmethod
    def getArgs(self, current: Current) -> Sequence[str] | Awaitable[Sequence[str]]:
        pass

TestIntf._op_getProperty = IcePy.Operation(
    "getProperty",
    "getProperty",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    ((), IcePy._t_string, False, 0),
    ())

TestIntf._op_getArgs = IcePy.Operation(
    "getArgs",
    "getArgs",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Ice_StringSeq_t, False, 0),
    ())

__all__ = ["TestIntf", "TestIntfPrx", "_Test_TestIntfPrx_t"]
