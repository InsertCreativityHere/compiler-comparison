# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceGrid.Adapter_forward import _IceGrid_AdapterPrx_t

_IceGrid_AdapterPrxDict_t = IcePy.defineDictionary("::IceGrid::AdapterPrxDict", (), IcePy._t_string, _IceGrid_AdapterPrx_t)

__all__ = ["_IceGrid_AdapterPrxDict_t"]
