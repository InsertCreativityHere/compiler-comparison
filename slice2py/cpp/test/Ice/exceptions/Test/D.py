# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class D(UserException):
    dMem: int = 0

    _ice_id = "::Test::D"

_Test_D_t = IcePy.defineException(
    "::Test::D",
    D,
    (),
    None,
    (("dMem", (), IcePy._t_int, False, 0),))

setattr(D, '_ice_type', _Test_D_t)

__all__ = ["D", "_Test_D_t"]
