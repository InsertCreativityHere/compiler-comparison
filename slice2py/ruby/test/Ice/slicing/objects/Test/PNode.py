# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.PNode_forward import _Test_PNode_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.PNode import PNode

@dataclass(eq=False)
class PNode(Value):
    next: PNode | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PNode"

_Test_PNode_t = IcePy.defineValue(
    "::Test::PNode",
    PNode,
    -1,
    (),
    False,
    None,
    (("next", (), _Test_PNode_t, False, 0),))

setattr(PNode, '_ice_type', _Test_PNode_t)

__all__ = ["PNode", "_Test_PNode_t"]
