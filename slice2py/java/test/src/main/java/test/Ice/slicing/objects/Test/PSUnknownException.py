# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PSUnknown2_forward import _Test_PSUnknown2_t

from Test.PreservedException import PreservedException
from Test.PreservedException import _Test_PreservedException_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.PSUnknown2 import PSUnknown2


@dataclass
class PSUnknownException(PreservedException):
    p: PSUnknown2 | None = None

    _ice_id = "::Test::PSUnknownException"

_Test_PSUnknownException_t = IcePy.defineException(
    "::Test::PSUnknownException",
    PSUnknownException,
    (),
    _Test_PreservedException_t,
    (("p", (), _Test_PSUnknown2_t, False, 0),))

setattr(PSUnknownException, '_ice_type', _Test_PSUnknownException_t)

__all__ = ["PSUnknownException", "_Test_PSUnknownException_t"]
