# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from and.endif import _and_endif_t
from and.endif import endif

from and.require_once import require_once

from dataclasses import dataclass


@dataclass
class endwhile(endif):
    eval: int = 0
    exit: int = require_once

    _ice_id = "::and::endwhile"

_and_endwhile_t = IcePy.defineException(
    "::and::endwhile",
    endwhile,
    (),
    _and_endif_t,
    (
        ("eval", (), IcePy._t_int, False, 0),
        ("exit", (), IcePy._t_int, False, 0)
    ))

setattr(endwhile, '_ice_type', _and_endwhile_t)

__all__ = ["endwhile", "_and_endwhile_t"]
