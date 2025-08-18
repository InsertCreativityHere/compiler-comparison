# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.custom.Test.ByteList import _generated_test_Ice_custom_Test_ByteList_t

from generated.test.Ice.custom.Test.ByteString import _generated_test_Ice_custom_Test_ByteString_t

from generated.test.Ice.custom.Test.C_forward import _generated_test_Ice_custom_Test_C_t

from generated.test.Ice.custom.Test.StringList import _generated_test_Ice_custom_Test_StringList_t

from generated.test.Ice.custom.Test.StringTuple import _generated_test_Ice_custom_Test_StringTuple_t

@dataclass(eq=False)
class C(Value):
    b1: bytes = field(default_factory=bytes)
    b2: bytes = field(default_factory=bytes)
    b4: bytes = field(default_factory=bytes)
    s1: list[str] = field(default_factory=list)
    s2: list[str] = field(default_factory=list)
    s3: list[str] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

_generated_test_Ice_custom_Test_C_t = IcePy.defineValue(
    "::Test::C",
    C,
    -1,
    (),
    False,
    None,
    (
        ("b1", (), _generated_test_Ice_custom_Test_ByteString_t, False, 0),
        ("b2", ("python:seq:list", ), _generated_test_Ice_custom_Test_ByteString_t, False, 0),
        ("b4", (), _generated_test_Ice_custom_Test_ByteList_t, False, 0),
        ("s1", (), _generated_test_Ice_custom_Test_StringList_t, False, 0),
        ("s2", ("python:seq:tuple", ), _generated_test_Ice_custom_Test_StringList_t, False, 0),
        ("s3", (), _generated_test_Ice_custom_Test_StringTuple_t, False, 0)
    ))

setattr(C, '_ice_type', _generated_test_Ice_custom_Test_C_t)

__all__ = ["C", "_generated_test_Ice_custom_Test_C_t"]
