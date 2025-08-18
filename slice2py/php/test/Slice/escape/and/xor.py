# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from and.require_once import require_once

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class xor:
    abstract: int = 0
    var: int = require_once

_and_xor_t = IcePy.defineStruct(
    "::and::xor",
    xor,
    (),
    (
        ("abstract", (), IcePy._t_int),
        ("var", (), IcePy._t_int)
    ))

__all__ = ["xor", "_and_xor_t"]
