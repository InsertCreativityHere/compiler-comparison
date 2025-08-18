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

from Test.MyClass_forward import _Test_MyClassPrx_t

from Test.NDAIS import _Test_NDAIS_t

from Test.NDASS import _Test_NDASS_t

from Test.NDGIS import _Test_NDGIS_t

from Test.NDGSS import _Test_NDGSS_t

from Test.NDR import _Test_NDR_t

from Test.NDV import _Test_NDV_t

from Test.NR import _Test_NR_t

from Test.NV import _Test_NV_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Mapping
    from collections.abc import Sequence


class MyClassPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return MyClass._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return MyClass._op_shutdown.invokeAsync(self, ((), context))

    def opNV(self, i: Mapping[int, int], context: dict[str, str] | None = None) -> tuple[dict[int, int], dict[int, int]]:
        return MyClass._op_opNV.invoke(self, ((i, ), context))

    def opNVAsync(self, i: Mapping[int, int], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[int, int], dict[int, int]]]:
        return MyClass._op_opNV.invokeAsync(self, ((i, ), context))

    def opNR(self, i: Mapping[str, str], context: dict[str, str] | None = None) -> tuple[dict[str, str], dict[str, str]]:
        return MyClass._op_opNR.invoke(self, ((i, ), context))

    def opNRAsync(self, i: Mapping[str, str], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, str], dict[str, str]]]:
        return MyClass._op_opNR.invokeAsync(self, ((i, ), context))

    def opNDV(self, i: Mapping[str, Mapping[int, int]], context: dict[str, str] | None = None) -> tuple[dict[str, dict[int, int]], dict[str, dict[int, int]]]:
        return MyClass._op_opNDV.invoke(self, ((i, ), context))

    def opNDVAsync(self, i: Mapping[str, Mapping[int, int]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, dict[int, int]], dict[str, dict[int, int]]]]:
        return MyClass._op_opNDV.invokeAsync(self, ((i, ), context))

    def opNDR(self, i: Mapping[str, Mapping[str, str]], context: dict[str, str] | None = None) -> tuple[dict[str, dict[str, str]], dict[str, dict[str, str]]]:
        return MyClass._op_opNDR.invoke(self, ((i, ), context))

    def opNDRAsync(self, i: Mapping[str, Mapping[str, str]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, dict[str, str]], dict[str, dict[str, str]]]]:
        return MyClass._op_opNDR.invokeAsync(self, ((i, ), context))

    def opNDAIS(self, i: Mapping[str, Sequence[int]], context: dict[str, str] | None = None) -> tuple[dict[str, list[int]], dict[str, list[int]]]:
        return MyClass._op_opNDAIS.invoke(self, ((i, ), context))

    def opNDAISAsync(self, i: Mapping[str, Sequence[int]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, list[int]], dict[str, list[int]]]]:
        return MyClass._op_opNDAIS.invokeAsync(self, ((i, ), context))

    def opNDGIS(self, i: Mapping[str, Sequence[int]], context: dict[str, str] | None = None) -> tuple[dict[str, list[int]], dict[str, list[int]]]:
        return MyClass._op_opNDGIS.invoke(self, ((i, ), context))

    def opNDGISAsync(self, i: Mapping[str, Sequence[int]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, list[int]], dict[str, list[int]]]]:
        return MyClass._op_opNDGIS.invokeAsync(self, ((i, ), context))

    def opNDASS(self, i: Mapping[str, Sequence[str]], context: dict[str, str] | None = None) -> tuple[dict[str, list[str]], dict[str, list[str]]]:
        return MyClass._op_opNDASS.invoke(self, ((i, ), context))

    def opNDASSAsync(self, i: Mapping[str, Sequence[str]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, list[str]], dict[str, list[str]]]]:
        return MyClass._op_opNDASS.invokeAsync(self, ((i, ), context))

    def opNDGSS(self, i: Mapping[str, Sequence[str]], context: dict[str, str] | None = None) -> tuple[dict[str, list[str]], dict[str, list[str]]]:
        return MyClass._op_opNDGSS.invoke(self, ((i, ), context))

    def opNDGSSAsync(self, i: Mapping[str, Sequence[str]], context: dict[str, str] | None = None) -> Awaitable[tuple[dict[str, list[str]], dict[str, list[str]]]]:
        return MyClass._op_opNDGSS.invokeAsync(self, ((i, ), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> MyClassPrx | None:
        return checkedCast(MyClassPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[MyClassPrx | None ]:
        return checkedCastAsync(MyClassPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> MyClassPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> MyClassPrx | None:
        return uncheckedCast(MyClassPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

IcePy.defineProxy("::Test::MyClass", MyClassPrx)

class MyClass(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::MyClass", )
    _op_shutdown: IcePy.Operation
    _op_opNV: IcePy.Operation
    _op_opNR: IcePy.Operation
    _op_opNDV: IcePy.Operation
    _op_opNDR: IcePy.Operation
    _op_opNDAIS: IcePy.Operation
    _op_opNDGIS: IcePy.Operation
    _op_opNDASS: IcePy.Operation
    _op_opNDGSS: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def opNV(self, i: dict[int, int], current: Current) -> tuple[Mapping[int, int], Mapping[int, int]] | Awaitable[tuple[Mapping[int, int], Mapping[int, int]]]:
        pass

    @abstractmethod
    def opNR(self, i: dict[str, str], current: Current) -> tuple[Mapping[str, str], Mapping[str, str]] | Awaitable[tuple[Mapping[str, str], Mapping[str, str]]]:
        pass

    @abstractmethod
    def opNDV(self, i: dict[str, dict[int, int]], current: Current) -> tuple[Mapping[str, Mapping[int, int]], Mapping[str, Mapping[int, int]]] | Awaitable[tuple[Mapping[str, Mapping[int, int]], Mapping[str, Mapping[int, int]]]]:
        pass

    @abstractmethod
    def opNDR(self, i: dict[str, dict[str, str]], current: Current) -> tuple[Mapping[str, Mapping[str, str]], Mapping[str, Mapping[str, str]]] | Awaitable[tuple[Mapping[str, Mapping[str, str]], Mapping[str, Mapping[str, str]]]]:
        pass

    @abstractmethod
    def opNDAIS(self, i: dict[str, list[int]], current: Current) -> tuple[Mapping[str, Sequence[int]], Mapping[str, Sequence[int]]] | Awaitable[tuple[Mapping[str, Sequence[int]], Mapping[str, Sequence[int]]]]:
        pass

    @abstractmethod
    def opNDGIS(self, i: dict[str, list[int]], current: Current) -> tuple[Mapping[str, Sequence[int]], Mapping[str, Sequence[int]]] | Awaitable[tuple[Mapping[str, Sequence[int]], Mapping[str, Sequence[int]]]]:
        pass

    @abstractmethod
    def opNDASS(self, i: dict[str, list[str]], current: Current) -> tuple[Mapping[str, Sequence[str]], Mapping[str, Sequence[str]]] | Awaitable[tuple[Mapping[str, Sequence[str]], Mapping[str, Sequence[str]]]]:
        pass

    @abstractmethod
    def opNDGSS(self, i: dict[str, list[str]], current: Current) -> tuple[Mapping[str, Sequence[str]], Mapping[str, Sequence[str]]] | Awaitable[tuple[Mapping[str, Sequence[str]], Mapping[str, Sequence[str]]]]:
        pass

MyClass._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

MyClass._op_opNV = IcePy.Operation(
    "opNV",
    "opNV",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NV_t, False, 0),),
    (((), _Test_NV_t, False, 0),),
    ((), _Test_NV_t, False, 0),
    ())

MyClass._op_opNR = IcePy.Operation(
    "opNR",
    "opNR",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NR_t, False, 0),),
    (((), _Test_NR_t, False, 0),),
    ((), _Test_NR_t, False, 0),
    ())

MyClass._op_opNDV = IcePy.Operation(
    "opNDV",
    "opNDV",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NDV_t, False, 0),),
    (((), _Test_NDV_t, False, 0),),
    ((), _Test_NDV_t, False, 0),
    ())

MyClass._op_opNDR = IcePy.Operation(
    "opNDR",
    "opNDR",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NDR_t, False, 0),),
    (((), _Test_NDR_t, False, 0),),
    ((), _Test_NDR_t, False, 0),
    ())

MyClass._op_opNDAIS = IcePy.Operation(
    "opNDAIS",
    "opNDAIS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NDAIS_t, False, 0),),
    (((), _Test_NDAIS_t, False, 0),),
    ((), _Test_NDAIS_t, False, 0),
    ())

MyClass._op_opNDGIS = IcePy.Operation(
    "opNDGIS",
    "opNDGIS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NDGIS_t, False, 0),),
    (((), _Test_NDGIS_t, False, 0),),
    ((), _Test_NDGIS_t, False, 0),
    ())

MyClass._op_opNDASS = IcePy.Operation(
    "opNDASS",
    "opNDASS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NDASS_t, False, 0),),
    (((), _Test_NDASS_t, False, 0),),
    ((), _Test_NDASS_t, False, 0),
    ())

MyClass._op_opNDGSS = IcePy.Operation(
    "opNDGSS",
    "opNDGSS",
    OperationMode.Normal,
    None,
    (),
    (((), _Test_NDGSS_t, False, 0),),
    (((), _Test_NDGSS_t, False, 0),),
    ((), _Test_NDGSS_t, False, 0),
    ())

__all__ = ["MyClass", "MyClassPrx", "_Test_MyClassPrx_t"]
