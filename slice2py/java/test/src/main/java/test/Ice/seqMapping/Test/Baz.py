# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Baz_forward import _Test_Baz_t

from Test.SLS import _Test_SLS_t

from Test.SerialLarge import _Test_SerialLarge_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class Baz(Value):
    SLmem: bytes = field(default_factory=bytes)
    SLSmem: list[bytes] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Baz"

_Test_Baz_t = IcePy.defineValue(
    "::Test::Baz",
    Baz,
    -1,
    (),
    False,
    None,
    (
        ("SLmem", (), _Test_SerialLarge_t, False, 0),
        ("SLSmem", (), _Test_SLS_t, False, 0)
    ))

setattr(Baz, '_ice_type', _Test_Baz_t)

__all__ = ["Baz", "_Test_Baz_t"]
