# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStorm.EventData import _IceStorm_EventData_t

_IceStorm_EventDataSeq_t = IcePy.defineSequence("::IceStorm::EventDataSeq", (), _IceStorm_EventData_t)

__all__ = ["_IceStorm_EventDataSeq_t"]
