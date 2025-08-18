# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.G1 import G1
from Test.G1 import _Test_G1_t

from Test.G2 import G2
from Test.G2 import _Test_G2_t

from Test.G_forward import _Test_G_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class G(Value):
    gg1Opt: G1 | None = None
    gg2: G2 = field(default_factory=G2)
    gg2Opt: G2 | None = None
    gg1: G1 = field(default_factory=G1)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::G"

_Test_G_t = IcePy.defineValue(
    "::Test::G",
    G,
    -1,
    (),
    False,
    None,
    (
        ("gg1Opt", (), _Test_G1_t, True, 1),
        ("gg2", (), _Test_G2_t, False, 0),
        ("gg2Opt", (), _Test_G2_t, True, 0),
        ("gg1", (), _Test_G1_t, False, 0)
    ))

setattr(G, '_ice_type', _Test_G_t)

__all__ = ["G", "_Test_G_t"]
