# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class hashCode(UserException):
    if: int = 0

    _ice_id = "::abstract::hashCode"

_abstract_hashCode_t = IcePy.defineException(
    "::abstract::hashCode",
    hashCode,
    (),
    None,
    (("if", (), IcePy._t_int, False, 0),))

setattr(hashCode, '_ice_type', _abstract_hashCode_t)

__all__ = ["hashCode", "_abstract_hashCode_t"]
