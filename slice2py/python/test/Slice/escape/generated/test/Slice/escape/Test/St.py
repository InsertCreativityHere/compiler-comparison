# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class St:
    v: str = ""
    istr: int = 0
    ostr: int = 0
    rhs: int = 0
    other: str = ""

_generated_test_Slice_escape_Test_St_t = IcePy.defineStruct(
    "::Test::St",
    St,
    (),
    (
        ("v", (), IcePy._t_string),
        ("istr", (), IcePy._t_short),
        ("ostr", (), IcePy._t_int),
        ("rhs", (), IcePy._t_int),
        ("other", (), IcePy._t_string)
    ))

__all__ = ["St", "_generated_test_Slice_escape_Test_St_t"]
