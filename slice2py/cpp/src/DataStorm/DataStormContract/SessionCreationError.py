# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class SessionCreationError(Enum):
    """
    The reason for the session creation failure.
    
    Enumerators:
    
    - AlreadyConnected:
        The session is already connected.
    
    - NodeShutdown:
        Node is shutting down.
    
    - SessionNotFound:
        A confirmation was received for a session that doesn't exist.
    
    - Internal:
        The session creation failed due to an internal error.
    """
    
    AlreadyConnected = 0
    NodeShutdown = 1
    SessionNotFound = 2
    Internal = 3

_DataStormContract_SessionCreationError_t = IcePy.defineEnum(
    "::DataStormContract::SessionCreationError",
    SessionCreationError,
    (),
    {
        0: SessionCreationError.AlreadyConnected,
        1: SessionCreationError.NodeShutdown,
        2: SessionCreationError.SessionNotFound,
        3: SessionCreationError.Internal,
    }
)

__all__ = ["SessionCreationError", "_DataStormContract_SessionCreationError_t"]
