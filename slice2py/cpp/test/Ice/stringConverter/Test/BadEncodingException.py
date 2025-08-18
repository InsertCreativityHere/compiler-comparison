# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class BadEncodingException(UserException):

    _ice_id = "::Test::BadEncodingException"

_Test_BadEncodingException_t = IcePy.defineException(
    "::Test::BadEncodingException",
    BadEncodingException,
    (),
    None,
    ())

setattr(BadEncodingException, '_ice_type', _Test_BadEncodingException_t)

__all__ = ["BadEncodingException", "_Test_BadEncodingException_t"]
