# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.E import E

from Test.E_forward import _Test_E_t

from Test.F_forward import _Test_F_t

from Test.FixedStruct import FixedStruct
from Test.FixedStruct import _Test_FixedStruct_t

from dataclasses import dataclass

@dataclass(eq=False)
class F(E):
    fsf: FixedStruct | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F"

_Test_F_t = IcePy.defineValue(
    "::Test::F",
    F,
    -1,
    (),
    False,
    _Test_E_t,
    (("fsf", (), _Test_FixedStruct_t, True, 1),))

setattr(F, '_ice_type', _Test_F_t)

__all__ = ["F", "_Test_F_t"]
