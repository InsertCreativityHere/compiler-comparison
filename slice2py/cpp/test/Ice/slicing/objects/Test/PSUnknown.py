# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyClass_forward import _Test_MyClass_t

from Test.PNode_forward import _Test_PNode_t

from Test.PSUnknown_forward import _Test_PSUnknown_t

from Test.Preserved import Preserved

from Test.Preserved_forward import _Test_Preserved_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyClass import MyClass
    from Test.PNode import PNode

@dataclass(eq=False)
class PSUnknown(Preserved):
    psu: str = ""
    graph: PNode | None = None
    cl: MyClass | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PSUnknown"

_Test_PSUnknown_t = IcePy.defineValue(
    "::Test::PSUnknown",
    PSUnknown,
    -1,
    (),
    False,
    _Test_Preserved_t,
    (
        ("psu", (), IcePy._t_string, False, 0),
        ("graph", (), _Test_PNode_t, False, 0),
        ("cl", (), _Test_MyClass_t, False, 0)
    ))

setattr(PSUnknown, '_ice_type', _Test_PSUnknown_t)

__all__ = ["PSUnknown", "_Test_PSUnknown_t"]
