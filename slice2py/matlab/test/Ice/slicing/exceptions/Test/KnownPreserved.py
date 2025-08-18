# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base
from Test.Base import _Test_Base_t

from dataclasses import dataclass


@dataclass
class KnownPreserved(Base):
    kp: str = ""

    _ice_id = "::Test::KnownPreserved"

_Test_KnownPreserved_t = IcePy.defineException(
    "::Test::KnownPreserved",
    KnownPreserved,
    (),
    _Test_Base_t,
    (("kp", (), IcePy._t_string, False, 0),))

setattr(KnownPreserved, '_ice_type', _Test_KnownPreserved_t)

__all__ = ["KnownPreserved", "_Test_KnownPreserved_t"]
