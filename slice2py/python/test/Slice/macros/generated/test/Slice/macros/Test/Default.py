# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Slice.macros.Test.Default_forward import _generated_test_Slice_macros_Test_Default_t

@dataclass(eq=False)
class Default(Value):
    x: int = 10
    y: int = 10

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Default"

_generated_test_Slice_macros_Test_Default_t = IcePy.defineValue(
    "::Test::Default",
    Default,
    -1,
    (),
    False,
    None,
    (
        ("x", (), IcePy._t_int, False, 0),
        ("y", (), IcePy._t_int, False, 0)
    ))

setattr(Default, '_ice_type', _generated_test_Slice_macros_Test_Default_t)

__all__ = ["Default", "_generated_test_Slice_macros_Test_Default_t"]
