# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Compact import Compact

from Test.CompactExt_forward import _Test_CompactExt_t

from Test.Compact_forward import _Test_Compact_t

from dataclasses import dataclass

@dataclass(eq=False)
class CompactExt(Compact):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CompactExt"

_Test_CompactExt_t = IcePy.defineValue(
    "::Test::CompactExt",
    CompactExt,
    789,
    (),
    False,
    _Test_Compact_t,
    ())

setattr(CompactExt, '_ice_type', _Test_CompactExt_t)

__all__ = ["CompactExt", "_Test_CompactExt_t"]
