# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.optional.Test.G1 import G1
from generated.test.Ice.optional.Test.G1 import _generated_test_Ice_optional_Test_G1_t

from generated.test.Ice.optional.Test.G2 import G2
from generated.test.Ice.optional.Test.G2 import _generated_test_Ice_optional_Test_G2_t

from generated.test.Ice.optional.Test.G_forward import _generated_test_Ice_optional_Test_G_t

@dataclass(eq=False)
class G(Value):
    gg1Opt: G1 | None = None
    gg2: G2 = field(default_factory=G2)
    gg2Opt: G2 | None = None
    gg1: G1 = field(default_factory=G1)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::G"

_generated_test_Ice_optional_Test_G_t = IcePy.defineValue(
    "::Test::G",
    G,
    -1,
    (),
    False,
    None,
    (
        ("gg1Opt", (), _generated_test_Ice_optional_Test_G1_t, True, 1),
        ("gg2", (), _generated_test_Ice_optional_Test_G2_t, False, 0),
        ("gg2Opt", (), _generated_test_Ice_optional_Test_G2_t, True, 0),
        ("gg1", (), _generated_test_Ice_optional_Test_G1_t, False, 0)
    ))

setattr(G, '_ice_type', _generated_test_Ice_optional_Test_G_t)

__all__ = ["G", "_generated_test_Ice_optional_Test_G_t"]
