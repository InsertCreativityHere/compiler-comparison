# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from User.UserInfo_forward import _User_UserInfo_t

from dataclasses import dataclass

@dataclass(eq=False)
class UserInfo(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::User::UserInfo"

_User_UserInfo_t = IcePy.defineValue(
    "::User::UserInfo",
    UserInfo,
    -1,
    (),
    False,
    None,
    ())

setattr(UserInfo, '_ice_type', _User_UserInfo_t)

__all__ = ["UserInfo", "_User_UserInfo_t"]
