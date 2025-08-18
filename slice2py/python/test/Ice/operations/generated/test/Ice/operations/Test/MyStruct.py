# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class MyStruct:
    i: int = 0
    j: int = 0

_generated_test_Ice_operations_Test_MyStruct_t = IcePy.defineStruct(
    "::Test::MyStruct",
    MyStruct,
    (),
    (
        ("i", (), IcePy._t_int),
        ("j", (), IcePy._t_int)
    ))

__all__ = ["MyStruct", "_generated_test_Ice_operations_Test_MyStruct_t"]
