# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from abstract.fixed import _abstract_fixed_t
from abstract.fixed import fixed

from dataclasses import dataclass


@dataclass
class foreach(fixed):
    goto: int = 0
    Message: int = 0

    _ice_id = "::abstract::foreach"

_abstract_foreach_t = IcePy.defineException(
    "::abstract::foreach",
    foreach,
    (),
    _abstract_fixed_t,
    (
        ("goto", (), IcePy._t_int, False, 0),
        ("Message", (), IcePy._t_int, False, 0)
    ))

setattr(foreach, '_ice_type', _abstract_foreach_t)

__all__ = ["foreach", "_abstract_foreach_t"]
