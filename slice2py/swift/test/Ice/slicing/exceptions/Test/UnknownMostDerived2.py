# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.UnknownIntermediate import UnknownIntermediate
from Test.UnknownIntermediate import _Test_UnknownIntermediate_t

from dataclasses import dataclass


@dataclass
class UnknownMostDerived2(UnknownIntermediate):
    umd2: str = ""

    _ice_id = "::Test::UnknownMostDerived2"

_Test_UnknownMostDerived2_t = IcePy.defineException(
    "::Test::UnknownMostDerived2",
    UnknownMostDerived2,
    (),
    _Test_UnknownIntermediate_t,
    (("umd2", (), IcePy._t_string, False, 0),))

setattr(UnknownMostDerived2, '_ice_type', _Test_UnknownMostDerived2_t)

__all__ = ["UnknownMostDerived2", "_Test_UnknownMostDerived2_t"]
