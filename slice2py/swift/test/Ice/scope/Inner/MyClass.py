# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Inner.MyClass_forward import _Inner_MyClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class MyClass(Value):
    value: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Inner::MyClass"

_Inner_MyClass_t = IcePy.defineValue(
    "::Inner::MyClass",
    MyClass,
    -1,
    (),
    False,
    None,
    (("value", (), IcePy._t_long, False, 0),))

setattr(MyClass, '_ice_type', _Inner_MyClass_t)

__all__ = ["MyClass", "_Inner_MyClass_t"]
