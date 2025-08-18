# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from classdef.bitand import _classdef_bitand_t
from classdef.bitand import bitand

from dataclasses import dataclass


@dataclass
class bitor(bitand):
    enumeration: int = 1

    _ice_id = "::classdef::bitor"

_classdef_bitor_t = IcePy.defineException(
    "::classdef::bitor",
    bitor,
    (),
    _classdef_bitand_t,
    (("enumeration", (), IcePy._t_int, False, 0),))

setattr(bitor, '_ice_type', _classdef_bitor_t)

__all__ = ["bitor", "_classdef_bitor_t"]
