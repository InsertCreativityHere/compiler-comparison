# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class UserEx(UserException):

    _ice_id = "::Test::UserEx"

_Test_UserEx_t = IcePy.defineException(
    "::Test::UserEx",
    UserEx,
    (),
    None,
    ())

setattr(UserEx, '_ice_type', _Test_UserEx_t)

__all__ = ["UserEx", "_Test_UserEx_t"]
