# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class and:
    begin: int = 0

_BEGIN_and_t = IcePy.defineStruct(
    "::BEGIN::and",
    and,
    (),
    (("begin", (), IcePy._t_int),))

__all__ = ["and", "_BEGIN_and_t"]
