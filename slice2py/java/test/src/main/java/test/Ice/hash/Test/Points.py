# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Point import _Test_Point_t

_Test_Points_t = IcePy.defineSequence("::Test::Points", (), _Test_Point_t)

__all__ = ["_Test_Points_t"]
