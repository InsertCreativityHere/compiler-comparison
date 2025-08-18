# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1_forward import _LocalTest_C1_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1


@dataclass
class S1:
    c1: C1 | None = None

_LocalTest_S1_t = IcePy.defineStruct(
    "::LocalTest::S1",
    S1,
    (),
    (("c1", (), _LocalTest_C1_t),))

__all__ = ["S1", "_LocalTest_S1_t"]
