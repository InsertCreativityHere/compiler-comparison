# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SBSUnknownDerived_forward import _Test_SBSUnknownDerived_t

from Test.SBase import SBase

from Test.SBase_forward import _Test_SBase_t

from dataclasses import dataclass

@dataclass(eq=False)
class SBSUnknownDerived(SBase):
    sbsud: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SBSUnknownDerived"

_Test_SBSUnknownDerived_t = IcePy.defineValue(
    "::Test::SBSUnknownDerived",
    SBSUnknownDerived,
    -1,
    (),
    False,
    _Test_SBase_t,
    (("sbsud", (), IcePy._t_string, False, 0),))

setattr(SBSUnknownDerived, '_ice_type', _Test_SBSUnknownDerived_t)

__all__ = ["SBSUnknownDerived", "_Test_SBSUnknownDerived_t"]
