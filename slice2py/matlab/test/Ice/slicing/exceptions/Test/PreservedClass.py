# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseClass import BaseClass

from Test.BaseClass_forward import _Test_BaseClass_t

from Test.PreservedClass_forward import _Test_PreservedClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class PreservedClass(BaseClass):
    pc: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PreservedClass"

_Test_PreservedClass_t = IcePy.defineValue(
    "::Test::PreservedClass",
    PreservedClass,
    -1,
    (),
    False,
    _Test_BaseClass_t,
    (("pc", (), IcePy._t_string, False, 0),))

setattr(PreservedClass, '_ice_type', _Test_PreservedClass_t)

__all__ = ["PreservedClass", "_Test_PreservedClass_t"]
