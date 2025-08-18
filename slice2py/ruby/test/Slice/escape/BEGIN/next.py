# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class next(UserException):
    new: int = 0

    _ice_id = "::BEGIN::next"

_BEGIN_next_t = IcePy.defineException(
    "::BEGIN::next",
    next,
    (),
    None,
    (("new", (), IcePy._t_int, False, 0),))

setattr(next, '_ice_type', _BEGIN_next_t)

__all__ = ["next", "_BEGIN_next_t"]
