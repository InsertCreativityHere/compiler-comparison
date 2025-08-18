# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.NoDefault_forward import _Test_NoDefault_t

from dataclasses import dataclass

@dataclass(eq=False)
class NoDefault(Value):
    x: int = 10
    y: int = 10

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::NoDefault"

_Test_NoDefault_t = IcePy.defineValue(
    "::Test::NoDefault",
    NoDefault,
    -1,
    (),
    False,
    None,
    (
        ("x", (), IcePy._t_int, False, 0),
        ("y", (), IcePy._t_int, False, 0)
    ))

setattr(NoDefault, '_ice_type', _Test_NoDefault_t)

__all__ = ["NoDefault", "_Test_NoDefault_t"]
