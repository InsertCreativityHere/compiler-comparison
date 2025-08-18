# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class LogUpdate:
    """
    A struct used for marking the last log update.
    
    Attributes
    ----------
    generation : int
        The generation.
    iteration : int
        The iteration within this generation.
    """
    generation: int = 0
    iteration: int = 0

_IceStormElection_LogUpdate_t = IcePy.defineStruct(
    "::IceStormElection::LogUpdate",
    LogUpdate,
    (),
    (
        ("generation", (), IcePy._t_long),
        ("iteration", (), IcePy._t_long)
    ))

__all__ = ["LogUpdate", "_IceStormElection_LogUpdate_t"]
