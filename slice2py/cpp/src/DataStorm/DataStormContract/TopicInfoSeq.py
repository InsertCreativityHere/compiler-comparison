# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.TopicInfo import _DataStormContract_TopicInfo_t

_DataStormContract_TopicInfoSeq_t = IcePy.defineSequence("::DataStormContract::TopicInfoSeq", (), _DataStormContract_TopicInfo_t)

__all__ = ["_DataStormContract_TopicInfoSeq_t"]
