# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class VarStruct:
    m: str = ""

_generated_test_Ice_optional_Test_VarStruct_t = IcePy.defineStruct(
    "::Test::VarStruct",
    VarStruct,
    (),
    (("m", (), IcePy._t_string),))

__all__ = ["VarStruct", "_generated_test_Ice_optional_Test_VarStruct_t"]
