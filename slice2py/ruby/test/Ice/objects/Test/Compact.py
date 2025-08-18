# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Compact_forward import _Test_Compact_t

from dataclasses import dataclass

@dataclass(eq=False)
class Compact(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Compact"

_Test_Compact_t = IcePy.defineValue(
    "::Test::Compact",
    Compact,
    1,
    (),
    False,
    None,
    ())

setattr(Compact, '_ice_type', _Test_Compact_t)

__all__ = ["Compact", "_Test_Compact_t"]
