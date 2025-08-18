# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class UserError(UserException):
    message: str = ""

    _ice_id = "::Test::UserError"

_Test_UserError_t = IcePy.defineException(
    "::Test::UserError",
    UserError,
    (),
    None,
    (("message", (), IcePy._t_string, False, 0),))

setattr(UserError, '_ice_type', _Test_UserError_t)

__all__ = ["UserError", "_Test_UserError_t"]
