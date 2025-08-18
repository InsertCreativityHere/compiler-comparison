# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.StringSeq import _Ice_StringSeq_t

_Test_StringSStack_t = IcePy.defineSequence("::Test::StringSStack", (), _Ice_StringSeq_t)

__all__ = ["_Test_StringSStack_t"]
