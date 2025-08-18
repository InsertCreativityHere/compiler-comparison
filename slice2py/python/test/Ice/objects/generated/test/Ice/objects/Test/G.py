# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Base import Base

from generated.test.Ice.objects.Test.Base_forward import _generated_test_Ice_objects_Test_Base_t

from generated.test.Ice.objects.Test.G_forward import _generated_test_Ice_objects_Test_G_t

@dataclass(eq=False)
class G(Base):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::G"

_generated_test_Ice_objects_Test_G_t = IcePy.defineValue(
    "::Test::G",
    G,
    -1,
    (),
    False,
    _generated_test_Ice_objects_Test_Base_t,
    ())

setattr(G, '_ice_type', _generated_test_Ice_objects_Test_G_t)

__all__ = ["G", "_generated_test_Ice_objects_Test_G_t"]
