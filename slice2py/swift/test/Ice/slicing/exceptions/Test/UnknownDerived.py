# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base
from Test.Base import _Test_Base_t

from dataclasses import dataclass


@dataclass
class UnknownDerived(Base):
    ud: str = ""

    _ice_id = "::Test::UnknownDerived"

_Test_UnknownDerived_t = IcePy.defineException(
    "::Test::UnknownDerived",
    UnknownDerived,
    (),
    _Test_Base_t,
    (("ud", (), IcePy._t_string, False, 0),))

setattr(UnknownDerived, '_ice_type', _Test_UnknownDerived_t)

__all__ = ["UnknownDerived", "_Test_UnknownDerived_t"]
