# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class BaseException(UserException):

    _ice_id = "::Test::BaseException"

_Test_BaseException_t = IcePy.defineException(
    "::Test::BaseException",
    BaseException,
    (),
    None,
    ())

setattr(BaseException, '_ice_type', _Test_BaseException_t)

__all__ = ["BaseException", "_Test_BaseException_t"]
