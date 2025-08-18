# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ExceptionNoDefaultsBase import ExceptionNoDefaultsBase
from Test.ExceptionNoDefaultsBase import _Test_ExceptionNoDefaultsBase_t

from Test.InnerStruct import InnerStruct
from Test.InnerStruct import _Test_InnerStruct_t

from Test.InnerStruct2 import InnerStruct2
from Test.InnerStruct2 import _Test_InnerStruct2_t

from Test.IntStringDict import _Test_IntStringDict_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class ExceptionNoDefaults(ExceptionNoDefaultsBase):
    st: InnerStruct = field(default_factory=InnerStruct)
    st2: InnerStruct2 = field(default_factory=InnerStruct2)
    dict: dict[int, str] = field(default_factory=dict)

    _ice_id = "::Test::ExceptionNoDefaults"

_Test_ExceptionNoDefaults_t = IcePy.defineException(
    "::Test::ExceptionNoDefaults",
    ExceptionNoDefaults,
    (),
    _Test_ExceptionNoDefaultsBase_t,
    (
        ("st", (), _Test_InnerStruct_t, False, 0),
        ("st2", (), _Test_InnerStruct2_t, False, 0),
        ("dict", (), _Test_IntStringDict_t, False, 0)
    ))

setattr(ExceptionNoDefaults, '_ice_type', _Test_ExceptionNoDefaults_t)

__all__ = ["ExceptionNoDefaults", "_Test_ExceptionNoDefaults_t"]
