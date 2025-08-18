# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SLS import _Test_SLS_t

from Test.SerialLarge import _Test_SerialLarge_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class Foo:
    SLmem: bytes = field(default_factory=bytes)
    SLSmem: list[bytes] = field(default_factory=list)

_Test_Foo_t = IcePy.defineStruct(
    "::Test::Foo",
    Foo,
    (),
    (
        ("SLmem", (), _Test_SerialLarge_t),
        ("SLSmem", (), _Test_SLS_t)
    ))

__all__ = ["Foo", "_Test_Foo_t"]
