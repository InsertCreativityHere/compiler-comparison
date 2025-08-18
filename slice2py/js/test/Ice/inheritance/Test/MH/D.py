# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MH.C import C

from Test.MH.C_forward import _Test_MH_C_t

from Test.MH.D_forward import _Test_MH_D_t

from dataclasses import dataclass

@dataclass(eq=False)
class D(C):
    dD: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MH::D"

_Test_MH_D_t = IcePy.defineValue(
    "::Test::MH::D",
    D,
    -1,
    (),
    False,
    _Test_MH_C_t,
    (("dD", (), IcePy._t_int, False, 0),))

setattr(D, '_ice_type', _Test_MH_D_t)

__all__ = ["D", "_Test_MH_D_t"]
