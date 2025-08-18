# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementSpecAck import _DataStormContract_ElementSpecAck_t

_DataStormContract_ElementSpecAckSeq_t = IcePy.defineSequence("::DataStormContract::ElementSpecAckSeq", (), _DataStormContract_ElementSpecAck_t)

__all__ = ["_DataStormContract_ElementSpecAckSeq_t"]
