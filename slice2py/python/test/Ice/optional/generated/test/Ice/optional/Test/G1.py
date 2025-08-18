# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class G1:
    a: str = ""

_generated_test_Ice_optional_Test_G1_t = IcePy.defineStruct(
    "::Test::G1",
    G1,
    (),
    (("a", (), IcePy._t_string),))

__all__ = ["G1", "_generated_test_Ice_optional_Test_G1_t"]
