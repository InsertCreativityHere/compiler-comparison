# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.AlsoEmpty_forward import _Test_AlsoEmpty_t

from dataclasses import dataclass

@dataclass(eq=False)
class AlsoEmpty(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::AlsoEmpty"

_Test_AlsoEmpty_t = IcePy.defineValue(
    "::Test::AlsoEmpty",
    AlsoEmpty,
    -1,
    (),
    False,
    None,
    ())

setattr(AlsoEmpty, '_ice_type', _Test_AlsoEmpty_t)

__all__ = ["AlsoEmpty", "_Test_AlsoEmpty_t"]
