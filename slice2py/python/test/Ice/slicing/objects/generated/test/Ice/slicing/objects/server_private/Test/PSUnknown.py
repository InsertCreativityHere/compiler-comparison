# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.PNode_forward import _generated_test_Ice_slicing_objects_Test_PNode_t

from generated.test.Ice.slicing.objects.Test.Preserved import Preserved

from generated.test.Ice.slicing.objects.Test.Preserved_forward import _generated_test_Ice_slicing_objects_Test_Preserved_t

from generated.test.Ice.slicing.objects.server_private.Test.MyClass_forward import _generated_test_Ice_slicing_objects_server_private_Test_MyClass_t

from generated.test.Ice.slicing.objects.server_private.Test.PSUnknown_forward import _generated_test_Ice_slicing_objects_server_private_Test_PSUnknown_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.PNode import PNode
    from generated.test.Ice.slicing.objects.server_private.Test.MyClass import MyClass

@dataclass(eq=False)
class PSUnknown(Preserved):
    psu: str = ""
    graph: PNode | None = None
    cl: MyClass | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PSUnknown"

_generated_test_Ice_slicing_objects_server_private_Test_PSUnknown_t = IcePy.defineValue(
    "::Test::PSUnknown",
    PSUnknown,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_Preserved_t,
    (
        ("psu", (), IcePy._t_string, False, 0),
        ("graph", (), _generated_test_Ice_slicing_objects_Test_PNode_t, False, 0),
        ("cl", (), _generated_test_Ice_slicing_objects_server_private_Test_MyClass_t, False, 0)
    ))

setattr(PSUnknown, '_ice_type', _generated_test_Ice_slicing_objects_server_private_Test_PSUnknown_t)

__all__ = ["PSUnknown", "_generated_test_Ice_slicing_objects_server_private_Test_PSUnknown_t"]
