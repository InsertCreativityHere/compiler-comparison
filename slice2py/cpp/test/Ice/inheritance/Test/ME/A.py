# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.ME.A_forward import _Test_ME_A_t

from dataclasses import dataclass

@dataclass(eq=False)
class A(Value):
    aA: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ME::A"

_Test_ME_A_t = IcePy.defineValue(
    "::Test::ME::A",
    A,
    -1,
    (),
    False,
    None,
    (("aA", (), IcePy._t_int, False, 0),))

setattr(A, '_ice_type', _Test_ME_A_t)

__all__ = ["A", "_Test_ME_A_t"]
