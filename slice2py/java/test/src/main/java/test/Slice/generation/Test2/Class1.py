# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test2.Class1_forward import _Test2_Class1_t

from dataclasses import dataclass

@dataclass(eq=False)
class Class1(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test2::Class1"

_Test2_Class1_t = IcePy.defineValue(
    "::Test2::Class1",
    Class1,
    -1,
    (),
    False,
    None,
    ())

setattr(Class1, '_ice_type', _Test2_Class1_t)

__all__ = ["Class1", "_Test2_Class1_t"]
