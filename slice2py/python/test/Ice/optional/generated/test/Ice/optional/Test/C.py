# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.optional.Test.B import B

from generated.test.Ice.optional.Test.B_forward import _generated_test_Ice_optional_Test_B_t

from generated.test.Ice.optional.Test.C_forward import _generated_test_Ice_optional_Test_C_t

@dataclass(eq=False)
class C(B):
    ss: str = ""
    ms: str | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

_generated_test_Ice_optional_Test_C_t = IcePy.defineValue(
    "::Test::C",
    C,
    -1,
    (),
    False,
    _generated_test_Ice_optional_Test_B_t,
    (
        ("ss", (), IcePy._t_string, False, 0),
        ("ms", (), IcePy._t_string, True, 890)
    ))

setattr(C, '_ice_type', _generated_test_Ice_optional_Test_C_t)

__all__ = ["C", "_generated_test_Ice_optional_Test_C_t"]
