# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.PNode_forward import _generated_test_Ice_slicing_objects_Test_PNode_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.PNode import PNode

@dataclass(eq=False)
class PNode(Value):
    next: PNode | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PNode"

_generated_test_Ice_slicing_objects_Test_PNode_t = IcePy.defineValue(
    "::Test::PNode",
    PNode,
    -1,
    (),
    False,
    None,
    (("next", (), _generated_test_Ice_slicing_objects_Test_PNode_t, False, 0),))

setattr(PNode, '_ice_type', _generated_test_Ice_slicing_objects_Test_PNode_t)

__all__ = ["PNode", "_generated_test_Ice_slicing_objects_Test_PNode_t"]
