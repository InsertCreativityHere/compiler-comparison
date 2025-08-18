# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base
from Test.Base import _Test_Base_t

from dataclasses import dataclass


@dataclass
class UnknownIntermediate(Base):
    ui: str = ""

    _ice_id = "::Test::UnknownIntermediate"

_Test_UnknownIntermediate_t = IcePy.defineException(
    "::Test::UnknownIntermediate",
    UnknownIntermediate,
    (),
    _Test_Base_t,
    (("ui", (), IcePy._t_string, False, 0),))

setattr(UnknownIntermediate, '_ice_type', _Test_UnknownIntermediate_t)

__all__ = ["UnknownIntermediate", "_Test_UnknownIntermediate_t"]
