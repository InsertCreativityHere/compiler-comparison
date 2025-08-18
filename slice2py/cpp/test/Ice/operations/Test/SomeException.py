# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class SomeException(UserException):

    _ice_id = "::Test::SomeException"

_Test_SomeException_t = IcePy.defineException(
    "::Test::SomeException",
    SomeException,
    (),
    None,
    ())

setattr(SomeException, '_ice_type', _Test_SomeException_t)

__all__ = ["SomeException", "_Test_SomeException_t"]
