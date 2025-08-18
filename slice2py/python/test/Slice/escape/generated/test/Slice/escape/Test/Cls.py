# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Slice.escape.Test.Cls_forward import _generated_test_Slice_escape_Test_Cls_t

from generated.test.Slice.escape.Test.Intf_forward import _generated_test_Slice_escape_Test_IntfPrx_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Slice.escape.Test.Intf import IntfPrx

@dataclass(eq=False)
class Cls(Value):
    s: IntfPrx | None = None
    context: str = ""
    current: int = 0
    response: int = 0
    upCast: str = ""
    typeId: int = 0
    _del: int = 0
    cookie: int | None = None
    ex: str = ""
    result: int = 0
    istr: str = ""
    ostr: str = ""
    inS: str = ""
    _in: str = ""
    proxy: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Cls"

_generated_test_Slice_escape_Test_Cls_t = IcePy.defineValue(
    "::Test::Cls",
    Cls,
    -1,
    (),
    False,
    None,
    (
        ("s", (), _generated_test_Slice_escape_Test_IntfPrx_t, False, 0),
        ("context", (), IcePy._t_string, False, 0),
        ("current", (), IcePy._t_int, False, 0),
        ("response", (), IcePy._t_short, False, 0),
        ("upCast", (), IcePy._t_string, False, 0),
        ("typeId", (), IcePy._t_int, False, 0),
        ("_del", ("python:identifier:_del", ), IcePy._t_short, False, 0),
        ("cookie", (), IcePy._t_short, True, 1),
        ("ex", (), IcePy._t_string, False, 0),
        ("result", (), IcePy._t_int, False, 0),
        ("istr", (), IcePy._t_string, False, 0),
        ("ostr", (), IcePy._t_string, False, 0),
        ("inS", (), IcePy._t_string, False, 0),
        ("_in", ("python:identifier:_in", ), IcePy._t_string, False, 0),
        ("proxy", (), IcePy._t_string, False, 0)
    ))

setattr(Cls, '_ice_type', _generated_test_Slice_escape_Test_Cls_t)

__all__ = ["Cls", "_generated_test_Slice_escape_Test_Cls_t"]
