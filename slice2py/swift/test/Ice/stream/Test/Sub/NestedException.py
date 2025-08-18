# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class NestedException(UserException):
    str: str = ""

    _ice_id = "::Test::Sub::NestedException"

_Test_Sub_NestedException_t = IcePy.defineException(
    "::Test::Sub::NestedException",
    NestedException,
    (),
    None,
    (("str", (), IcePy._t_string, False, 0),))

setattr(NestedException, '_ice_type', _Test_Sub_NestedException_t)

__all__ = ["NestedException", "_Test_Sub_NestedException_t"]
