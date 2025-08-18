# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceGrid.InternalRegistry_forward import _IceGrid_InternalRegistryPrx_t

_IceGrid_InternalRegistryPrxSeq_t = IcePy.defineSequence("::IceGrid::InternalRegistryPrxSeq", (), _IceGrid_InternalRegistryPrx_t)

__all__ = ["_IceGrid_InternalRegistryPrxSeq_t"]
