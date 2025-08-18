# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.GIS import _Test_GIS_t

_Test_NDGIS_t = IcePy.defineDictionary("::Test::NDGIS", (), IcePy._t_string, _Test_GIS_t)

__all__ = ["_Test_NDGIS_t"]
