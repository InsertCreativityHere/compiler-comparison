# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class OptionalException(UserException):
    req: bool = False
    a: int | None = 5
    b: str | None = None

    _ice_id = "::Test::OptionalException"

_generated_test_Ice_optional_Test_OptionalException_t = IcePy.defineException(
    "::Test::OptionalException",
    OptionalException,
    (),
    None,
    (
        ("req", (), IcePy._t_bool, False, 0),
        ("a", (), IcePy._t_int, True, 1),
        ("b", (), IcePy._t_string, True, 2)
    ))

setattr(OptionalException, '_ice_type', _generated_test_Ice_optional_Test_OptionalException_t)

__all__ = ["OptionalException", "_generated_test_Ice_optional_Test_OptionalException_t"]
