# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from classdef.logical import logical

from classdef.logical_forward import _classdef_logical_t

from classdef.xor_forward import _classdef_xor_t

from dataclasses import dataclass

@dataclass(eq=False)
class xor(logical):
    return: int = 1

    @staticmethod
    def ice_staticId() -> str:
        return "::classdef::xor"

_classdef_xor_t = IcePy.defineValue(
    "::classdef::xor",
    xor,
    -1,
    (),
    False,
    _classdef_logical_t,
    (("return", (), IcePy._t_int, False, 0),))

setattr(xor, '_ice_type', _classdef_xor_t)

__all__ = ["xor", "_classdef_xor_t"]
