# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.Common.BrowserProcessController_forward import _Test_Common_BrowserProcessControllerPrx_t

from Test.Common.ProcessController import ProcessController
from Test.Common.ProcessController import ProcessControllerPrx

from Test.Common.ProcessFailedException import _Test_Common_ProcessFailedException_t

from Test.Common.Process_forward import _Test_Common_ProcessPrx_t

from Test.Common.StringSeq import _Test_Common_StringSeq_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from Test.Common.Process import ProcessPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class BrowserProcessControllerPrx(ProcessControllerPrx):

    def redirect(self, url: str, context: dict[str, str] | None = None) -> None:
        return BrowserProcessController._op_redirect.invoke(self, ((url, ), context))

    def redirectAsync(self, url: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return BrowserProcessController._op_redirect.invokeAsync(self, ((url, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> BrowserProcessControllerPrx | None:
        return checkedCast(BrowserProcessControllerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[BrowserProcessControllerPrx | None ]:
        return checkedCastAsync(BrowserProcessControllerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> BrowserProcessControllerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> BrowserProcessControllerPrx | None:
        return uncheckedCast(BrowserProcessControllerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::BrowserProcessController"

IcePy.defineProxy("::Test::Common::BrowserProcessController", BrowserProcessControllerPrx)

class BrowserProcessController(ProcessController, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Common::BrowserProcessController", "::Test::Common::ProcessController", )
    _op_redirect: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::BrowserProcessController"

    @abstractmethod
    def redirect(self, url: str, current: Current) -> None | Awaitable[None]:
        pass

BrowserProcessController._op_redirect = IcePy.Operation(
    "redirect",
    "redirect",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

__all__ = ["BrowserProcessController", "BrowserProcessControllerPrx", "_Test_Common_BrowserProcessControllerPrx_t"]
