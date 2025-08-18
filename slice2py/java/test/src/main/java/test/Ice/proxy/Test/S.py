# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A_forward import _Test_APrx_t

from Test.B_forward import _Test_BPrx_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.A import APrx
    from Test.B import BPrx


@dataclass
class S:
    a: APrx | None = None
    b: BPrx | None = None

_Test_S_t = IcePy.defineStruct(
    "::Test::S",
    S,
    (),
    (
        ("a", (), _Test_APrx_t),
        ("b", (), _Test_BPrx_t)
    ))

__all__ = ["S", "_Test_S_t"]
