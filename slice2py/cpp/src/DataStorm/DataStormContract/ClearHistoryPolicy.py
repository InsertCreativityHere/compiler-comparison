# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class ClearHistoryPolicy(Enum):
    """
    Defines policies for clearing the data sample history of a reader in response to sample events.
    
    Enumerators:
    
    - OnAdd:
        The reader clears its history when a new data sample is added.
    
    - OnRemove:
        The reader clears its history when a data sample is removed.
    
    - OnAll:
        The reader clears its history when any data sample event occurs.
    
    - OnAllExceptPartialUpdate:
        The reader clears its history for all data sample events except for partial update events.
    
    - Never:
        The reader never clears its history.
    """
    
    OnAdd = 0
    OnRemove = 1
    OnAll = 2
    OnAllExceptPartialUpdate = 3
    Never = 4

_DataStormContract_ClearHistoryPolicy_t = IcePy.defineEnum(
    "::DataStormContract::ClearHistoryPolicy",
    ClearHistoryPolicy,
    (),
    {
        0: ClearHistoryPolicy.OnAdd,
        1: ClearHistoryPolicy.OnRemove,
        2: ClearHistoryPolicy.OnAll,
        3: ClearHistoryPolicy.OnAllExceptPartialUpdate,
        4: ClearHistoryPolicy.Never,
    }
)

__all__ = ["ClearHistoryPolicy", "_DataStormContract_ClearHistoryPolicy_t"]
