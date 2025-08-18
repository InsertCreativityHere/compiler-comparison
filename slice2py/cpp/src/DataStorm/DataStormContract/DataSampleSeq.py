# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.DataSample import _DataStormContract_DataSample_t

_DataStormContract_DataSampleSeq_t = IcePy.defineSequence("::DataStormContract::DataSampleSeq", (), _DataStormContract_DataSample_t)

__all__ = ["_DataStormContract_DataSampleSeq_t"]
