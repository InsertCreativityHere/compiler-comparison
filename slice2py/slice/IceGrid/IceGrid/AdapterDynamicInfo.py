# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Ice.ObjectPrx import ObjectPrx


@dataclass
class AdapterDynamicInfo:
    """
    Dynamic information about the state of an adapter.
    
    Attributes
    ----------
    id : str
        The id of the adapter.
    proxy : ObjectPrx | None
        The direct proxy containing the adapter endpoints. This proxy is never null.
    """
    id: str = ""
    proxy: ObjectPrx | None = None

_IceGrid_AdapterDynamicInfo_t = IcePy.defineStruct(
    "::IceGrid::AdapterDynamicInfo",
    AdapterDynamicInfo,
    (),
    (
        ("id", (), IcePy._t_string),
        ("proxy", (), _Ice_ObjectPrx_t)
    ))

__all__ = ["AdapterDynamicInfo", "_IceGrid_AdapterDynamicInfo_t"]
