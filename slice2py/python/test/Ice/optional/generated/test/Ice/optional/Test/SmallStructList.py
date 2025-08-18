# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from generated.test.Ice.optional.Test.SmallStruct import _generated_test_Ice_optional_Test_SmallStruct_t

_generated_test_Ice_optional_Test_SmallStructList_t = IcePy.defineSequence("::Test::SmallStructList", ("python:seq:tuple", ), _generated_test_Ice_optional_Test_SmallStruct_t)

__all__ = ["_generated_test_Ice_optional_Test_SmallStructList_t"]
