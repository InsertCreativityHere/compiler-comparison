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

from generated.test.Slice.escape.Test.escaped_and._assert import _generated_test_Slice_escape_Test_escaped_and__assert_t

from generated.test.Slice.escape.Test.escaped_and._continue import _generated_test_Slice_escape_Test_escaped_and__continue_t

from generated.test.Slice.escape.Test.escaped_and._del import _del
from generated.test.Slice.escape.Test.escaped_and._del import _delPrx

from generated.test.Slice.escape.Test.escaped_and._del_forward import _generated_test_Slice_escape_Test_escaped_and__delPrx_t

from generated.test.Slice.escape.Test.escaped_and._exec import _exec
from generated.test.Slice.escape.Test.escaped_and._exec import _execPrx

from generated.test.Slice.escape.Test.escaped_and._exec_forward import _generated_test_Slice_escape_Test_escaped_and__execPrx_t

from generated.test.Slice.escape.Test.escaped_and._for_forward import _generated_test_Slice_escape_Test_escaped_and__for_t

from generated.test.Slice.escape.Test.escaped_and._if_forward import _generated_test_Slice_escape_Test_escaped_and__ifPrx_t

from generated.test.Slice.escape.Test.escaped_and._is import _generated_test_Slice_escape_Test_escaped_and__is_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Slice.escape.Test.escaped_and._assert import _assert
    from generated.test.Slice.escape.Test.escaped_and._continue import _continue
    from generated.test.Slice.escape.Test.escaped_and._for import _for
    from generated.test.Slice.escape.Test.escaped_and._if import _ifPrx


class _ifPrx(_execPrx, _delPrx):

    def _raise(self, _else: _continue, _return: _for | None, _while: _delPrx | None, _yield: _execPrx | None, _or: _ifPrx | None, _global: int, context: dict[str, str] | None = None) -> _assert:
        return _if._op_raise.invoke(self, ((_else, _return, _while, _yield, _or, _global), context))

    def _raiseAsync(self, _else: _continue, _return: _for | None, _while: _delPrx | None, _yield: _execPrx | None, _or: _ifPrx | None, _global: int, context: dict[str, str] | None = None) -> Awaitable[_assert]:
        return _if._op_raise.invokeAsync(self, ((_else, _return, _while, _yield, _or, _global), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> _ifPrx | None:
        return checkedCast(_ifPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[_ifPrx | None ]:
        return checkedCastAsync(_ifPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> _ifPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> _ifPrx | None:
        return uncheckedCast(_ifPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::and::if"

IcePy.defineProxy("::Test::and::if", _ifPrx)

class _if(_exec, _del, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::and::del", "::Test::and::exec", "::Test::and::if", )
    _op_raise: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::and::if"

    @abstractmethod
    def _raise(self, _else: _continue, _return: _for | None, _while: _delPrx | None, _yield: _execPrx | None, _or: _ifPrx | None, _global: int, current: Current) -> _assert | Awaitable[_assert]:
        pass

_if._op_raise = IcePy.Operation(
    "raise",
    "_raise",
    OperationMode.Normal,
    None,
    ("python:identifier:_raise", ),
    ((("python:identifier:_else", ), _generated_test_Slice_escape_Test_escaped_and__continue_t, False, 0), (("python:identifier:_return", ), _generated_test_Slice_escape_Test_escaped_and__for_t, False, 0), (("python:identifier:_while", ), _generated_test_Slice_escape_Test_escaped_and__delPrx_t, False, 0), (("python:identifier:_yield", ), _generated_test_Slice_escape_Test_escaped_and__execPrx_t, False, 0), (("python:identifier:_or", ), _generated_test_Slice_escape_Test_escaped_and__ifPrx_t, False, 0), (("python:identifier:_global", ), IcePy._t_int, False, 0)),
    (),
    ((), _generated_test_Slice_escape_Test_escaped_and__assert_t, False, 0),
    (_generated_test_Slice_escape_Test_escaped_and__is_t,))

__all__ = ["_if", "_ifPrx", "_generated_test_Slice_escape_Test_escaped_and__ifPrx_t"]
