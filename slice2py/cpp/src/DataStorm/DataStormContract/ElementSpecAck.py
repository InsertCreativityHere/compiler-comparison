# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementDataAckSeq import _DataStormContract_ElementDataAckSeq_t

from Ice.ByteSeq import _Ice_ByteSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from DataStormContract.ElementDataAck import ElementDataAck


@dataclass
class ElementSpecAck:
    """
    Represents an acknowledgment of the attachment of an element, which can be a key or a filter.
    
    Attributes
    ----------
    elements : list[ElementDataAck]
        A sequence of acknowledgments for the readers or writers associated with the key or filter.
    id : int
        The unique identifier for the key or filter.
    name : str
        The name of the filter.
        This field is empty if the element is a key.
    value : bytes
        The encoded value of the key or filter.
    peerId : int
        The unique identifier for the key or filter on the peer.
    peerName : str
        The name of the filter on the peer.
        This field is empty if the element is a key.
    """
    elements: list[ElementDataAck] = field(default_factory=list)
    id: int = 0
    name: str = ""
    value: bytes = field(default_factory=bytes)
    peerId: int = 0
    peerName: str = ""

_DataStormContract_ElementSpecAck_t = IcePy.defineStruct(
    "::DataStormContract::ElementSpecAck",
    ElementSpecAck,
    (),
    (
        ("elements", (), _DataStormContract_ElementDataAckSeq_t),
        ("id", (), IcePy._t_long),
        ("name", (), IcePy._t_string),
        ("value", (), _Ice_ByteSeq_t),
        ("peerId", (), IcePy._t_long),
        ("peerName", (), IcePy._t_string)
    ))

__all__ = ["ElementSpecAck", "_DataStormContract_ElementSpecAck_t"]
