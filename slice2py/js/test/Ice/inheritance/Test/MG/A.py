# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.MG.A_forward import _Test_MG_A_t

from dataclasses import dataclass

@dataclass(eq=False)
class A(Value):
    aA: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MG::A"

_Test_MG_A_t = IcePy.defineValue(
    "::Test::MG::A",
    A,
    -1,
    (),
    False,
    None,
    (("aA", (), IcePy._t_int, False, 0),))

setattr(A, '_ice_type', _Test_MG_A_t)

__all__ = ["A", "_Test_MG_A_t"]
