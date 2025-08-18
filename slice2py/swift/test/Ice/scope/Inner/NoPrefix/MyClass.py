# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Inner.NoPrefix.MyClass_forward import _Inner_NoPrefix_MyClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class MyClass(Value):
    value: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Inner::NoPrefix::MyClass"

_Inner_NoPrefix_MyClass_t = IcePy.defineValue(
    "::Inner::NoPrefix::MyClass",
    MyClass,
    -1,
    (),
    False,
    None,
    (("value", (), IcePy._t_long, False, 0),))

setattr(MyClass, '_ice_type', _Inner_NoPrefix_MyClass_t)

__all__ = ["MyClass", "_Inner_NoPrefix_MyClass_t"]
