# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class CannotInterruptException(UserException):

    _ice_id = "::Test::CannotInterruptException"

_Test_CannotInterruptException_t = IcePy.defineException(
    "::Test::CannotInterruptException",
    CannotInterruptException,
    (),
    None,
    ())

setattr(CannotInterruptException, '_ice_type', _Test_CannotInterruptException_t)

__all__ = ["CannotInterruptException", "_Test_CannotInterruptException_t"]
