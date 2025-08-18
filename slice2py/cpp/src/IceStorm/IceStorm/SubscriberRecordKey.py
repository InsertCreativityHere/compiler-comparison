# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Identity import Identity
from Ice.Identity import _Ice_Identity_t

from dataclasses import dataclass
from dataclasses import field


@dataclass(order=True, unsafe_hash=True)
class SubscriberRecordKey:
    """
    The key for persistent subscribers, or topics.
    If the subscriber identity is empty then the record is used as a place holder for the creation of a topic,
    otherwise the record holds a subscription record.
    
    Attributes
    ----------
    topic : Identity
        The topic identity.
    id : Identity
        The identity of the subscriber. If this is empty then the key is a placeholder for a topic.
    """
    topic: Identity = field(default_factory=Identity)
    id: Identity = field(default_factory=Identity)

_IceStorm_SubscriberRecordKey_t = IcePy.defineStruct(
    "::IceStorm::SubscriberRecordKey",
    SubscriberRecordKey,
    (),
    (
        ("topic", (), _Ice_Identity_t),
        ("id", (), _Ice_Identity_t)
    ))

__all__ = ["SubscriberRecordKey", "_IceStorm_SubscriberRecordKey_t"]
