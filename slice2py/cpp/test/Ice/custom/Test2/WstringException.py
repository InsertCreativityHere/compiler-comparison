# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class WstringException(UserException):
    reason: str = ""

    _ice_id = "::Test2::WstringException"

_Test2_WstringException_t = IcePy.defineException(
    "::Test2::WstringException",
    WstringException,
    (),
    None,
    (("reason", (), IcePy._t_string, False, 0),))

setattr(WstringException, '_ice_type', _Test2_WstringException_t)

__all__ = ["WstringException", "_Test2_WstringException_t"]
