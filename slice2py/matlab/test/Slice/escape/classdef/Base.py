# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from classdef.Base_forward import _classdef_Base_t

from dataclasses import dataclass

@dataclass(eq=False)
class Base(Value):
    while: int = 1

    @staticmethod
    def ice_staticId() -> str:
        return "::classdef::Base"

_classdef_Base_t = IcePy.defineValue(
    "::classdef::Base",
    Base,
    -1,
    (),
    False,
    None,
    (("while", (), IcePy._t_int, False, 0),))

setattr(Base, '_ice_type', _classdef_Base_t)

__all__ = ["Base", "_classdef_Base_t"]
