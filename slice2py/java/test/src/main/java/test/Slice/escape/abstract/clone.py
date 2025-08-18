# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from abstract.hashCode import _abstract_hashCode_t
from abstract.hashCode import hashCode

from dataclasses import dataclass


@dataclass
class clone(hashCode):
    native: str = ""

    _ice_id = "::abstract::clone"

_abstract_clone_t = IcePy.defineException(
    "::abstract::clone",
    clone,
    (),
    _abstract_hashCode_t,
    (("native", (), IcePy._t_string, False, 0),))

setattr(clone, '_ice_type', _abstract_clone_t)

__all__ = ["clone", "_abstract_clone_t"]
