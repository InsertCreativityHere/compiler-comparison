# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

import array

from dataclasses import dataclass

from generated.test.Ice.custom.Test.BoolSeq1 import _generated_test_Ice_custom_Test_BoolSeq1_t

from generated.test.Ice.custom.Test.ByteSeq1 import _generated_test_Ice_custom_Test_ByteSeq1_t

from generated.test.Ice.custom.Test.D_forward import _generated_test_Ice_custom_Test_D_t

from generated.test.Ice.custom.Test.DoubleSeq1 import _generated_test_Ice_custom_Test_DoubleSeq1_t

from generated.test.Ice.custom.Test.FloatSeq1 import _generated_test_Ice_custom_Test_FloatSeq1_t

from generated.test.Ice.custom.Test.IntSeq1 import _generated_test_Ice_custom_Test_IntSeq1_t

from generated.test.Ice.custom.Test.LongSeq1 import _generated_test_Ice_custom_Test_LongSeq1_t

from generated.test.Ice.custom.Test.ShortSeq1 import _generated_test_Ice_custom_Test_ShortSeq1_t

@dataclass(eq=False)
class D(Value):
    boolSeq: array.array[bool] | None = None
    byteSeq: array.array[int] | None = None
    shortSeq: array.array[int] | None = None
    intSeq: array.array[int] | None = None
    longSeq: array.array[int] | None = None
    floatSeq: array.array[float] | None = None
    doubleSeq: array.array[float] | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D"

_generated_test_Ice_custom_Test_D_t = IcePy.defineValue(
    "::Test::D",
    D,
    -1,
    (),
    False,
    None,
    (
        ("boolSeq", (), _generated_test_Ice_custom_Test_BoolSeq1_t, True, 1),
        ("byteSeq", (), _generated_test_Ice_custom_Test_ByteSeq1_t, True, 2),
        ("shortSeq", (), _generated_test_Ice_custom_Test_ShortSeq1_t, True, 3),
        ("intSeq", (), _generated_test_Ice_custom_Test_IntSeq1_t, True, 4),
        ("longSeq", (), _generated_test_Ice_custom_Test_LongSeq1_t, True, 5),
        ("floatSeq", (), _generated_test_Ice_custom_Test_FloatSeq1_t, True, 6),
        ("doubleSeq", (), _generated_test_Ice_custom_Test_DoubleSeq1_t, True, 7)
    ))

setattr(D, '_ice_type', _generated_test_Ice_custom_Test_D_t)

__all__ = ["D", "_generated_test_Ice_custom_Test_D_t"]
