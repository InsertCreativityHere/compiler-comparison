# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class break:
    while: int = 0
    constructor: str = ""

_await_break_t = IcePy.defineStruct(
    "::await::break",
    break,
    (),
    (
        ("while", (), IcePy._t_int),
        ("constructor", (), IcePy._t_string)
    ))

__all__ = ["break", "_await_break_t"]
