# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class StructKey:
    i: int = 0
    s: str = ""

_generated_test_Ice_objects_Test_StructKey_t = IcePy.defineStruct(
    "::Test::StructKey",
    StructKey,
    (),
    (
        ("i", (), IcePy._t_int),
        ("s", (), IcePy._t_string)
    ))

__all__ = ["StructKey", "_generated_test_Ice_objects_Test_StructKey_t"]
