# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class Struct4:
    foo: str = "foo"
    bar: str = ""

_Test_Struct4_t = IcePy.defineStruct(
    "::Test::Struct4",
    Struct4,
    (),
    (
        ("foo", (), IcePy._t_string),
        ("bar", (), IcePy._t_string)
    ))

__all__ = ["Struct4", "_Test_Struct4_t"]
