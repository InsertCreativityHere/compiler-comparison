# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementData import _DataStormContract_ElementData_t

_DataStormContract_ElementDataSeq_t = IcePy.defineSequence("::DataStormContract::ElementDataSeq", (), _DataStormContract_ElementData_t)

__all__ = ["_DataStormContract_ElementDataSeq_t"]
