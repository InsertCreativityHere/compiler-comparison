# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class OtherException(UserException):
    x: int = 0
    y: int = 0
    z: int = 0
    b: bool = False

    _ice_id = "::Test::OtherException"

_Test_OtherException_t = IcePy.defineException(
    "::Test::OtherException",
    OtherException,
    (),
    None,
    (
        ("x", (), IcePy._t_int, False, 0),
        ("y", (), IcePy._t_int, False, 0),
        ("z", (), IcePy._t_int, False, 0),
        ("b", (), IcePy._t_bool, False, 0)
    ))

setattr(OtherException, '_ice_type', _Test_OtherException_t)

__all__ = ["OtherException", "_Test_OtherException_t"]
