# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base

from Test.Base_forward import _Test_Base_t

from Test.G_forward import _Test_G_t

from dataclasses import dataclass

@dataclass(eq=False)
class G(Base):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::G"

_Test_G_t = IcePy.defineValue(
    "::Test::G",
    G,
    -1,
    (),
    False,
    _Test_Base_t,
    ())

setattr(G, '_ice_type', _Test_G_t)

__all__ = ["G", "_Test_G_t"]
