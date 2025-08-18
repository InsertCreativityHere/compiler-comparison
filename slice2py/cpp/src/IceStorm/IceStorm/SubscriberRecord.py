# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Identity import Identity
from Ice.Identity import _Ice_Identity_t

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from IceStorm.QoS import _IceStorm_QoS_t

from IceStorm.Topic_forward import _IceStorm_TopicPrx_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Ice.ObjectPrx import ObjectPrx
    from IceStorm.Topic import TopicPrx


@dataclass
class SubscriberRecord:
    """
    Used to store persistent information for persistent subscribers.
    
    Attributes
    ----------
    topicName : str
        The name of the topic.
    id : Identity
        The subscriber identity.
    link : bool
        Is this a link record, or a subscriber record?
    obj : ObjectPrx | None
        The subscriber object.
    theQoS : dict[str, str]
        The QoS.
    cost : int
        The cost.
    theTopic : TopicPrx | None
        The linked topic.
    """
    topicName: str = ""
    id: Identity = field(default_factory=Identity)
    link: bool = False
    obj: ObjectPrx | None = None
    theQoS: dict[str, str] = field(default_factory=dict)
    cost: int = 0
    theTopic: TopicPrx | None = None

_IceStorm_SubscriberRecord_t = IcePy.defineStruct(
    "::IceStorm::SubscriberRecord",
    SubscriberRecord,
    (),
    (
        ("topicName", (), IcePy._t_string),
        ("id", (), _Ice_Identity_t),
        ("link", (), IcePy._t_bool),
        ("obj", (), _Ice_ObjectPrx_t),
        ("theQoS", (), _IceStorm_QoS_t),
        ("cost", (), IcePy._t_int),
        ("theTopic", (), _IceStorm_TopicPrx_t)
    ))

__all__ = ["SubscriberRecord", "_IceStorm_SubscriberRecord_t"]
