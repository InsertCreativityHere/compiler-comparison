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

from Test.RemoteObjectAdapter_forward import _Test_RemoteObjectAdapterPrx_t

from Test.TestIntf_forward import _Test_TestIntfPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Test.TestIntf import TestIntfPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class RemoteObjectAdapterPrx(ObjectPrx):

    def getTestIntf(self, context: dict[str, str] | None = None) -> TestIntfPrx | None:
        return RemoteObjectAdapter._op_getTestIntf.invoke(self, ((), context))

    def getTestIntfAsync(self, context: dict[str, str] | None = None) -> Awaitable[TestIntfPrx | None]:
        return RemoteObjectAdapter._op_getTestIntf.invokeAsync(self, ((), context))

    def deactivate(self, context: dict[str, str] | None = None) -> None:
        return RemoteObjectAdapter._op_deactivate.invoke(self, ((), context))

    def deactivateAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return RemoteObjectAdapter._op_deactivate.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> RemoteObjectAdapterPrx | None:
        return checkedCast(RemoteObjectAdapterPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[RemoteObjectAdapterPrx | None ]:
        return checkedCastAsync(RemoteObjectAdapterPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> RemoteObjectAdapterPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> RemoteObjectAdapterPrx | None:
        return uncheckedCast(RemoteObjectAdapterPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteObjectAdapter"

IcePy.defineProxy("::Test::RemoteObjectAdapter", RemoteObjectAdapterPrx)

class RemoteObjectAdapter(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::RemoteObjectAdapter", )
    _op_getTestIntf: IcePy.Operation
    _op_deactivate: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::RemoteObjectAdapter"

    @abstractmethod
    def getTestIntf(self, current: Current) -> TestIntfPrx | None | Awaitable[TestIntfPrx | None]:
        pass

    @abstractmethod
    def deactivate(self, current: Current) -> None | Awaitable[None]:
        pass

RemoteObjectAdapter._op_getTestIntf = IcePy.Operation(
    "getTestIntf",
    "getTestIntf",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _Test_TestIntfPrx_t, False, 0),
    ())

RemoteObjectAdapter._op_deactivate = IcePy.Operation(
    "deactivate",
    "deactivate",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

__all__ = ["RemoteObjectAdapter", "RemoteObjectAdapterPrx", "_Test_RemoteObjectAdapterPrx_t"]
