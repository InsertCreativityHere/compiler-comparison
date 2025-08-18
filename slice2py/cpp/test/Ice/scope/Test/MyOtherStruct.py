# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class MyOtherStruct:
    s: str = ""

_Test_MyOtherStruct_t = IcePy.defineStruct(
    "::Test::MyOtherStruct",
    MyOtherStruct,
    (),
    (("s", (), IcePy._t_string),))

__all__ = ["MyOtherStruct", "_Test_MyOtherStruct_t"]
