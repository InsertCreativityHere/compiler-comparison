# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class fixed(UserException):
    for: int = 0

    _ice_id = "::await::fixed"

_await_fixed_t = IcePy.defineException(
    "::await::fixed",
    fixed,
    (),
    None,
    (("for", (), IcePy._t_int, False, 0),))

setattr(fixed, '_ice_type', _await_fixed_t)

__all__ = ["fixed", "_await_fixed_t"]
