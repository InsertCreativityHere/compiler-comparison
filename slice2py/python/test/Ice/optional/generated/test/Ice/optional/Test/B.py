# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.optional.Test.A import A

from generated.test.Ice.optional.Test.A_forward import _generated_test_Ice_optional_Test_A_t

from generated.test.Ice.optional.Test.B_forward import _generated_test_Ice_optional_Test_B_t

@dataclass(eq=False)
class B(A):
    requiredB: int = 0
    md: int | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

_generated_test_Ice_optional_Test_B_t = IcePy.defineValue(
    "::Test::B",
    B,
    -1,
    (),
    False,
    _generated_test_Ice_optional_Test_A_t,
    (
        ("requiredB", (), IcePy._t_int, False, 0),
        ("md", (), IcePy._t_int, True, 10)
    ))

setattr(B, '_ice_type', _generated_test_Ice_optional_Test_B_t)

__all__ = ["B", "_generated_test_Ice_optional_Test_B_t"]
