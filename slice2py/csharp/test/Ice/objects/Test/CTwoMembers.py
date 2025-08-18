# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.CTwoMembers_forward import _Test_CTwoMembers_t

from Test.Empty_forward import _Test_Empty_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Empty import Empty

@dataclass(eq=False)
class CTwoMembers(Value):
    e1: Empty | None = None
    e2: Empty | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CTwoMembers"

_Test_CTwoMembers_t = IcePy.defineValue(
    "::Test::CTwoMembers",
    CTwoMembers,
    -1,
    (),
    False,
    None,
    (
        ("e1", (), _Test_Empty_t, False, 0),
        ("e2", (), _Test_Empty_t, False, 0)
    ))

setattr(CTwoMembers, '_ice_type', _Test_CTwoMembers_t)

__all__ = ["CTwoMembers", "_Test_CTwoMembers_t"]
