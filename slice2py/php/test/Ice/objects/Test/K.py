# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Ice.Value_forward import _Ice_Value_t

from Test.K_forward import _Test_K_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

@dataclass(eq=False)
class K(Value):
    value: Value | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::K"

_Test_K_t = IcePy.defineValue(
    "::Test::K",
    K,
    -1,
    (),
    False,
    None,
    (("value", (), _Ice_Value_t, False, 0),))

setattr(K, '_ice_type', _Test_K_t)

__all__ = ["K", "_Test_K_t"]
