# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

import array

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.custom.Test.BoolSeq1 import _generated_test_Ice_custom_Test_BoolSeq1_t

from generated.test.Ice.custom.Test.ByteSeq1 import _generated_test_Ice_custom_Test_ByteSeq1_t

from generated.test.Ice.custom.Test.DoubleSeq1 import _generated_test_Ice_custom_Test_DoubleSeq1_t

from generated.test.Ice.custom.Test.E_forward import _generated_test_Ice_custom_Test_E_t

from generated.test.Ice.custom.Test.FloatSeq1 import _generated_test_Ice_custom_Test_FloatSeq1_t

from generated.test.Ice.custom.Test.IntSeq1 import _generated_test_Ice_custom_Test_IntSeq1_t

from generated.test.Ice.custom.Test.LongSeq1 import _generated_test_Ice_custom_Test_LongSeq1_t

from generated.test.Ice.custom.Test.ShortSeq1 import _generated_test_Ice_custom_Test_ShortSeq1_t

@dataclass(eq=False)
class E(Value):
    boolSeq: array.array[bool] = field(default_factory=lambda: array.array('b'))
    byteSeq: array.array[int] = field(default_factory=lambda: array.array('b'))
    shortSeq: array.array[int] = field(default_factory=lambda: array.array('h'))
    intSeq: array.array[int] = field(default_factory=lambda: array.array('i'))
    longSeq: array.array[int] = field(default_factory=lambda: array.array('q'))
    floatSeq: array.array[float] = field(default_factory=lambda: array.array('f'))
    doubleSeq: array.array[float] = field(default_factory=lambda: array.array('d'))

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::E"

_generated_test_Ice_custom_Test_E_t = IcePy.defineValue(
    "::Test::E",
    E,
    -1,
    (),
    False,
    None,
    (
        ("boolSeq", (), _generated_test_Ice_custom_Test_BoolSeq1_t, False, 0),
        ("byteSeq", (), _generated_test_Ice_custom_Test_ByteSeq1_t, False, 0),
        ("shortSeq", (), _generated_test_Ice_custom_Test_ShortSeq1_t, False, 0),
        ("intSeq", (), _generated_test_Ice_custom_Test_IntSeq1_t, False, 0),
        ("longSeq", (), _generated_test_Ice_custom_Test_LongSeq1_t, False, 0),
        ("floatSeq", (), _generated_test_Ice_custom_Test_FloatSeq1_t, False, 0),
        ("doubleSeq", (), _generated_test_Ice_custom_Test_DoubleSeq1_t, False, 0)
    ))

setattr(E, '_ice_type', _generated_test_Ice_custom_Test_E_t)

__all__ = ["E", "_generated_test_Ice_custom_Test_E_t"]
