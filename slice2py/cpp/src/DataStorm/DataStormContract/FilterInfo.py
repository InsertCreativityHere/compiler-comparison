# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class FilterInfo:
    """
    Represents a sample filter that specifies which samples should be sent to a data reader.
    
    Attributes
    ----------
    name : str
        The unique name of the filter, used for identification.
    criteria : bytes
        The encoded criteria for instantiating the filter.
    """
    name: str = ""
    criteria: bytes = field(default_factory=bytes)

_DataStormContract_FilterInfo_t = IcePy.defineStruct(
    "::DataStormContract::FilterInfo",
    FilterInfo,
    (),
    (
        ("name", (), IcePy._t_string),
        ("criteria", (), _Ice_ByteSeq_t)
    ))

__all__ = ["FilterInfo", "_DataStormContract_FilterInfo_t"]
