# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class E(UserException):

    _ice_id = "::Test::E"

_Test_E_t = IcePy.defineException(
    "::Test::E",
    E,
    (),
    None,
    ())

setattr(E, '_ice_type', _Test_E_t)

__all__ = ["E", "_Test_E_t"]
