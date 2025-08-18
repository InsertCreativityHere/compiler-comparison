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

from generated.test.Slice.escape.Test.escaped_and._exec_forward import _generated_test_Slice_escape_Test_escaped_and__execPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class _execPrx(ObjectPrx):

    def _finally(self, context: dict[str, str] | None = None) -> None:
        return _exec._op_finally.invoke(self, ((), context))

    def _finallyAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return _exec._op_finally.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> _execPrx | None:
        return checkedCast(_execPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[_execPrx | None ]:
        return checkedCastAsync(_execPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> _execPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> _execPrx | None:
        return uncheckedCast(_execPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::and::exec"

IcePy.defineProxy("::Test::and::exec", _execPrx)

class _exec(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::and::exec", )
    _op_finally: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::and::exec"

    @abstractmethod
    def _finally(self, current: Current) -> None | Awaitable[None]:
        pass

_exec._op_finally = IcePy.Operation(
    "finally",
    "_finally",
    OperationMode.Normal,
    None,
    ("python:identifier:_finally", ),
    (),
    (),
    None,
    ())

__all__ = ["_exec", "_execPrx", "_generated_test_Slice_escape_Test_escaped_and__execPrx_t"]
