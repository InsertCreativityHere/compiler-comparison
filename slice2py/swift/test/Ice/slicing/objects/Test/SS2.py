# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.BSeq import _Test_BSeq_t

from Test.SS2_forward import _Test_SS2_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.B import B

@dataclass(eq=False)
class SS2(Value):
    s: list[B | None] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SS2"

_Test_SS2_t = IcePy.defineValue(
    "::Test::SS2",
    SS2,
    -1,
    (),
    False,
    None,
    (("s", (), _Test_BSeq_t, False, 0),))

setattr(SS2, '_ice_type', _Test_SS2_t)

__all__ = ["SS2", "_Test_SS2_t"]
