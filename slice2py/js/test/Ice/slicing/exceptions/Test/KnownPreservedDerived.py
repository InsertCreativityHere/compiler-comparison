# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.KnownPreserved import KnownPreserved
from Test.KnownPreserved import _Test_KnownPreserved_t

from dataclasses import dataclass


@dataclass
class KnownPreservedDerived(KnownPreserved):
    kpd: str = ""

    _ice_id = "::Test::KnownPreservedDerived"

_Test_KnownPreservedDerived_t = IcePy.defineException(
    "::Test::KnownPreservedDerived",
    KnownPreservedDerived,
    (),
    _Test_KnownPreserved_t,
    (("kpd", (), IcePy._t_string, False, 0),))

setattr(KnownPreservedDerived, '_ice_type', _Test_KnownPreservedDerived_t)

__all__ = ["KnownPreservedDerived", "_Test_KnownPreservedDerived_t"]
