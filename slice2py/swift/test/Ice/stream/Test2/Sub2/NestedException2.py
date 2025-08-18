# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class NestedException2(UserException):
    str: str = ""

    _ice_id = "::Test2::Sub2::NestedException2"

_Test2_Sub2_NestedException2_t = IcePy.defineException(
    "::Test2::Sub2::NestedException2",
    NestedException2,
    (),
    None,
    (("str", (), IcePy._t_string, False, 0),))

setattr(NestedException2, '_ice_type', _Test2_Sub2_NestedException2_t)

__all__ = ["NestedException2", "_Test2_Sub2_NestedException2_t"]
