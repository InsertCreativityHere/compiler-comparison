# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test2.E1 import E1
from Test2.E1 import _Test2_E1_t

from dataclasses import dataclass


@dataclass
class E2(E1):
    l: int = 0

    _ice_id = "::Test2::E2"

_Test2_E2_t = IcePy.defineException(
    "::Test2::E2",
    E2,
    (),
    _Test2_E1_t,
    (("l", (), IcePy._t_long, False, 0),))

setattr(E2, '_ice_type', _Test2_E2_t)

__all__ = ["E2", "_Test2_E2_t"]
