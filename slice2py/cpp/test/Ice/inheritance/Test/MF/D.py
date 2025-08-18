# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MF.C import C

from Test.MF.C_forward import _Test_MF_C_t

from Test.MF.D_forward import _Test_MF_D_t

from dataclasses import dataclass

@dataclass(eq=False)
class D(C):
    dD: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MF::D"

_Test_MF_D_t = IcePy.defineValue(
    "::Test::MF::D",
    D,
    -1,
    (),
    False,
    _Test_MF_C_t,
    (("dD", (), IcePy._t_int, False, 0),))

setattr(D, '_ice_type', _Test_MF_D_t)

__all__ = ["D", "_Test_MF_D_t"]
