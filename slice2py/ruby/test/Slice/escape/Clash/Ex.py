# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class Ex(UserException):
    istr: int = 0
    ostr: int = 0

    _ice_id = "::Clash::Ex"

_Clash_Ex_t = IcePy.defineException(
    "::Clash::Ex",
    Ex,
    (),
    None,
    (
        ("istr", (), IcePy._t_short, False, 0),
        ("ostr", (), IcePy._t_int, False, 0)
    ))

setattr(Ex, '_ice_type', _Clash_Ex_t)

__all__ = ["Ex", "_Clash_Ex_t"]
