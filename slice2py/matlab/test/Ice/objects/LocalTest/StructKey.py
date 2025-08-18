# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class StructKey:
    i: int = 0
    j: int = 0

_LocalTest_StructKey_t = IcePy.defineStruct(
    "::LocalTest::StructKey",
    StructKey,
    (),
    (
        ("i", (), IcePy._t_int),
        ("j", (), IcePy._t_int)
    ))

__all__ = ["StructKey", "_LocalTest_StructKey_t"]
