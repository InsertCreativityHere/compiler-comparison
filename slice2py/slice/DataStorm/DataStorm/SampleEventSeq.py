# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStorm.SampleEvent import _DataStorm_SampleEvent_t

_DataStorm_SampleEventSeq_t = IcePy.defineSequence("::DataStorm::SampleEventSeq", (), _DataStorm_SampleEvent_t)

__all__ = ["_DataStorm_SampleEventSeq_t"]
