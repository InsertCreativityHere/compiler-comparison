# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.optional.Test.WD_forward import _generated_test_Ice_optional_Test_WD_t

@dataclass(eq=False)
class WD(Value):
    a: int | None = 5
    s: str | None = "test"

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::WD"

_generated_test_Ice_optional_Test_WD_t = IcePy.defineValue(
    "::Test::WD",
    WD,
    -1,
    (),
    False,
    None,
    (
        ("a", (), IcePy._t_int, True, 1),
        ("s", (), IcePy._t_string, True, 2)
    ))

setattr(WD, '_ice_type', _generated_test_Ice_optional_Test_WD_t)

__all__ = ["WD", "_generated_test_Ice_optional_Test_WD_t"]
