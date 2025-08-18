# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.optional.Test.E_forward import _generated_test_Ice_optional_Test_E_t

from generated.test.Ice.optional.Test.FixedStruct import FixedStruct
from generated.test.Ice.optional.Test.FixedStruct import _generated_test_Ice_optional_Test_FixedStruct_t

@dataclass(eq=False)
class E(Value):
    fse: FixedStruct = field(default_factory=FixedStruct)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::E"

_generated_test_Ice_optional_Test_E_t = IcePy.defineValue(
    "::Test::E",
    E,
    -1,
    (),
    False,
    None,
    (("fse", (), _generated_test_Ice_optional_Test_FixedStruct_t, False, 0),))

setattr(E, '_ice_type', _generated_test_Ice_optional_Test_E_t)

__all__ = ["E", "_generated_test_Ice_optional_Test_E_t"]
