# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.defaultValue.Test.ByteSeq import _generated_test_Ice_defaultValue_Test_ByteSeq_t

from generated.test.Ice.defaultValue.Test.ClassNoDefaultsBase_forward import _generated_test_Ice_defaultValue_Test_ClassNoDefaultsBase_t

from generated.test.Ice.defaultValue.Test.Color import Color
from generated.test.Ice.defaultValue.Test.Color import _generated_test_Ice_defaultValue_Test_Color_t

@dataclass(eq=False)
class ClassNoDefaultsBase(Value):
    str: str = ""
    c1: Color = Color.red
    bs: bytes = field(default_factory=bytes)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ClassNoDefaultsBase"

_generated_test_Ice_defaultValue_Test_ClassNoDefaultsBase_t = IcePy.defineValue(
    "::Test::ClassNoDefaultsBase",
    ClassNoDefaultsBase,
    -1,
    (),
    False,
    None,
    (
        ("str", (), IcePy._t_string, False, 0),
        ("c1", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("bs", (), _generated_test_Ice_defaultValue_Test_ByteSeq_t, False, 0)
    ))

setattr(ClassNoDefaultsBase, '_ice_type', _generated_test_Ice_defaultValue_Test_ClassNoDefaultsBase_t)

__all__ = ["ClassNoDefaultsBase", "_generated_test_Ice_defaultValue_Test_ClassNoDefaultsBase_t"]
