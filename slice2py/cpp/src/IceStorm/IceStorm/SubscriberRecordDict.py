# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStorm.SubscriberRecord import _IceStorm_SubscriberRecord_t

from IceStorm.SubscriberRecordKey import _IceStorm_SubscriberRecordKey_t

_IceStorm_SubscriberRecordDict_t = IcePy.defineDictionary("::IceStorm::SubscriberRecordDict", (), _IceStorm_SubscriberRecordKey_t, _IceStorm_SubscriberRecord_t)

__all__ = ["_IceStorm_SubscriberRecordDict_t"]
