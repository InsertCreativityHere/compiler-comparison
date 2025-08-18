# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class F(UserException):
    data: str = ""

    _ice_id = "::Test::F"

_Test_F_t = IcePy.defineException(
    "::Test::F",
    F,
    (),
    None,
    (("data", (), IcePy._t_string, False, 0),))

setattr(F, '_ice_type', _Test_F_t)

__all__ = ["F", "_Test_F_t"]
