# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class endif(UserException):
    switch: int = 0

    _ice_id = "::and::endif"

_and_endif_t = IcePy.defineException(
    "::and::endif",
    endif,
    (),
    None,
    (("switch", (), IcePy._t_int, False, 0),))

setattr(endif, '_ice_type', _and_endif_t)

__all__ = ["endif", "_and_endif_t"]
