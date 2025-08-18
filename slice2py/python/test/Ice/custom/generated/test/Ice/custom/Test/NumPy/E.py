# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.custom.Test.NumPy.BoolSeq1 import _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t

from generated.test.Ice.custom.Test.NumPy.ByteSeq1 import _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t

from generated.test.Ice.custom.Test.NumPy.DoubleSeq1 import _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t

from generated.test.Ice.custom.Test.NumPy.E_forward import _generated_test_Ice_custom_Test_NumPy_E_t

from generated.test.Ice.custom.Test.NumPy.FloatSeq1 import _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t

from generated.test.Ice.custom.Test.NumPy.IntSeq1 import _generated_test_Ice_custom_Test_NumPy_IntSeq1_t

from generated.test.Ice.custom.Test.NumPy.LongSeq1 import _generated_test_Ice_custom_Test_NumPy_LongSeq1_t

from generated.test.Ice.custom.Test.NumPy.ShortSeq1 import _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t

import numpy

@dataclass(eq=False)
class E(Value):
    boolSeq: numpy.typing.NDArray[numpy.bool] = field(default_factory=lambda: numpy.empty(0, numpy.bool))
    byteSeq: numpy.typing.NDArray[numpy.int8] = field(default_factory=lambda: numpy.empty(0, numpy.int8))
    shortSeq: numpy.typing.NDArray[numpy.int16] = field(default_factory=lambda: numpy.empty(0, numpy.int16))
    intSeq: numpy.typing.NDArray[numpy.int32] = field(default_factory=lambda: numpy.empty(0, numpy.int32))
    longSeq: numpy.typing.NDArray[numpy.int64] = field(default_factory=lambda: numpy.empty(0, numpy.int64))
    floatSeq: numpy.typing.NDArray[numpy.float32] = field(default_factory=lambda: numpy.empty(0, numpy.float32))
    doubleSeq: numpy.typing.NDArray[numpy.float64] = field(default_factory=lambda: numpy.empty(0, numpy.float64))

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::NumPy::E"

_generated_test_Ice_custom_Test_NumPy_E_t = IcePy.defineValue(
    "::Test::NumPy::E",
    E,
    -1,
    (),
    False,
    None,
    (
        ("boolSeq", (), _generated_test_Ice_custom_Test_NumPy_BoolSeq1_t, False, 0),
        ("byteSeq", (), _generated_test_Ice_custom_Test_NumPy_ByteSeq1_t, False, 0),
        ("shortSeq", (), _generated_test_Ice_custom_Test_NumPy_ShortSeq1_t, False, 0),
        ("intSeq", (), _generated_test_Ice_custom_Test_NumPy_IntSeq1_t, False, 0),
        ("longSeq", (), _generated_test_Ice_custom_Test_NumPy_LongSeq1_t, False, 0),
        ("floatSeq", (), _generated_test_Ice_custom_Test_NumPy_FloatSeq1_t, False, 0),
        ("doubleSeq", (), _generated_test_Ice_custom_Test_NumPy_DoubleSeq1_t, False, 0)
    ))

setattr(E, '_ice_type', _generated_test_Ice_custom_Test_NumPy_E_t)

__all__ = ["E", "_generated_test_Ice_custom_Test_NumPy_E_t"]
