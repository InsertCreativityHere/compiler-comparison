# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Core.ArgumentException import _Core_ArgumentException_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from User.Registry_forward import _User_RegistryPrx_t

from User.UserInfo_forward import _User_UserInfo_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from User.UserInfo import UserInfo
    from collections.abc import Awaitable
    from collections.abc import Sequence


class RegistryPrx(ObjectPrx):

    def getUserInfo(self, id: str, context: dict[str, str] | None = None) -> UserInfo | None:
        return Registry._op_getUserInfo.invoke(self, ((id, ), context))

    def getUserInfoAsync(self, id: str, context: dict[str, str] | None = None) -> Awaitable[UserInfo | None]:
        return Registry._op_getUserInfo.invokeAsync(self, ((id, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> RegistryPrx | None:
        return checkedCast(RegistryPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[RegistryPrx | None ]:
        return checkedCastAsync(RegistryPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> RegistryPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> RegistryPrx | None:
        return uncheckedCast(RegistryPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::User::Registry"

IcePy.defineProxy("::User::Registry", RegistryPrx)

class Registry(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::User::Registry", )
    _op_getUserInfo: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::User::Registry"

    @abstractmethod
    def getUserInfo(self, id: str, current: Current) -> UserInfo | None | Awaitable[UserInfo | None]:
        pass

Registry._op_getUserInfo = IcePy.Operation(
    "getUserInfo",
    "getUserInfo",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    ((), _User_UserInfo_t, False, 0),
    (_Core_ArgumentException_t,))

__all__ = ["Registry", "RegistryPrx", "_User_RegistryPrx_t"]
