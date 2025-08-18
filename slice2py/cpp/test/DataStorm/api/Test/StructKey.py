# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class StructKey:
    value: int = 0

_Test_StructKey_t = IcePy.defineStruct(
    "::Test::StructKey",
    StructKey,
    (),
    (("value", (), IcePy._t_int),))

__all__ = ["StructKey", "_Test_StructKey_t"]
