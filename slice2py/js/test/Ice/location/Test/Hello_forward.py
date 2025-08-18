# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_HelloPrx_t = IcePy.declareProxy("::Test::Hello")

__all__ = ["_Test_HelloPrx_t"]