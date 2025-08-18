# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class _is(UserException):
    bar: int = 0

    _ice_id = "::Test::and::is"

_generated_test_Slice_escape_Test_escaped_and__is_t = IcePy.defineException(
    "::Test::and::is",
    _is,
    ("python:identifier:_is", ),
    None,
    (("bar", (), IcePy._t_int, False, 0),))

setattr(_is, '_ice_type', _generated_test_Slice_escape_Test_escaped_and__is_t)

__all__ = ["_is", "_generated_test_Slice_escape_Test_escaped_and__is_t"]
