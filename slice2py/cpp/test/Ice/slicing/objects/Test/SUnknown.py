# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.SUnknown_forward import _Test_SUnknown_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.SUnknown import SUnknown

@dataclass(eq=False)
class SUnknown(Value):
    su: str = ""
    cycle: SUnknown | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SUnknown"

_Test_SUnknown_t = IcePy.defineValue(
    "::Test::SUnknown",
    SUnknown,
    -1,
    (),
    False,
    None,
    (
        ("su", (), IcePy._t_string, False, 0),
        ("cycle", (), _Test_SUnknown_t, False, 0)
    ))

setattr(SUnknown, '_ice_type', _Test_SUnknown_t)

__all__ = ["SUnknown", "_Test_SUnknown_t"]
