# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.LongSeq import _Ice_LongSeq_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class TopicInfo:
    """
    Contains metadata about a topic, including its name and associated reader/writer IDs.
    
    Attributes
    ----------
    name : str
        The name of the topic.
    ids : list[int]
        The list of active topic reader or writer IDs.
        
        - In a publisher session,  the `ids` field contains the active topic writer IDs.
        - In a subscriber session,  the `ids` field contains the active topic reader IDs.
    """
    name: str = ""
    ids: list[int] = field(default_factory=list)

_DataStormContract_TopicInfo_t = IcePy.defineStruct(
    "::DataStormContract::TopicInfo",
    TopicInfo,
    (),
    (
        ("name", (), IcePy._t_string),
        ("ids", (), _Ice_LongSeq_t)
    ))

__all__ = ["TopicInfo", "_DataStormContract_TopicInfo_t"]
