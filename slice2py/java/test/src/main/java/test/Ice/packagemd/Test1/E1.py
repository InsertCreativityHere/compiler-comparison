# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class E1(UserException):
    i: int = 0

    _ice_id = "::Test1::E1"

_Test1_E1_t = IcePy.defineException(
    "::Test1::E1",
    E1,
    (),
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(E1, '_ice_type', _Test1_E1_t)

__all__ = ["E1", "_Test1_E1_t"]
