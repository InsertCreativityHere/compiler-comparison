# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class MyStruct:
    v: int = 0

_generated_test_Ice_scope_Test_Inner_MyStruct_t = IcePy.defineStruct(
    "::Test::Inner::MyStruct",
    MyStruct,
    (),
    (("v", (), IcePy._t_int),))

__all__ = ["MyStruct", "_generated_test_Ice_scope_Test_Inner_MyStruct_t"]
