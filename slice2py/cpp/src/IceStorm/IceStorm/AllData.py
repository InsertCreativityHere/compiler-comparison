# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStorm.SubscriberRecordDict import _IceStorm_SubscriberRecordDict_t

from IceStormElection.StringLogUpdateDict import _IceStormElection_StringLogUpdateDict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from IceStorm.SubscriberRecord import SubscriberRecord
    from IceStorm.SubscriberRecordKey import SubscriberRecordKey
    from IceStormElection.LogUpdate import LogUpdate


@dataclass
class AllData:
    llus: dict[str, LogUpdate] = field(default_factory=dict)
    subscribers: dict[SubscriberRecordKey, SubscriberRecord] = field(default_factory=dict)

_IceStorm_AllData_t = IcePy.defineStruct(
    "::IceStorm::AllData",
    AllData,
    (),
    (
        ("llus", (), _IceStormElection_StringLogUpdateDict_t),
        ("subscribers", (), _IceStorm_SubscriberRecordDict_t)
    ))

__all__ = ["AllData", "_IceStorm_AllData_t"]
