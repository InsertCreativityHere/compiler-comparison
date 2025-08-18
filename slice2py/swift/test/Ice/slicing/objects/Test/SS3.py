# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SS1_forward import _Test_SS1_t

from Test.SS2_forward import _Test_SS2_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.SS1 import SS1
    from Test.SS2 import SS2


@dataclass
class SS3:
    c1: SS1 | None = None
    c2: SS2 | None = None

_Test_SS3_t = IcePy.defineStruct(
    "::Test::SS3",
    SS3,
    (),
    (
        ("c1", (), _Test_SS1_t),
        ("c2", (), _Test_SS2_t)
    ))

__all__ = ["SS3", "_Test_SS3_t"]
