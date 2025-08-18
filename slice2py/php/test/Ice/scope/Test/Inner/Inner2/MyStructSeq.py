# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Inner.Inner2.MyStruct import _Test_Inner_Inner2_MyStruct_t

_Test_Inner_Inner2_MyStructSeq_t = IcePy.defineSequence("::Test::Inner::Inner2::MyStructSeq", (), _Test_Inner_Inner2_MyStruct_t)

__all__ = ["_Test_Inner_Inner2_MyStructSeq_t"]
