# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementDataAck import _DataStormContract_ElementDataAck_t

_DataStormContract_ElementDataAckSeq_t = IcePy.defineSequence("::DataStormContract::ElementDataAckSeq", (), _DataStormContract_ElementDataAck_t)

__all__ = ["_DataStormContract_ElementDataAckSeq_t"]
