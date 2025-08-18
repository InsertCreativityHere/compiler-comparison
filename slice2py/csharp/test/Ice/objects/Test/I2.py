# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.I2_forward import _Test_I2_t

from dataclasses import dataclass

@dataclass(eq=False)
class I2(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::I2"

_Test_I2_t = IcePy.defineValue(
    "::Test::I2",
    I2,
    -1,
    (),
    False,
    None,
    ())

setattr(I2, '_ice_type', _Test_I2_t)

__all__ = ["I2", "_Test_I2_t"]
