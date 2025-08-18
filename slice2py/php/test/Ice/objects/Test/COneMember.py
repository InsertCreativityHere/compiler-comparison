# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.COneMember_forward import _Test_COneMember_t

from Test.Empty_forward import _Test_Empty_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Empty import Empty

@dataclass(eq=False)
class COneMember(Value):
    e: Empty | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::COneMember"

_Test_COneMember_t = IcePy.defineValue(
    "::Test::COneMember",
    COneMember,
    -1,
    (),
    False,
    None,
    (("e", (), _Test_Empty_t, False, 0),))

setattr(COneMember, '_ice_type', _Test_COneMember_t)

__all__ = ["COneMember", "_Test_COneMember_t"]
