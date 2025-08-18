# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.C_forward import _Test_C_t

from dataclasses import dataclass

@dataclass(eq=False)
class C(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

_Test_C_t = IcePy.defineValue(
    "::Test::C",
    C,
    -1,
    (),
    False,
    None,
    ())

setattr(C, '_ice_type', _Test_C_t)

__all__ = ["C", "_Test_C_t"]
