# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.DictClass_forward import _Test_DictClass_t

from Test.IntStringDict import _Test_IntStringDict_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class DictClass(Value):
    isdict: dict[int, str] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::DictClass"

_Test_DictClass_t = IcePy.defineValue(
    "::Test::DictClass",
    DictClass,
    -1,
    (),
    False,
    None,
    (("isdict", (), _Test_IntStringDict_t, False, 0),))

setattr(DictClass, '_ice_type', _Test_DictClass_t)

__all__ = ["DictClass", "_Test_DictClass_t"]
