# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class Ex(UserException):
    reason: str = ""

    _ice_id = "::Test::Inner::Ex"

_generated_test_Ice_objects_Test_Inner_Ex_t = IcePy.defineException(
    "::Test::Inner::Ex",
    Ex,
    (),
    None,
    (("reason", (), IcePy._t_string, False, 0),))

setattr(Ex, '_ice_type', _generated_test_Ice_objects_Test_Inner_Ex_t)

__all__ = ["Ex", "_generated_test_Ice_objects_Test_Inner_Ex_t"]
