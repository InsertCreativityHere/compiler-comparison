# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PBase import PBase

from Test.PBase_forward import _Test_PBase_t

from Test.Preserved_forward import _Test_Preserved_t

from dataclasses import dataclass

@dataclass(eq=False)
class Preserved(PBase):
    ps: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Preserved"

_Test_Preserved_t = IcePy.defineValue(
    "::Test::Preserved",
    Preserved,
    -1,
    (),
    False,
    _Test_PBase_t,
    (("ps", (), IcePy._t_string, False, 0),))

setattr(Preserved, '_ice_type', _Test_Preserved_t)

__all__ = ["Preserved", "_Test_Preserved_t"]
