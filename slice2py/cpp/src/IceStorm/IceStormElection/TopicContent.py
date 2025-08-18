# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Identity import Identity
from Ice.Identity import _Ice_Identity_t

from IceStorm.SubscriberRecordSeq import _IceStorm_SubscriberRecordSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from IceStorm.SubscriberRecord import SubscriberRecord


@dataclass
class TopicContent:
    """
    The contents of topic.
    
    Attributes
    ----------
    id : Identity
        The topic identity.
    records : list[SubscriberRecord]
        The topic subscribers.
    """
    id: Identity = field(default_factory=Identity)
    records: list[SubscriberRecord] = field(default_factory=list)

_IceStormElection_TopicContent_t = IcePy.defineStruct(
    "::IceStormElection::TopicContent",
    TopicContent,
    (),
    (
        ("id", (), _Ice_Identity_t),
        ("records", (), _IceStorm_SubscriberRecordSeq_t)
    ))

__all__ = ["TopicContent", "_IceStormElection_TopicContent_t"]
