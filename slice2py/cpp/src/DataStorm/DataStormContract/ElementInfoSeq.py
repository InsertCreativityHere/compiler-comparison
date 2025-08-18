# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementInfo import _DataStormContract_ElementInfo_t

_DataStormContract_ElementInfoSeq_t = IcePy.defineSequence("::DataStormContract::ElementInfoSeq", (), _DataStormContract_ElementInfo_t)

__all__ = ["_DataStormContract_ElementInfoSeq_t"]
