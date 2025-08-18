# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class SampleEvent(Enum):
    """
    Describes the operation used by a data writer to update a data element.
    
    Enumerators:
    
    - Add:
        The data writer added the element.
    
    - Update:
        The data writer updated the element.
    
    - PartialUpdate:
        The data writer partially updated the element.
    
    - Remove:
        The data writer removed the element.
    """
    
    Add = 0
    Update = 1
    PartialUpdate = 2
    Remove = 3

_DataStorm_SampleEvent_t = IcePy.defineEnum(
    "::DataStorm::SampleEvent",
    SampleEvent,
    (),
    {
        0: SampleEvent.Add,
        1: SampleEvent.Update,
        2: SampleEvent.PartialUpdate,
        3: SampleEvent.Remove,
    }
)

__all__ = ["SampleEvent", "_DataStorm_SampleEvent_t"]
