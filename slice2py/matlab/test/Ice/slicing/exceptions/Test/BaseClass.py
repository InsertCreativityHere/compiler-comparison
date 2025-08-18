# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.BaseClass_forward import _Test_BaseClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class BaseClass(Value):
    bc: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::BaseClass"

_Test_BaseClass_t = IcePy.defineValue(
    "::Test::BaseClass",
    BaseClass,
    -1,
    (),
    False,
    None,
    (("bc", (), IcePy._t_string, False, 0),))

setattr(BaseClass, '_ice_type', _Test_BaseClass_t)

__all__ = ["BaseClass", "_Test_BaseClass_t"]
