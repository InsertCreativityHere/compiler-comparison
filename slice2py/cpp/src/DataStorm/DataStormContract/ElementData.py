# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ElementConfig_forward import _DataStormContract_ElementConfig_t

from DataStormContract.LongLongDict import _DataStormContract_LongLongDict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from DataStormContract.ElementConfig import ElementConfig


@dataclass
class ElementData:
    """
    Encapsulates the state and configuration data for a data reader or data writer.
    
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
    """
    id: int = 0
    config: ElementConfig | None = None
    lastIds: dict[int, int] = field(default_factory=dict)

_DataStormContract_ElementData_t = IcePy.defineStruct(
    "::DataStormContract::ElementData",
    ElementData,
    (),
    (
        ("id", (), IcePy._t_long),
        ("config", (), _DataStormContract_ElementConfig_t),
        ("lastIds", (), _DataStormContract_LongLongDict_t)
    ))

__all__ = ["ElementData", "_DataStormContract_ElementData_t"]
