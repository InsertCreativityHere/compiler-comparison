# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.E_forward import _Test_E_t

from Test.FixedStruct import FixedStruct
from Test.FixedStruct import _Test_FixedStruct_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class E(Value):
    fse: FixedStruct = field(default_factory=FixedStruct)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::E"

_Test_E_t = IcePy.defineValue(
    "::Test::E",
    E,
    -1,
    (),
    False,
    None,
    (("fse", (), _Test_FixedStruct_t, False, 0),))

setattr(E, '_ice_type', _Test_E_t)

__all__ = ["E", "_Test_E_t"]
