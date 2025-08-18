# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PBase import PBase

from Test.PBase_forward import _Test_PBase_t

from Test.PCUnknown_forward import _Test_PCUnknown_t

from dataclasses import dataclass

@dataclass(eq=False)
class PCUnknown(PBase):
    pu: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PCUnknown"

_Test_PCUnknown_t = IcePy.defineValue(
    "::Test::PCUnknown",
    PCUnknown,
    -1,
    (),
    False,
    _Test_PBase_t,
    (("pu", (), IcePy._t_string, False, 0),))

setattr(PCUnknown, '_ice_type', _Test_PCUnknown_t)

__all__ = ["PCUnknown", "_Test_PCUnknown_t"]
