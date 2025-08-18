# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStorm.SubscriberRecord import _IceStorm_SubscriberRecord_t

_IceStorm_SubscriberRecordSeq_t = IcePy.defineSequence("::IceStorm::SubscriberRecordSeq", (), _IceStorm_SubscriberRecord_t)

__all__ = ["_IceStorm_SubscriberRecordSeq_t"]
