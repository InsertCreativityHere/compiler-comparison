# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base
from Test.Base import _Test_Base_t

from dataclasses import dataclass


@dataclass
class KnownDerived(Base):
    kd: str = ""

    _ice_id = "::Test::KnownDerived"

_Test_KnownDerived_t = IcePy.defineException(
    "::Test::KnownDerived",
    KnownDerived,
    (),
    _Test_Base_t,
    (("kd", (), IcePy._t_string, False, 0),))

setattr(KnownDerived, '_ice_type', _Test_KnownDerived_t)

__all__ = ["KnownDerived", "_Test_KnownDerived_t"]
