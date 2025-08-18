# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class return(UserException):
    Int32: int = 0

    _ice_id = "::import::return"

_import_return_t = IcePy.defineException(
    "::import::return",
    return,
    (),
    None,
    (("Int32", (), IcePy._t_int, False, 0),))

setattr(return, '_ice_type', _import_return_t)

__all__ = ["return", "_import_return_t"]
