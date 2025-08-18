# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Test.C_forward import _Test_C_t

from Test.S1 import S1
from Test.S1 import _Test_S1_t

from Test.StringDict import _Test_StringDict_t

from Test.StringSeq import _Test_StringSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Ice.ObjectPrx import ObjectPrx
    from Test.C import C


@dataclass
class S2:
    bo: bool = False
    by: int = 0
    sh: int = 0
    i: int = 0
    l: int = 0
    f: float = 0.0
    d: float = 0.0
    str: str = ""
    ss: list[str] = field(default_factory=list)
    sd: dict[str, str] = field(default_factory=dict)
    s: S1 = field(default_factory=S1)
    cls: C | None = None
    prx: ObjectPrx | None = None

_Test_S2_t = IcePy.defineStruct(
    "::Test::S2",
    S2,
    (),
    (
        ("bo", (), IcePy._t_bool),
        ("by", (), IcePy._t_byte),
        ("sh", (), IcePy._t_short),
        ("i", (), IcePy._t_int),
        ("l", (), IcePy._t_long),
        ("f", (), IcePy._t_float),
        ("d", (), IcePy._t_double),
        ("str", (), IcePy._t_string),
        ("ss", (), _Test_StringSeq_t),
        ("sd", (), _Test_StringDict_t),
        ("s", (), _Test_S1_t),
        ("cls", (), _Test_C_t),
        ("prx", (), _Ice_ObjectPrx_t)
    ))

__all__ = ["S2", "_Test_S2_t"]
