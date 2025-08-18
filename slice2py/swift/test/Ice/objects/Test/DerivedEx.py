# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseEx import BaseEx
from Test.BaseEx import _Test_BaseEx_t

from dataclasses import dataclass


@dataclass
class DerivedEx(BaseEx):

    _ice_id = "::Test::DerivedEx"

_Test_DerivedEx_t = IcePy.defineException(
    "::Test::DerivedEx",
    DerivedEx,
    (),
    _Test_BaseEx_t,
    ())

setattr(DerivedEx, '_ice_type', _Test_DerivedEx_t)

__all__ = ["DerivedEx", "_Test_DerivedEx_t"]
