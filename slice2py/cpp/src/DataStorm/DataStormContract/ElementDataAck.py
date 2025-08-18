# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.DataSampleSeq import _DataStormContract_DataSampleSeq_t

from DataStormContract.ElementConfig_forward import _DataStormContract_ElementConfig_t

from DataStormContract.LongLongDict import _DataStormContract_LongLongDict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from DataStormContract.DataSample import DataSample
    from DataStormContract.ElementConfig import ElementConfig


@dataclass
class ElementDataAck:
    """
    Represents an acknowledgment of the attachment of data readers or data writers associated with a key or filter.
    
    Attributes
    ----------
    id : int
        The unique identifier for the data reader or data writer.
    config : ElementConfig | None
        The configuration settings for the data reader or data writer.
    lastIds : dict[int, int]
        A mapping of data writer IDs to the last sample IDs received by the data reader.
        
        - The key represents the data writer ID.
        - The value represents the last sample ID received from the corresponding data writer.
    samples : list[DataSample]
        A sequence of samples in the writer's queue, used to initialize the reader.
        
        - When this struct is sent from a subscriber to a publisher, this field is empty.
        - When sent from a publisher to a subscriber, this field contains the queued samples.
    peerId : int
        The unique identifier for the peer's data reader or data writer.
    """
    id: int = 0
    config: ElementConfig | None = None
    lastIds: dict[int, int] = field(default_factory=dict)
    samples: list[DataSample] = field(default_factory=list)
    peerId: int = 0

_DataStormContract_ElementDataAck_t = IcePy.defineStruct(
    "::DataStormContract::ElementDataAck",
    ElementDataAck,
    (),
    (
        ("id", (), IcePy._t_long),
        ("config", (), _DataStormContract_ElementConfig_t),
        ("lastIds", (), _DataStormContract_LongLongDict_t),
        ("samples", (), _DataStormContract_DataSampleSeq_t),
        ("peerId", (), IcePy._t_long)
    ))

__all__ = ["ElementDataAck", "_DataStormContract_ElementDataAck_t"]
