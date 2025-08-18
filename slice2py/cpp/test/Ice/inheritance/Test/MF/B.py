# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MF.A import A

from Test.MF.A_forward import _Test_MF_A_t

from Test.MF.B_forward import _Test_MF_B_t

from dataclasses import dataclass

@dataclass(eq=False)
class B(A):
    bB: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MF::B"

_Test_MF_B_t = IcePy.defineValue(
    "::Test::MF::B",
    B,
    -1,
    (),
    False,
    _Test_MF_A_t,
    (("bB", (), IcePy._t_int, False, 0),))

setattr(B, '_ice_type', _Test_MF_B_t)

__all__ = ["B", "_Test_MF_B_t"]
