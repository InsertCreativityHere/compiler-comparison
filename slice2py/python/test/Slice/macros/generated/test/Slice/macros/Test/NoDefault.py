# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Slice.macros.Test.NoDefault_forward import _generated_test_Slice_macros_Test_NoDefault_t

@dataclass(eq=False)
class NoDefault(Value):
    x: int = 0
    y: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::NoDefault"

_generated_test_Slice_macros_Test_NoDefault_t = IcePy.defineValue(
    "::Test::NoDefault",
    NoDefault,
    -1,
    (),
    False,
    None,
    (
        ("x", (), IcePy._t_int, False, 0),
        ("y", (), IcePy._t_int, False, 0)
    ))

setattr(NoDefault, '_ice_type', _generated_test_Slice_macros_Test_NoDefault_t)

__all__ = ["NoDefault", "_generated_test_Slice_macros_Test_NoDefault_t"]
