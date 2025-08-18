# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.E_forward import _Test_E_t

from Test.F_forward import _Test_F_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.E import E

@dataclass(eq=False)
class F(Value):
    e1: E | None = None
    e2: E | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F"

_Test_F_t = IcePy.defineValue(
    "::Test::F",
    F,
    -1,
    (),
    False,
    None,
    (
        ("e1", (), _Test_E_t, False, 0),
        ("e2", (), _Test_E_t, False, 0)
    ))

setattr(F, '_ice_type', _Test_F_t)

__all__ = ["F", "_Test_F_t"]
