# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementInfoSeq import _DataStormContract_ElementInfoSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from DataStormContract.ElementInfo import ElementInfo


@dataclass
class TopicSpec:
    """
    Provides detailed information about topic readers and topic writers, including its ID, name, keys, filters,
    and tags.
    
    Attributes
    ----------
    id : int
        The unique identifier for the topic.
        The ID uniquely identifies a topic reader or topic writer within a node.
    name : str
        The name of the topic.
    elements : list[ElementInfo]
        The topic's keys and filters.
    tags : list[ElementInfo]
        The topic update tags.
    """
    id: int = 0
    name: str = ""
    elements: list[ElementInfo] = field(default_factory=list)
    tags: list[ElementInfo] = field(default_factory=list)

_DataStormContract_TopicSpec_t = IcePy.defineStruct(
    "::DataStormContract::TopicSpec",
    TopicSpec,
    (),
    (
        ("id", (), IcePy._t_long),
        ("name", (), IcePy._t_string),
        ("elements", (), _DataStormContract_ElementInfoSeq_t),
        ("tags", (), _DataStormContract_ElementInfoSeq_t)
    ))

__all__ = ["TopicSpec", "_DataStormContract_TopicSpec_t"]
