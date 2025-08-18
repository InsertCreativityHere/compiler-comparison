# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

from Ice.Context import _Ice_Context_t

from Ice.OperationMode import OperationMode
from Ice.OperationMode import _Ice_OperationMode_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class EventData:
    """
    The event data.
    
    Attributes
    ----------
    op : str
        The operation name.
    mode : OperationMode
        The operation mode.
    data : bytes
        The encoded data for the operation's input parameters.
    context : dict[str, str]
        The Ice::Current::Context data from the originating request.
    """
    op: str = ""
    mode: OperationMode = OperationMode.Normal
    data: bytes = field(default_factory=bytes)
    context: dict[str, str] = field(default_factory=dict)

_IceStorm_EventData_t = IcePy.defineStruct(
    "::IceStorm::EventData",
    EventData,
    (),
    (
        ("op", (), IcePy._t_string),
        ("mode", (), _Ice_OperationMode_t),
        ("data", (), _Ice_ByteSeq_t),
        ("context", (), _Ice_Context_t)
    ))

__all__ = ["EventData", "_IceStorm_EventData_t"]
