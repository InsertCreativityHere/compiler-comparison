# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Empty_forward import _Test_Empty_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Empty import Empty


@dataclass
class STwoMembers:
    e1: Empty | None = None
    e2: Empty | None = None

_Test_STwoMembers_t = IcePy.defineStruct(
    "::Test::STwoMembers",
    STwoMembers,
    (),
    (
        ("e1", (), _Test_Empty_t),
        ("e2", (), _Test_Empty_t)
    ))

__all__ = ["STwoMembers", "_Test_STwoMembers_t"]
