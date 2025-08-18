# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.optional.Test.E import E

from generated.test.Ice.optional.Test.E_forward import _generated_test_Ice_optional_Test_E_t

from generated.test.Ice.optional.Test.F_forward import _generated_test_Ice_optional_Test_F_t

from generated.test.Ice.optional.Test.FixedStruct import FixedStruct
from generated.test.Ice.optional.Test.FixedStruct import _generated_test_Ice_optional_Test_FixedStruct_t

@dataclass(eq=False)
class F(E):
    fsf: FixedStruct | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F"

_generated_test_Ice_optional_Test_F_t = IcePy.defineValue(
    "::Test::F",
    F,
    -1,
    (),
    False,
    _generated_test_Ice_optional_Test_E_t,
    (("fsf", (), _generated_test_Ice_optional_Test_FixedStruct_t, True, 1),))

setattr(F, '_ice_type', _generated_test_Ice_optional_Test_F_t)

__all__ = ["F", "_generated_test_Ice_optional_Test_F_t"]
