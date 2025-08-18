# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class guard:
    default: int = 0

_import_guard_t = IcePy.defineStruct(
    "::import::guard",
    guard,
    (),
    (("default", (), IcePy._t_int),))

__all__ = ["guard", "_import_guard_t"]
