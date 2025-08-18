# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1Dict import _LocalTest_S1Dict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.S1 import S1


@dataclass
class S6:
    s1dict: dict[int, S1] = field(default_factory=dict)

_LocalTest_S6_t = IcePy.defineStruct(
    "::LocalTest::S6",
    S6,
    (),
    (("s1dict", (), _LocalTest_S1Dict_t),))

__all__ = ["S6", "_LocalTest_S6_t"]
