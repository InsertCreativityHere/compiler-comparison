# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.defaultValue.Test.ClassNoDefaultsBase import ClassNoDefaultsBase

from generated.test.Ice.defaultValue.Test.ClassNoDefaultsBase_forward import _generated_test_Ice_defaultValue_Test_ClassNoDefaultsBase_t

from generated.test.Ice.defaultValue.Test.ClassNoDefaults_forward import _generated_test_Ice_defaultValue_Test_ClassNoDefaults_t

from generated.test.Ice.defaultValue.Test.InnerStruct import InnerStruct
from generated.test.Ice.defaultValue.Test.InnerStruct import _generated_test_Ice_defaultValue_Test_InnerStruct_t

from generated.test.Ice.defaultValue.Test.IntStringDict import _generated_test_Ice_defaultValue_Test_IntStringDict_t

@dataclass(eq=False)
class ClassNoDefaults(ClassNoDefaultsBase):
    st: InnerStruct = field(default_factory=InnerStruct)
    isDict: dict[int, str] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ClassNoDefaults"

_generated_test_Ice_defaultValue_Test_ClassNoDefaults_t = IcePy.defineValue(
    "::Test::ClassNoDefaults",
    ClassNoDefaults,
    -1,
    (),
    False,
    _generated_test_Ice_defaultValue_Test_ClassNoDefaultsBase_t,
    (
        ("st", (), _generated_test_Ice_defaultValue_Test_InnerStruct_t, False, 0),
        ("isDict", (), _generated_test_Ice_defaultValue_Test_IntStringDict_t, False, 0)
    ))

setattr(ClassNoDefaults, '_ice_type', _generated_test_Ice_defaultValue_Test_ClassNoDefaults_t)

__all__ = ["ClassNoDefaults", "_generated_test_Ice_defaultValue_Test_ClassNoDefaults_t"]
