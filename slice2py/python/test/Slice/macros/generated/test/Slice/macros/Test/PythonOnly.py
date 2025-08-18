# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Slice.macros.Test.PythonOnly_forward import _generated_test_Slice_macros_Test_PythonOnly_t

@dataclass(eq=False)
class PythonOnly(Value):
    lang: str = "python"
    version: int = 30850

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PythonOnly"

_generated_test_Slice_macros_Test_PythonOnly_t = IcePy.defineValue(
    "::Test::PythonOnly",
    PythonOnly,
    -1,
    (),
    False,
    None,
    (
        ("lang", (), IcePy._t_string, False, 0),
        ("version", (), IcePy._t_int, False, 0)
    ))

setattr(PythonOnly, '_ice_type', _generated_test_Slice_macros_Test_PythonOnly_t)

__all__ = ["PythonOnly", "_generated_test_Slice_macros_Test_PythonOnly_t"]
