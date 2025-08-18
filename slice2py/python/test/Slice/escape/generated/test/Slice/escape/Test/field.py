# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field as _m_dataclasses_field

from generated.test.Slice.escape.Test.St import St
from generated.test.Slice.escape.Test.St import _generated_test_Slice_escape_Test_St_t

from generated.test.Slice.escape.Test.field_forward import _generated_test_Slice_escape_Test_field_t

@dataclass(eq=False)
class field(Value):
    name: St = _m_dataclasses_field(default_factory=St)
    value: St = _m_dataclasses_field(default_factory=St)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::field"

_generated_test_Slice_escape_Test_field_t = IcePy.defineValue(
    "::Test::field",
    field,
    -1,
    (),
    False,
    None,
    (
        ("name", (), _generated_test_Slice_escape_Test_St_t, False, 0),
        ("value", (), _generated_test_Slice_escape_Test_St_t, False, 0)
    ))

setattr(field, '_ice_type', _generated_test_Slice_escape_Test_field_t)

__all__ = ["field", "_generated_test_Slice_escape_Test_field_t"]
