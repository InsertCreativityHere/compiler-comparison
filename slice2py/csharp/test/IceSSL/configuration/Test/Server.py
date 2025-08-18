# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from Test.Server_forward import _Test_ServerPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ServerPrx(ObjectPrx):

    def noCert(self, context: dict[str, str] | None = None) -> None:
        return Server._op_noCert.invoke(self, ((), context))

    def noCertAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Server._op_noCert.invokeAsync(self, ((), context))

    def checkCert(self, subjectDN: str, issuerDN: str, context: dict[str, str] | None = None) -> None:
        return Server._op_checkCert.invoke(self, ((subjectDN, issuerDN), context))

    def checkCertAsync(self, subjectDN: str, issuerDN: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Server._op_checkCert.invokeAsync(self, ((subjectDN, issuerDN), context))

    def checkCipher(self, cipher: str, context: dict[str, str] | None = None) -> None:
        return Server._op_checkCipher.invoke(self, ((cipher, ), context))

    def checkCipherAsync(self, cipher: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Server._op_checkCipher.invokeAsync(self, ((cipher, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ServerPrx | None:
        return checkedCast(ServerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ServerPrx | None ]:
        return checkedCastAsync(ServerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ServerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ServerPrx | None:
        return uncheckedCast(ServerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Server"

IcePy.defineProxy("::Test::Server", ServerPrx)

class Server(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Server", )
    _op_noCert: IcePy.Operation
    _op_checkCert: IcePy.Operation
    _op_checkCipher: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Server"

    @abstractmethod
    def noCert(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def checkCert(self, subjectDN: str, issuerDN: str, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def checkCipher(self, cipher: str, current: Current) -> None | Awaitable[None]:
        pass

Server._op_noCert = IcePy.Operation(
    "noCert",
    "noCert",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Server._op_checkCert = IcePy.Operation(
    "checkCert",
    "checkCert",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

Server._op_checkCipher = IcePy.Operation(
    "checkCipher",
    "checkCipher",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0),),
    (),
    None,
    ())

__all__ = ["Server", "ServerPrx", "_Test_ServerPrx_t"]
