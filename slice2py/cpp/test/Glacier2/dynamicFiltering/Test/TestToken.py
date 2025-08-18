# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StateCode import StateCode
from Test.StateCode import _Test_StateCode_t

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class TestToken:
    expectedResult: bool = False
    description: str = ""
    code: StateCode = StateCode.Initial
    config: int = 0
    caseIndex: int = 0
    testReference: str = ""

_Test_TestToken_t = IcePy.defineStruct(
    "::Test::TestToken",
    TestToken,
    (),
    (
        ("expectedResult", (), IcePy._t_bool),
        ("description", (), IcePy._t_string),
        ("code", (), _Test_StateCode_t),
        ("config", (), IcePy._t_short),
        ("caseIndex", (), IcePy._t_short),
        ("testReference", (), IcePy._t_string)
    ))

__all__ = ["TestToken", "_Test_TestToken_t"]
