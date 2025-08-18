# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.YesDefault_forward import _Test_YesDefault_t

from dataclasses import dataclass

@dataclass(eq=False)
class YesDefault(Value):
    x: int = 0
    y: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::YesDefault"

_Test_YesDefault_t = IcePy.defineValue(
    "::Test::YesDefault",
    YesDefault,
    -1,
    (),
    False,
    None,
    (
        ("x", (), IcePy._t_int, False, 0),
        ("y", (), IcePy._t_int, False, 0)
    ))

setattr(YesDefault, '_ice_type', _Test_YesDefault_t)

__all__ = ["YesDefault", "_Test_YesDefault_t"]
