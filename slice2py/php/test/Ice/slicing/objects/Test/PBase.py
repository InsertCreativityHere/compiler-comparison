# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.PBase_forward import _Test_PBase_t

from dataclasses import dataclass

@dataclass(eq=False)
class PBase(Value):
    pi: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PBase"

_Test_PBase_t = IcePy.defineValue(
    "::Test::PBase",
    PBase,
    -1,
    (),
    False,
    None,
    (("pi", (), IcePy._t_int, False, 0),))

setattr(PBase, '_ice_type', _Test_PBase_t)

__all__ = ["PBase", "_Test_PBase_t"]
