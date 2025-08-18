# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MG.B import B

from Test.MG.B_forward import _Test_MG_B_t

from Test.MG.C_forward import _Test_MG_C_t

from dataclasses import dataclass

@dataclass(eq=False)
class C(B):
    cC: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MG::C"

_Test_MG_C_t = IcePy.defineValue(
    "::Test::MG::C",
    C,
    -1,
    (),
    False,
    _Test_MG_B_t,
    (("cC", (), IcePy._t_int, False, 0),))

setattr(C, '_ice_type', _Test_MG_C_t)

__all__ = ["C", "_Test_MG_C_t"]
