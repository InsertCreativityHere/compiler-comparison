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

from abc import ABC
from abc import abstractmethod

from generated.test.Slice.escape.Test.escaped_and._del_forward import _generated_test_Slice_escape_Test_escaped_and__delPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class _delPrx(ObjectPrx):

    def _elif(self, _else: int, context: dict[str, str] | None = None) -> int:
        return _del._op_elif.invoke(self, ((_else, ), context))

    def _elifAsync(self, _else: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        return _del._op_elif.invokeAsync(self, ((_else, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> _delPrx | None:
        return checkedCast(_delPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[_delPrx | None ]:
        return checkedCastAsync(_delPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> _delPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> _delPrx | None:
        return uncheckedCast(_delPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::and::del"

IcePy.defineProxy("::Test::and::del", _delPrx)

class _del(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::and::del", )
    _op_elif: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::and::del"

    @abstractmethod
    def _elif(self, _else: int, current: Current) -> int | Awaitable[int]:
        pass

_del._op_elif = IcePy.Operation(
    "elif",
    "_elif",
    OperationMode.Normal,
    None,
    ("python:identifier:_elif", ),
    ((("python:identifier:_else", ), IcePy._t_int, False, 0),),
    ((("python:identifier:_except", ), IcePy._t_int, False, 0),),
    None,
    ())

__all__ = ["_del", "_delPrx", "_generated_test_Slice_escape_Test_escaped_and__delPrx_t"]
