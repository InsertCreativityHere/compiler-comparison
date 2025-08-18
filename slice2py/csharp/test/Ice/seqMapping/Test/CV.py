# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.CV_forward import _Test_CV_t

from dataclasses import dataclass

@dataclass(eq=False)
class CV(Value):
    i: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CV"

_Test_CV_t = IcePy.defineValue(
    "::Test::CV",
    CV,
    -1,
    (),
    False,
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(CV, '_ice_type', _Test_CV_t)

__all__ = ["CV", "_Test_CV_t"]
