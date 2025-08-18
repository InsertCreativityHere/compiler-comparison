# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class InterruptedException(UserException):

    _ice_id = "::Test::InterruptedException"

_Test_InterruptedException_t = IcePy.defineException(
    "::Test::InterruptedException",
    InterruptedException,
    (),
    None,
    ())

setattr(InterruptedException, '_ice_type', _Test_InterruptedException_t)

__all__ = ["InterruptedException", "_Test_InterruptedException_t"]
