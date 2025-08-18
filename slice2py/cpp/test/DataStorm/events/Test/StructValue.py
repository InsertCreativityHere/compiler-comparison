# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class StructValue:
    firstName: str = ""
    lastName: str = ""
    age: int = 0

_Test_StructValue_t = IcePy.defineStruct(
    "::Test::StructValue",
    StructValue,
    (),
    (
        ("firstName", (), IcePy._t_string),
        ("lastName", (), IcePy._t_string),
        ("age", (), IcePy._t_int)
    ))

__all__ = ["StructValue", "_Test_StructValue_t"]
