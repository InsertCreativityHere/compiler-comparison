# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceGrid.InternalAdapterDescriptor_forward import _IceGrid_InternalAdapterDescriptor_t

_IceGrid_InternalAdapterDescriptorSeq_t = IcePy.defineSequence("::IceGrid::InternalAdapterDescriptorSeq", (), _IceGrid_InternalAdapterDescriptor_t)

__all__ = ["_IceGrid_InternalAdapterDescriptorSeq_t"]
