# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class ElementInfo:
    """
    Provides metadata about an element, such as a key, filter, or tag.
    
    Attributes
    ----------
    id : int
        The unique identifier for the element.
        Negative values indicate filter IDs; positive values indicate key or tag IDs.
    name : str
        The name of the element. Empty for key and tag elements.
    value : bytes
        The encoded value of the element.
    """
    id: int = 0
    name: str = ""
    value: bytes = field(default_factory=bytes)

_DataStormContract_ElementInfo_t = IcePy.defineStruct(
    "::DataStormContract::ElementInfo",
    ElementInfo,
    (),
    (
        ("id", (), IcePy._t_long),
        ("name", (), IcePy._t_string),
        ("value", (), _Ice_ByteSeq_t)
    ))

__all__ = ["ElementInfo", "_DataStormContract_ElementInfo_t"]
