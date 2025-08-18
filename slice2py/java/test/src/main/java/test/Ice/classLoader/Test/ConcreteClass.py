# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.ConcreteClass_forward import _Test_ConcreteClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class ConcreteClass(Value):
    i: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ConcreteClass"

_Test_ConcreteClass_t = IcePy.defineValue(
    "::Test::ConcreteClass",
    ConcreteClass,
    -1,
    (),
    False,
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(ConcreteClass, '_ice_type', _Test_ConcreteClass_t)

__all__ = ["ConcreteClass", "_Test_ConcreteClass_t"]
