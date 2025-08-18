# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStorm.SampleEvent import SampleEvent
from DataStorm.SampleEvent import _DataStorm_SampleEvent_t

from Ice.ByteSeq import _Ice_ByteSeq_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class DataSample:
    """
    Represents a data sample, the fundamental unit of data exchanged between DataStorm readers and writers.
    
    Attributes
    ----------
    id : int
        The unique identifier for the sample.
    keyId : int
        The unique identifier for the associated key.
        A negative value (< 0) indicates a key filter.
    keyValue : bytes
        The encoded key value, used when keyId < 0 (key filter).
    timestamp : int
        The timestamp when the sample was written, in milliseconds since the epoch.
    tag : int
        An update tag, used for PartialUpdate sample events.
    event : SampleEvent
        The event type associated with this sample (e.g., Add, Update, PartialUpdate, Remove).
    value : bytes
        The payload data of the sample.
    """
    id: int = 0
    keyId: int = 0
    keyValue: bytes = field(default_factory=bytes)
    timestamp: int = 0
    tag: int = 0
    event: SampleEvent = SampleEvent.Add
    value: bytes = field(default_factory=bytes)

_DataStormContract_DataSample_t = IcePy.defineStruct(
    "::DataStormContract::DataSample",
    DataSample,
    (),
    (
        ("id", (), IcePy._t_long),
        ("keyId", (), IcePy._t_long),
        ("keyValue", (), _Ice_ByteSeq_t),
        ("timestamp", (), IcePy._t_long),
        ("tag", (), IcePy._t_long),
        ("event", (), _DataStorm_SampleEvent_t),
        ("value", (), _Ice_ByteSeq_t)
    ))

__all__ = ["DataSample", "_DataStormContract_DataSample_t"]
