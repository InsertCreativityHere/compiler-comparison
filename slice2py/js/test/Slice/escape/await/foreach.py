# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from await.fixed import _await_fixed_t
from await.fixed import fixed

from dataclasses import dataclass


@dataclass
class foreach(fixed):
    goto: int = 0
    if: int = 0

    _ice_id = "::await::foreach"

_await_foreach_t = IcePy.defineException(
    "::await::foreach",
    foreach,
    (),
    _await_fixed_t,
    (
        ("goto", (), IcePy._t_int, False, 0),
        ("if", (), IcePy._t_int, False, 0)
    ))

setattr(foreach, '_ice_type', _await_foreach_t)

__all__ = ["foreach", "_await_foreach_t"]
