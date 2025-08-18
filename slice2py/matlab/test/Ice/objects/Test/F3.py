# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.F1_forward import _Test_F1_t

from Test.F2_forward import _Test_F2Prx_t

from Test.F3_forward import _Test_F3_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.F1 import F1
    from Test.F2 import F2Prx

@dataclass(eq=False)
class F3(Value):
    f1: F1 | None = None
    f2: F2Prx | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F3"

_Test_F3_t = IcePy.defineValue(
    "::Test::F3",
    F3,
    -1,
    (),
    False,
    None,
    (
        ("f1", (), _Test_F1_t, False, 0),
        ("f2", (), _Test_F2Prx_t, False, 0)
    ))

setattr(F3, '_ice_type', _Test_F3_t)

__all__ = ["F3", "_Test_F3_t"]
