# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.B import B
from Test.B import _Test_B_t

from dataclasses import dataclass


@dataclass
class C(B):
    cMem: int = 0

    _ice_id = "::Test::C"

_Test_C_t = IcePy.defineException(
    "::Test::C",
    C,
    (),
    _Test_B_t,
    (("cMem", (), IcePy._t_int, False, 0),))

setattr(C, '_ice_type', _Test_C_t)

__all__ = ["C", "_Test_C_t"]
