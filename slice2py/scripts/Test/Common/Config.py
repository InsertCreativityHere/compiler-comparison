# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Common.Config_forward import _Test_Common_Config_t

from Test.Common.StringSeq import _Test_Common_StringSeq_t

from dataclasses import dataclass

@dataclass(eq=False)
class Config(Value):
    protocol: str | None = None
    mx: bool | None = None
    serialize: bool | None = None
    compress: bool | None = None
    ipv6: bool | None = None
    cprops: list[str] | None = None
    sprops: list[str] | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Common::Config"

_Test_Common_Config_t = IcePy.defineValue(
    "::Test::Common::Config",
    Config,
    -1,
    (),
    False,
    None,
    (
        ("protocol", (), IcePy._t_string, True, 1),
        ("mx", (), IcePy._t_bool, True, 2),
        ("serialize", (), IcePy._t_bool, True, 3),
        ("compress", (), IcePy._t_bool, True, 4),
        ("ipv6", (), IcePy._t_bool, True, 5),
        ("cprops", (), _Test_Common_StringSeq_t, True, 6),
        ("sprops", (), _Test_Common_StringSeq_t, True, 7)
    ))

setattr(Config, '_ice_type', _Test_Common_Config_t)

__all__ = ["Config", "_Test_Common_Config_t"]
