# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base
from Test.Base import _Test_Base_t

from dataclasses import dataclass


@dataclass
class KnownIntermediate(Base):
    ki: str = ""

    _ice_id = "::Test::KnownIntermediate"

_Test_KnownIntermediate_t = IcePy.defineException(
    "::Test::KnownIntermediate",
    KnownIntermediate,
    (),
    _Test_Base_t,
    (("ki", (), IcePy._t_string, False, 0),))

setattr(KnownIntermediate, '_ice_type', _Test_KnownIntermediate_t)

__all__ = ["KnownIntermediate", "_Test_KnownIntermediate_t"]
