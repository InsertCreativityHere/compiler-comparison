# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A import A
from Test.A import _Test_A_t

from dataclasses import dataclass


@dataclass
class B(A):
    bMem: int = 0

    _ice_id = "::Test::B"

_Test_B_t = IcePy.defineException(
    "::Test::B",
    B,
    (),
    _Test_A_t,
    (("bMem", (), IcePy._t_int, False, 0),))

setattr(B, '_ice_type', _Test_B_t)

__all__ = ["B", "_Test_B_t"]
