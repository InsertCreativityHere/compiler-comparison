# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.custom.Test.ByteList import _generated_test_Ice_custom_Test_ByteList_t

from generated.test.Ice.custom.Test.ByteString import _generated_test_Ice_custom_Test_ByteString_t

from generated.test.Ice.custom.Test.StringList import _generated_test_Ice_custom_Test_StringList_t

from generated.test.Ice.custom.Test.StringTuple import _generated_test_Ice_custom_Test_StringTuple_t


@dataclass
class S:
    b1: bytes = field(default_factory=bytes)
    b2: bytes = field(default_factory=bytes)
    b4: bytes = field(default_factory=bytes)
    s1: list[str] = field(default_factory=list)
    s2: list[str] = field(default_factory=list)
    s3: list[str] = field(default_factory=list)

_generated_test_Ice_custom_Test_S_t = IcePy.defineStruct(
    "::Test::S",
    S,
    (),
    (
        ("b1", (), _generated_test_Ice_custom_Test_ByteString_t),
        ("b2", ("python:seq:list", ), _generated_test_Ice_custom_Test_ByteString_t),
        ("b4", (), _generated_test_Ice_custom_Test_ByteList_t),
        ("s1", (), _generated_test_Ice_custom_Test_StringList_t),
        ("s2", ("python:seq:tuple", ), _generated_test_Ice_custom_Test_StringList_t),
        ("s3", (), _generated_test_Ice_custom_Test_StringTuple_t)
    ))

__all__ = ["S", "_generated_test_Ice_custom_Test_S_t"]
