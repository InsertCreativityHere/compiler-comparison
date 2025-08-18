# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SD import _Test_SD_t

_Test_AStructSD_t = IcePy.defineSequence("::Test::AStructSD", (), _Test_SD_t)

__all__ = ["_Test_AStructSD_t"]
