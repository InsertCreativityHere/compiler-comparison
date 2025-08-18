# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.A1_forward import _Test_A1_t

from dataclasses import dataclass

@dataclass(eq=False)
class A1(Value):
    name: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::A1"

_Test_A1_t = IcePy.defineValue(
    "::Test::A1",
    A1,
    -1,
    (),
    False,
    None,
    (("name", (), IcePy._t_string, False, 0),))

setattr(A1, '_ice_type', _Test_A1_t)

__all__ = ["A1", "_Test_A1_t"]
