# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.IntSeq import _Test_IntSeq_t

from Test.NV import _Test_NV_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class TEstNv:
    d: dict[int, int] = field(default_factory=dict)
    s: list[int] = field(default_factory=list)

_Test_TEstNv_t = IcePy.defineStruct(
    "::Test::TEstNv",
    TEstNv,
    (),
    (
        ("d", (), _Test_NV_t),
        ("s", (), _Test_IntSeq_t)
    ))

__all__ = ["TEstNv", "_Test_TEstNv_t"]
