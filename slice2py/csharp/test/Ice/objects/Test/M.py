# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.LMap import _Test_LMap_t

from Test.M_forward import _Test_M_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.L import L
    from Test.StructKey import StructKey

@dataclass(eq=False)
class M(Value):
    v: dict[StructKey, L | None] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::M"

_Test_M_t = IcePy.defineValue(
    "::Test::M",
    M,
    -1,
    (),
    False,
    None,
    (("v", (), _Test_LMap_t, False, 0),))

setattr(M, '_ice_type', _Test_M_t)

__all__ = ["M", "_Test_M_t"]
