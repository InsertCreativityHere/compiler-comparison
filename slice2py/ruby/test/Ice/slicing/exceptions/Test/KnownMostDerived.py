# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.KnownIntermediate import KnownIntermediate
from Test.KnownIntermediate import _Test_KnownIntermediate_t

from dataclasses import dataclass


@dataclass
class KnownMostDerived(KnownIntermediate):
    kmd: str = ""

    _ice_id = "::Test::KnownMostDerived"

_Test_KnownMostDerived_t = IcePy.defineException(
    "::Test::KnownMostDerived",
    KnownMostDerived,
    (),
    _Test_KnownIntermediate_t,
    (("kmd", (), IcePy._t_string, False, 0),))

setattr(KnownMostDerived, '_ice_type', _Test_KnownMostDerived_t)

__all__ = ["KnownMostDerived", "_Test_KnownMostDerived_t"]
