# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.C1Dict import _LocalTest_C1Dict_t

from LocalTest.CB4_forward import _LocalTest_CB4_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1

@dataclass(eq=False)
class CB4(Value):
    c1dict: dict[int, C1 | None] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB4"

_LocalTest_CB4_t = IcePy.defineValue(
    "::LocalTest::CB4",
    CB4,
    -1,
    (),
    False,
    None,
    (("c1dict", (), _LocalTest_C1Dict_t, False, 0),))

setattr(CB4, '_ice_type', _LocalTest_CB4_t)

__all__ = ["CB4", "_LocalTest_CB4_t"]
