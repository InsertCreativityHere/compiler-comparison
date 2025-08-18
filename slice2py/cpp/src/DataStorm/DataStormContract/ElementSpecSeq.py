# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementSpec import _DataStormContract_ElementSpec_t

_DataStormContract_ElementSpecSeq_t = IcePy.defineSequence("::DataStormContract::ElementSpecSeq", (), _DataStormContract_ElementSpec_t)

__all__ = ["_DataStormContract_ElementSpecSeq_t"]
