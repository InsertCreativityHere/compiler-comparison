# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A import A as _m_Test_A_A
from Test.A import _Test_A_t

from dataclasses import dataclass


@dataclass
class A(_m_Test_A_A):
    a2Mem: int = 0

    _ice_id = "::Test::Mod::A"

_Test_Mod_A_t = IcePy.defineException(
    "::Test::Mod::A",
    A,
    (),
    _Test_A_t,
    (("a2Mem", (), IcePy._t_int, False, 0),))

setattr(A, '_ice_type', _Test_Mod_A_t)

__all__ = ["A", "_Test_Mod_A_t"]
