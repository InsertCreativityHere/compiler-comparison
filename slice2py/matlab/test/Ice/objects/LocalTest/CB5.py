# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.CB5_forward import _LocalTest_CB5_t

from LocalTest.S1Dict import _LocalTest_S1Dict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.S1 import S1

@dataclass(eq=False)
class CB5(Value):
    s1dict: dict[int, S1] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB5"

_LocalTest_CB5_t = IcePy.defineValue(
    "::LocalTest::CB5",
    CB5,
    -1,
    (),
    False,
    None,
    (("s1dict", (), _LocalTest_S1Dict_t, False, 0),))

setattr(CB5, '_ice_type', _LocalTest_CB5_t)

__all__ = ["CB5", "_LocalTest_CB5_t"]
