# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class TopicName(Enum):
    
    RegistryObserver = 0
    NodeObserver = 1
    ApplicationObserver = 2
    AdapterObserver = 3
    ObjectObserver = 4

_IceGrid_TopicName_t = IcePy.defineEnum(
    "::IceGrid::TopicName",
    TopicName,
    (),
    {
        0: TopicName.RegistryObserver,
        1: TopicName.NodeObserver,
        2: TopicName.ApplicationObserver,
        3: TopicName.AdapterObserver,
        4: TopicName.ObjectObserver,
    }
)

__all__ = ["TopicName", "_IceGrid_TopicName_t"]
