# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Clash.Intf_forward import _Clash_IntfPrx_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class IntfPrx(ObjectPrx):

    def context(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_context.invoke(self, ((), context))

    def contextAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_context.invokeAsync(self, ((), context))

    def current(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_current.invoke(self, ((), context))

    def currentAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_current.invokeAsync(self, ((), context))

    def response(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_response.invoke(self, ((), context))

    def responseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_response.invokeAsync(self, ((), context))

    def typeId(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_typeId.invoke(self, ((), context))

    def typeIdAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_typeId.invokeAsync(self, ((), context))

    def del(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_del.invoke(self, ((), context))

    def delAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_del.invokeAsync(self, ((), context))

    def cookie(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_cookie.invoke(self, ((), context))

    def cookieAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_cookie.invokeAsync(self, ((), context))

    def sync(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_sync.invoke(self, ((), context))

    def syncAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_sync.invokeAsync(self, ((), context))

    def inS(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_inS.invoke(self, ((), context))

    def inSAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_inS.invokeAsync(self, ((), context))

    def istr(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_istr.invoke(self, ((), context))

    def istrAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_istr.invokeAsync(self, ((), context))

    def obj(self, context: dict[str, str] | None = None) -> None:
        return Intf._op_obj.invoke(self, ((), context))

    def objAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_obj.invokeAsync(self, ((), context))

    def op(self, context: str, current: str, response: str, ex: str, sent: str, cookie: str, sync: str, result: str, istr: str, ostr: str, proxy: str | None = None, obj: int | None = None, context_: dict[str, str] | None = None) -> None:
        return Intf._op_op.invoke(self, ((context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj), context_))

    def opAsync(self, context: str, current: str, response: str, ex: str, sent: str, cookie: str, sync: str, result: str, istr: str, ostr: str, proxy: str | None = None, obj: int | None = None, context_: dict[str, str] | None = None) -> Awaitable[None]:
        return Intf._op_op.invokeAsync(self, ((context, current, response, ex, sent, cookie, sync, result, istr, ostr, proxy, obj), context_))

    def opOut(self, context_: dict[str, str] | None = None) -> tuple[str, str, str, str, str, str, str, str, str, str, str | None, int | None]:
        return Intf._op_opOut.invoke(self, ((), context_))

    def opOutAsync(self, context_: dict[str, str] | None = None) -> Awaitable[tuple[str, str, str, str, str, str, str, str, str, str, str | None, int | None]]:
        return Intf._op_opOut.invokeAsync(self, ((), context_))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> IntfPrx | None:
        return checkedCast(IntfPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[IntfPrx | None ]:
        return checkedCastAsync(IntfPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> IntfPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> IntfPrx | None:
        return uncheckedCast(IntfPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Clash::Intf"

IcePy.defineProxy("::Clash::Intf", IntfPrx)

class Intf(Object, ABC):

    _ice_ids: Sequence[str] = ("::Clash::Intf", "::Ice::Object", )
    _op_context: IcePy.Operation
    _op_current: IcePy.Operation
    _op_response: IcePy.Operation
    _op_typeId: IcePy.Operation
    _op_del: IcePy.Operation
    _op_cookie: IcePy.Operation
    _op_sync: IcePy.Operation
    _op_inS: IcePy.Operation
    _op_istr: IcePy.Operation
    _op_obj: IcePy.Operation
    _op_op: IcePy.Operation
    _op_opOut: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Clash::Intf"

    @abstractmethod
    def context(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def current(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def response(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def typeId(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def del(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def cookie(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def sync(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def inS(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def istr(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def obj(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def op(self, context: str, current: str, response: str, ex: str, sent: str, cookie: str, sync: str, result: str, istr: str, ostr: str, proxy: str | None, obj: int | None, current_: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opOut(self, current_: Current) -> tuple[str, str, str, str, str, str, str, str, str, str, str | None, int | None] | Awaitable[tuple[str, str, str, str, str, str, str, str, str, str, str | None, int | None]]:
        pass

Intf._op_context = IcePy.Operation(
    "context",
    "context",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_current = IcePy.Operation(
    "current",
    "current",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_response = IcePy.Operation(
    "response",
    "response",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_typeId = IcePy.Operation(
    "typeId",
    "typeId",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_del = IcePy.Operation(
    "del",
    "del",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_cookie = IcePy.Operation(
    "cookie",
    "cookie",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_sync = IcePy.Operation(
    "sync",
    "sync",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_inS = IcePy.Operation(
    "inS",
    "inS",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_istr = IcePy.Operation(
    "istr",
    "istr",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_obj = IcePy.Operation(
    "obj",
    "obj",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Intf._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, True, 1), ((), IcePy._t_int, True, 2)),
    (),
    None,
    ())

Intf._op_opOut = IcePy.Operation(
    "opOut",
    "opOut",
    OperationMode.Normal,
    None,
    (),
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, True, 1), ((), IcePy._t_int, True, 2)),
    None,
    ())

__all__ = ["Intf", "IntfPrx", "_Clash_IntfPrx_t"]
