# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Slice.escape.Test.escaped_and._exec_forward import _generated_test_Slice_escape_Test_escaped_and__execPrx_t

from generated.test.Slice.escape.Test.escaped_and._for_forward import _generated_test_Slice_escape_Test_escaped_and__for_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Slice.escape.Test.escaped_and._exec import _execPrx

@dataclass(eq=False)
class _for(Value):
    foo: int = 0
    _from: _execPrx | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::and::for"

_generated_test_Slice_escape_Test_escaped_and__for_t = IcePy.defineValue(
    "::Test::and::for",
    _for,
    -1,
    ("python:identifier:_for", ),
    False,
    None,
    (
        ("foo", (), IcePy._t_int, False, 0),
        ("_from", ("python:identifier:_from", ), _generated_test_Slice_escape_Test_escaped_and__execPrx_t, False, 0)
    ))

setattr(_for, '_ice_type', _generated_test_Slice_escape_Test_escaped_and__for_t)

__all__ = ["_for", "_generated_test_Slice_escape_Test_escaped_and__for_t"]
