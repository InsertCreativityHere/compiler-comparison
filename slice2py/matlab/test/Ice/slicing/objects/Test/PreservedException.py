# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class PreservedException(UserException):

    _ice_id = "::Test::PreservedException"

_Test_PreservedException_t = IcePy.defineException(
    "::Test::PreservedException",
    PreservedException,
    (),
    None,
    ())

setattr(PreservedException, '_ice_type', _Test_PreservedException_t)

__all__ = ["PreservedException", "_Test_PreservedException_t"]
