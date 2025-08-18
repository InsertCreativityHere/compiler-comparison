# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SBSKnownDerived_forward import _Test_SBSKnownDerived_t

from Test.SBase import SBase

from Test.SBase_forward import _Test_SBase_t

from dataclasses import dataclass

@dataclass(eq=False)
class SBSKnownDerived(SBase):
    sbskd: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SBSKnownDerived"

_Test_SBSKnownDerived_t = IcePy.defineValue(
    "::Test::SBSKnownDerived",
    SBSKnownDerived,
    -1,
    (),
    False,
    _Test_SBase_t,
    (("sbskd", (), IcePy._t_string, False, 0),))

setattr(SBSKnownDerived, '_ice_type', _Test_SBSKnownDerived_t)

__all__ = ["SBSKnownDerived", "_Test_SBSKnownDerived_t"]
