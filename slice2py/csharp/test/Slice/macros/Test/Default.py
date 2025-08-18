# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Default_forward import _Test_Default_t

from dataclasses import dataclass

@dataclass(eq=False)
class Default(Value):
    x: int = 0
    y: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Default"

_Test_Default_t = IcePy.defineValue(
    "::Test::Default",
    Default,
    -1,
    (),
    False,
    None,
    (
        ("x", (), IcePy._t_int, False, 0),
        ("y", (), IcePy._t_int, False, 0)
    ))

setattr(Default, '_ice_type', _Test_Default_t)

__all__ = ["Default", "_Test_Default_t"]
