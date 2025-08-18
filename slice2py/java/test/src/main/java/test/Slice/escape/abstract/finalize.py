# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from abstract.assert import _abstract_assert_t

from abstract.break import _abstract_break_t

from abstract.catch import catch
from abstract.catch import catchPrx

from abstract.clone import _abstract_clone_t

from abstract.default import default
from abstract.default import defaultPrx

from abstract.default_forward import _abstract_defaultPrx_t

from abstract.finalize_forward import _abstract_finalizePrx_t

from abstract.hashCode import _abstract_hashCode_t

from abstract.notify_forward import _abstract_notify_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from abstract.assert import assert
    from abstract.break import break
    from abstract.finalize import finalizePrx
    from abstract.notify import notify
    from collections.abc import Awaitable
    from collections.abc import Sequence


class finalizePrx(defaultPrx, catchPrx):

    def notify(self, notifyAll: break, null: notify | None, package: finalizePrx | None, return: defaultPrx | None, super: int, context: dict[str, str] | None = None) -> assert:
        return finalize._op_notify.invoke(self, ((notifyAll, null, package, return, super), context))

    def notifyAsync(self, notifyAll: break, null: notify | None, package: finalizePrx | None, return: defaultPrx | None, super: int, context: dict[str, str] | None = None) -> Awaitable[assert]:
        return finalize._op_notify.invokeAsync(self, ((notifyAll, null, package, return, super), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> finalizePrx | None:
        return checkedCast(finalizePrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[finalizePrx | None ]:
        return checkedCastAsync(finalizePrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> finalizePrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> finalizePrx | None:
        return uncheckedCast(finalizePrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::finalize"

IcePy.defineProxy("::abstract::finalize", finalizePrx)

class finalize(default, catch, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::abstract::catch", "::abstract::default", "::abstract::finalize", )
    _op_notify: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::finalize"

    @abstractmethod
    def notify(self, notifyAll: break, null: notify | None, package: finalizePrx | None, return: defaultPrx | None, super: int, current: Current) -> assert | Awaitable[assert]:
        pass

finalize._op_notify = IcePy.Operation(
    "notify",
    "notify",
    OperationMode.Normal,
    None,
    (),
    (((), _abstract_break_t, False, 0), ((), _abstract_notify_t, False, 0), ((), _abstract_finalizePrx_t, False, 0), ((), _abstract_defaultPrx_t, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    ((), _abstract_assert_t, False, 0),
    (_abstract_hashCode_t, _abstract_clone_t))

__all__ = ["finalize", "finalizePrx", "_abstract_finalizePrx_t"]
