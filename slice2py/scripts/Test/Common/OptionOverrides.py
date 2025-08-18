# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Common.BoolSeq import _Test_Common_BoolSeq_t

from Test.Common.OptionOverrides_forward import _Test_Common_OptionOverrides_t

from Test.Common.StringSeq import _Test_Common_StringSeq_t

from dataclasses import dataclass

@dataclass(eq=False)
class OptionOverrides(Value):
    protocol: list[str] | None = None
    mx: list[bool] | None = None
    serialize: list[bool] | None = None
    compress: list[bool] | None = None
    ipv6: list[bool] | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::OptionOverrides"

_Test_Common_OptionOverrides_t = IcePy.defineValue(
    "::Test::Common::OptionOverrides",
    OptionOverrides,
    -1,
    (),
    False,
    None,
    (
        ("protocol", (), _Test_Common_StringSeq_t, True, 1),
        ("mx", (), _Test_Common_BoolSeq_t, True, 2),
        ("serialize", (), _Test_Common_BoolSeq_t, True, 3),
        ("compress", (), _Test_Common_BoolSeq_t, True, 4),
        ("ipv6", (), _Test_Common_BoolSeq_t, True, 5)
    ))

setattr(OptionOverrides, '_ice_type', _Test_Common_OptionOverrides_t)

__all__ = ["OptionOverrides", "_Test_Common_OptionOverrides_t"]
