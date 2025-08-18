# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1Dict import _LocalTest_C1Dict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1


@dataclass
class S5:
    c1dict: dict[int, C1 | None] = field(default_factory=dict)

_LocalTest_S5_t = IcePy.defineStruct(
    "::LocalTest::S5",
    S5,
    (),
    (("c1dict", (), _LocalTest_C1Dict_t),))

__all__ = ["S5", "_LocalTest_S5_t"]
