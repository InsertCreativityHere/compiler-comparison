# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.objects.Test.Base_forward import _generated_test_Ice_objects_Test_Base_t

from generated.test.Ice.objects.Test.S import S
from generated.test.Ice.objects.Test.S import _generated_test_Ice_objects_Test_S_t

@dataclass(eq=False)
class Base(Value):
    theS: S = field(default_factory=S)
    str: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Base"

_generated_test_Ice_objects_Test_Base_t = IcePy.defineValue(
    "::Test::Base",
    Base,
    -1,
    (),
    False,
    None,
    (
        ("theS", (), _generated_test_Ice_objects_Test_S_t, False, 0),
        ("str", (), IcePy._t_string, False, 0)
    ))

setattr(Base, '_ice_type', _generated_test_Ice_objects_Test_Base_t)

__all__ = ["Base", "_generated_test_Ice_objects_Test_Base_t"]
