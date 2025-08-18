# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class Base(UserException):
    b: str = ""

    _ice_id = "::Test::Base"

_Test_Base_t = IcePy.defineException(
    "::Test::Base",
    Base,
    (),
    None,
    (("b", (), IcePy._t_string, False, 0),))

setattr(Base, '_ice_type', _Test_Base_t)

__all__ = ["Base", "_Test_Base_t"]
