# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.E import E
from Test.E import _Test_E_t

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class S:
    en: E = E.E1

_Test_S_t = IcePy.defineStruct(
    "::Test::S",
    S,
    (),
    (("en", (), _Test_E_t),))

__all__ = ["S", "_Test_S_t"]
