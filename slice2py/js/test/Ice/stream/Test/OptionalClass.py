# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.OptionalClass_forward import _Test_OptionalClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class OptionalClass(Value):
    bo: bool = False
    by: int = 0
    sh: int | None = None
    i: int | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::OptionalClass"

_Test_OptionalClass_t = IcePy.defineValue(
    "::Test::OptionalClass",
    OptionalClass,
    -1,
    (),
    False,
    None,
    (
        ("bo", (), IcePy._t_bool, False, 0),
        ("by", (), IcePy._t_byte, False, 0),
        ("sh", (), IcePy._t_short, True, 1),
        ("i", (), IcePy._t_int, True, 2)
    ))

setattr(OptionalClass, '_ice_type', _Test_OptionalClass_t)

__all__ = ["OptionalClass", "_Test_OptionalClass_t"]
