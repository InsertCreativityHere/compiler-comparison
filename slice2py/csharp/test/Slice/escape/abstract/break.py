# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class break:
    readonly: int = 0

_abstract_break_t = IcePy.defineStruct(
    "::abstract::break",
    break,
    (),
    (("readonly", (), IcePy._t_int),))

__all__ = ["break", "_abstract_break_t"]
