# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class WstringStruct:
    s: str = ""

_Test1_WstringStruct_t = IcePy.defineStruct(
    "::Test1::WstringStruct",
    WstringStruct,
    (),
    (("s", (), IcePy._t_string),))

__all__ = ["WstringStruct", "_Test1_WstringStruct_t"]
