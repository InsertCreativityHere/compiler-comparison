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

from abc import ABC
from abc import abstractmethod

from abstract.decimal_forward import _abstract_decimalPrx_t

from abstract.foreach import _abstract_foreach_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class decimalPrx(ObjectPrx):

    def default(self, context: dict[str, str] | None = None) -> None:
        """
        Parameters
        ----------
        context : dict[str, str]
            The request context for the invocation.
        
        Raises
        ------
        foreach
            make sure the link is correctly generated.
        """
        return decimal._op_default.invoke(self, ((), context))

    def defaultAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return decimal._op_default.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> decimalPrx | None:
        return checkedCast(decimalPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[decimalPrx | None ]:
        return checkedCastAsync(decimalPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> decimalPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> decimalPrx | None:
        return uncheckedCast(decimalPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::decimal"

IcePy.defineProxy("::abstract::decimal", decimalPrx)

class decimal(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::abstract::decimal", )
    _op_default: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::decimal"

    @abstractmethod
    def default(self, current: Current) -> None | Awaitable[None]:
        """
        Parameters
        ----------
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        None | Awaitable[None]
            None or an awaitable that completes when the dispatch completes.
        
        Raises
        ------
        foreach
            make sure the link is correctly generated.
        """
        pass

decimal._op_default = IcePy.Operation(
    "default",
    "default",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_abstract_foreach_t,))

__all__ = ["decimal", "decimalPrx", "_abstract_decimalPrx_t"]
