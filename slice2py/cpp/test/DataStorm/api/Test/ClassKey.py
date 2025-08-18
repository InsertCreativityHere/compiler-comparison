# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.ClassKey_forward import _Test_ClassKey_t

from dataclasses import dataclass

@dataclass(eq=False)
class ClassKey(Value):
    value: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ClassKey"

_Test_ClassKey_t = IcePy.defineValue(
    "::Test::ClassKey",
    ClassKey,
    -1,
    (),
    False,
    None,
    (("value", (), IcePy._t_int, False, 0),))

setattr(ClassKey, '_ice_type', _Test_ClassKey_t)

__all__ = ["ClassKey", "_Test_ClassKey_t"]
