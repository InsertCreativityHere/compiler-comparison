# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from classdef.logical_forward import _classdef_logical_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from classdef.logical import logical


@dataclass
class bitand(UserException):
    identifier: str = "1"
    message: str = "2"
    end: logical | None = None

    _ice_id = "::classdef::bitand"

_classdef_bitand_t = IcePy.defineException(
    "::classdef::bitand",
    bitand,
    (),
    None,
    (
        ("identifier", (), IcePy._t_string, False, 0),
        ("message", (), IcePy._t_string, False, 0),
        ("end", (), _classdef_logical_t, False, 0)
    ))

setattr(bitand, '_ice_type', _classdef_bitand_t)

__all__ = ["bitand", "_classdef_bitand_t"]
