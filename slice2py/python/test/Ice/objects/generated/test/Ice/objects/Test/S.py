# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class S:
    str: str = ""

_generated_test_Ice_objects_Test_S_t = IcePy.defineStruct(
    "::Test::S",
    S,
    (),
    (("str", (), IcePy._t_string),))

__all__ = ["S", "_generated_test_Ice_objects_Test_S_t"]
