# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.ByteSeq import _Test_ByteSeq_t

from Test.ClassNoDefaultsBase_forward import _Test_ClassNoDefaultsBase_t

from Test.Color import Color
from Test.Color import _Test_Color_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class ClassNoDefaultsBase(Value):
    str: str = ""
    c1: Color = Color.red
    bs: bytes = field(default_factory=bytes)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ClassNoDefaultsBase"

_Test_ClassNoDefaultsBase_t = IcePy.defineValue(
    "::Test::ClassNoDefaultsBase",
    ClassNoDefaultsBase,
    -1,
    (),
    False,
    None,
    (
        ("str", (), IcePy._t_string, False, 0),
        ("c1", (), _Test_Color_t, False, 0),
        ("bs", (), _Test_ByteSeq_t, False, 0)
    ))

setattr(ClassNoDefaultsBase, '_ice_type', _Test_ClassNoDefaultsBase_t)

__all__ = ["ClassNoDefaultsBase", "_Test_ClassNoDefaultsBase_t"]
