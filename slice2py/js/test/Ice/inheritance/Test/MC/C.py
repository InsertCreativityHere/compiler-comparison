# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MC.B import B

from Test.MC.B_forward import _Test_MC_B_t

from Test.MC.C_forward import _Test_MC_C_t

from dataclasses import dataclass

@dataclass(eq=False)
class C(B):
    cC: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MC::C"

_Test_MC_C_t = IcePy.defineValue(
    "::Test::MC::C",
    C,
    -1,
    (),
    False,
    _Test_MC_B_t,
    (("cC", (), IcePy._t_int, False, 0),))

setattr(C, '_ice_type', _Test_MC_C_t)

__all__ = ["C", "_Test_MC_C_t"]
