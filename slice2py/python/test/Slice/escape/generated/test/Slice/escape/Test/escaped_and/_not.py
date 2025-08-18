# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Slice.escape.Test.escaped_and._is import _generated_test_Slice_escape_Test_escaped_and__is_t
from generated.test.Slice.escape.Test.escaped_and._is import _is


@dataclass
class _not(_is):
    _pass: int = 0

    _ice_id = "::Test::and::not"

_generated_test_Slice_escape_Test_escaped_and__not_t = IcePy.defineException(
    "::Test::and::not",
    _not,
    ("python:identifier:_not", ),
    _generated_test_Slice_escape_Test_escaped_and__is_t,
    (("_pass", ("python:identifier:_pass", ), IcePy._t_int, False, 0),))

setattr(_not, '_ice_type', _generated_test_Slice_escape_Test_escaped_and__not_t)

__all__ = ["_not", "_generated_test_Slice_escape_Test_escaped_and__not_t"]
