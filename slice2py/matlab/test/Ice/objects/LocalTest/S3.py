# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1Seq import _LocalTest_C1Seq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1


@dataclass
class S3:
    c1seq: list[C1 | None] = field(default_factory=list)

_LocalTest_S3_t = IcePy.defineStruct(
    "::LocalTest::S3",
    S3,
    (),
    (("c1seq", (), _LocalTest_C1Seq_t),))

__all__ = ["S3", "_LocalTest_S3_t"]
