# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.custom.Test.NumPy.BoolSeq1 import _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t

from generated.test.Ice.custom.Test.NumPy.ByteSeq1 import _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t

from generated.test.Ice.custom.Test.NumPy.D_forward import _generated_test_Ice_custom_Test_NumPy_D_t

from generated.test.Ice.custom.Test.NumPy.DoubleSeq1 import _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t

from generated.test.Ice.custom.Test.NumPy.FloatSeq1 import _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t

from generated.test.Ice.custom.Test.NumPy.IntSeq1 import _generated_test_Ice_custom_Test_NumPy_IntSeq1_t

from generated.test.Ice.custom.Test.NumPy.LongSeq1 import _generated_test_Ice_custom_Test_NumPy_LongSeq1_t

from generated.test.Ice.custom.Test.NumPy.ShortSeq1 import _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t

import numpy

@dataclass(eq=False)
class D(Value):
    boolSeq: numpy.typing.NDArray[numpy.bool] | None = None
    byteSeq: numpy.typing.NDArray[numpy.int8] | None = None
    shortSeq: numpy.typing.NDArray[numpy.int16] | None = None
    intSeq: numpy.typing.NDArray[numpy.int32] | None = None
    longSeq: numpy.typing.NDArray[numpy.int64] | None = None
    floatSeq: numpy.typing.NDArray[numpy.float32] | None = None
    doubleSeq: numpy.typing.NDArray[numpy.float64] | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::NumPy::D"

_generated_test_Ice_custom_Test_NumPy_D_t = IcePy.defineValue(
    "::Test::NumPy::D",
    D,
    -1,
    (),
    False,
    None,
    (
        ("boolSeq", (), _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t, True, 1),
        ("byteSeq", (), _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t, True, 2),
        ("shortSeq", (), _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t, True, 3),
        ("intSeq", (), _generated_test_Ice_custom_Test_NumPy_IntSeq1_t, True, 4),
        ("longSeq", (), _generated_test_Ice_custom_Test_NumPy_LongSeq1_t, True, 5),
        ("floatSeq", (), _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t, True, 6),
        ("doubleSeq", (), _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t, True, 7)
    ))

setattr(D, '_ice_type', _generated_test_Ice_custom_Test_NumPy_D_t)

__all__ = ["D", "_generated_test_Ice_custom_Test_NumPy_D_t"]
