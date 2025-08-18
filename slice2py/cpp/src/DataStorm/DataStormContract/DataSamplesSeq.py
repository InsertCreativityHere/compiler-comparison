# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.DataSamples import _DataStormContract_DataSamples_t

_DataStormContract_DataSamplesSeq_t = IcePy.defineSequence("::DataStormContract::DataSamplesSeq", (), _DataStormContract_DataSamples_t)

__all__ = ["_DataStormContract_DataSamplesSeq_t"]
