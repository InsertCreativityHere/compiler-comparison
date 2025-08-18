# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.Forward_forward import _generated_test_Ice_slicing_objects_Test_Forward_t

from generated.test.Ice.slicing.objects.Test.Hidden_forward import _generated_test_Ice_slicing_objects_Test_Hidden_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.Forward import Forward

@dataclass(eq=False)
class Hidden(Value):
    f: Forward | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Hidden"

_generated_test_Ice_slicing_objects_Test_Hidden_t = IcePy.defineValue(
    "::Test::Hidden",
    Hidden,
    -1,
    (),
    False,
    None,
    (("f", (), _generated_test_Ice_slicing_objects_Test_Forward_t, False, 0),))

setattr(Hidden, '_ice_type', _generated_test_Ice_slicing_objects_Test_Hidden_t)

__all__ = ["Hidden", "_generated_test_Ice_slicing_objects_Test_Hidden_t"]
