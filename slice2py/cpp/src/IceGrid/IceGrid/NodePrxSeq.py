# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceGrid.Node_forward import _IceGrid_NodePrx_t

_IceGrid_NodePrxSeq_t = IcePy.defineSequence("::IceGrid::NodePrxSeq", (), _IceGrid_NodePrx_t)

__all__ = ["_IceGrid_NodePrxSeq_t"]
