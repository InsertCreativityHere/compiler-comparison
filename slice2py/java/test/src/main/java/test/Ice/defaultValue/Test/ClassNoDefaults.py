# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ClassNoDefaultsBase import ClassNoDefaultsBase

from Test.ClassNoDefaultsBase_forward import _Test_ClassNoDefaultsBase_t

from Test.ClassNoDefaults_forward import _Test_ClassNoDefaults_t

from Test.InnerStruct import InnerStruct
from Test.InnerStruct import _Test_InnerStruct_t

from Test.IntStringDict import _Test_IntStringDict_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class ClassNoDefaults(ClassNoDefaultsBase):
    st: InnerStruct = field(default_factory=InnerStruct)
    dict: dict[int, str] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::ClassNoDefaults"

_Test_ClassNoDefaults_t = IcePy.defineValue(
    "::Test::ClassNoDefaults",
    ClassNoDefaults,
    -1,
    (),
    False,
    _Test_ClassNoDefaultsBase_t,
    (
        ("st", (), _Test_InnerStruct_t, False, 0),
        ("dict", (), _Test_IntStringDict_t, False, 0)
    ))

setattr(ClassNoDefaults, '_ice_type', _Test_ClassNoDefaults_t)

__all__ = ["ClassNoDefaults", "_Test_ClassNoDefaults_t"]
