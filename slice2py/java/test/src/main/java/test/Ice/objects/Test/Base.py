# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Base_forward import _Test_Base_t

from Test.S import S
from Test.S import _Test_S_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class Base(Value):
    theS: S = field(default_factory=S)
    str: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Base"

_Test_Base_t = IcePy.defineValue(
    "::Test::Base",
    Base,
    -1,
    (),
    False,
    None,
    (
        ("theS", (), _Test_S_t, False, 0),
        ("str", (), IcePy._t_string, False, 0)
    ))

setattr(Base, '_ice_type', _Test_Base_t)

__all__ = ["Base", "_Test_Base_t"]
