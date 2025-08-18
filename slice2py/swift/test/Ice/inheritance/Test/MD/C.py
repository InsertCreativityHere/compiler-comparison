# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MD.B import B

from Test.MD.B_forward import _Test_MD_B_t

from Test.MD.C_forward import _Test_MD_C_t

from dataclasses import dataclass

@dataclass(eq=False)
class C(B):
    cC: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MD::C"

_Test_MD_C_t = IcePy.defineValue(
    "::Test::MD::C",
    C,
    -1,
    (),
    False,
    _Test_MD_B_t,
    (("cC", (), IcePy._t_int, False, 0),))

setattr(C, '_ice_type', _Test_MD_C_t)

__all__ = ["C", "_Test_MD_C_t"]
