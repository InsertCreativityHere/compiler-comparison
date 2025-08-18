# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.defaultValue.Test.ExceptionNoDefaultsBase import ExceptionNoDefaultsBase
from generated.test.Ice.defaultValue.Test.ExceptionNoDefaultsBase import _generated_test_Ice_defaultValue_Test_ExceptionNoDefaultsBase_t

from generated.test.Ice.defaultValue.Test.InnerStruct import InnerStruct
from generated.test.Ice.defaultValue.Test.InnerStruct import _generated_test_Ice_defaultValue_Test_InnerStruct_t

from generated.test.Ice.defaultValue.Test.IntStringDict import _generated_test_Ice_defaultValue_Test_IntStringDict_t


@dataclass
class ExceptionNoDefaults(ExceptionNoDefaultsBase):
    st: InnerStruct = field(default_factory=InnerStruct)
    isDict: dict[int, str] = field(default_factory=dict)

    _ice_id = "::Test::ExceptionNoDefaults"

_generated_test_Ice_defaultValue_Test_ExceptionNoDefaults_t = IcePy.defineException(
    "::Test::ExceptionNoDefaults",
    ExceptionNoDefaults,
    (),
    _generated_test_Ice_defaultValue_Test_ExceptionNoDefaultsBase_t,
    (
        ("st", (), _generated_test_Ice_defaultValue_Test_InnerStruct_t, False, 0),
        ("isDict", (), _generated_test_Ice_defaultValue_Test_IntStringDict_t, False, 0)
    ))

setattr(ExceptionNoDefaults, '_ice_type', _generated_test_Ice_defaultValue_Test_ExceptionNoDefaults_t)

__all__ = ["ExceptionNoDefaults", "_generated_test_Ice_defaultValue_Test_ExceptionNoDefaults_t"]
