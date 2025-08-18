# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class BaseEx(UserException):
    reason: str = ""

    _ice_id = "::Test::BaseEx"

_Test_BaseEx_t = IcePy.defineException(
    "::Test::BaseEx",
    BaseEx,
    (),
    None,
    (("reason", (), IcePy._t_string, False, 0),))

setattr(BaseEx, '_ice_type', _Test_BaseEx_t)

__all__ = ["BaseEx", "_Test_BaseEx_t"]
