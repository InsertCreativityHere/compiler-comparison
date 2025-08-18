# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.CompactScoped_forward import _Test_CompactScoped_t

from dataclasses import dataclass

@dataclass(eq=False)
class CompactScoped(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CompactScoped"

_Test_CompactScoped_t = IcePy.defineValue(
    "::Test::CompactScoped",
    CompactScoped,
    2,
    (),
    False,
    None,
    ())

setattr(CompactScoped, '_ice_type', _Test_CompactScoped_t)

__all__ = ["CompactScoped", "_Test_CompactScoped_t"]
