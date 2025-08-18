# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base

from Test.Base_forward import _Test_Base_t

from Test.Extended_forward import _Test_Extended_t

from dataclasses import dataclass

@dataclass(eq=False)
class Extended(Base):
    e: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Extended"

_Test_Extended_t = IcePy.defineValue(
    "::Test::Extended",
    Extended,
    -1,
    (),
    False,
    _Test_Base_t,
    (("e", (), IcePy._t_int, False, 0),))

setattr(Extended, '_ice_type', _Test_Extended_t)

__all__ = ["Extended", "_Test_Extended_t"]
