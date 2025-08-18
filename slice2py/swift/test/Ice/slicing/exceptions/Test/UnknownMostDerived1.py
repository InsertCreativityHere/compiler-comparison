# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.KnownIntermediate import KnownIntermediate
from Test.KnownIntermediate import _Test_KnownIntermediate_t

from dataclasses import dataclass


@dataclass
class UnknownMostDerived1(KnownIntermediate):
    umd1: str = ""

    _ice_id = "::Test::UnknownMostDerived1"

_Test_UnknownMostDerived1_t = IcePy.defineException(
    "::Test::UnknownMostDerived1",
    UnknownMostDerived1,
    (),
    _Test_KnownIntermediate_t,
    (("umd1", (), IcePy._t_string, False, 0),))

setattr(UnknownMostDerived1, '_ice_type', _Test_UnknownMostDerived1_t)

__all__ = ["UnknownMostDerived1", "_Test_UnknownMostDerived1_t"]
