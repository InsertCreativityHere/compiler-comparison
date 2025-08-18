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

from Ice.StringSeq import _Ice_StringSeq_t

from IceGrid.FileNotAvailableException import _IceGrid_FileNotAvailableException_t

from IceGrid.FileReader_forward import _IceGrid_FileReaderPrx_t

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence


class FileReaderPrx(ObjectPrx):

    def getOffsetFromEnd(self, filename: str, lines: int, context: dict[str, str] | None = None) -> int:
        """
        Count the number of given lines from the end of the file and return the file offset.
        
        Parameters
        ----------
        filename : str
        lines : int
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        int
        """
        return FileReader._op_getOffsetFromEnd.invoke(self, ((filename, lines), context))

    def getOffsetFromEndAsync(self, filename: str, lines: int, context: dict[str, str] | None = None) -> Awaitable[int]:
        """
        Count the number of given lines from the end of the file and return the file offset.
        
        Parameters
        ----------
        filename : str
        lines : int
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[int]
        """
        return FileReader._op_getOffsetFromEnd.invokeAsync(self, ((filename, lines), context))

    def read(self, filename: str, pos: int, size: int, context: dict[str, str] | None = None) -> tuple[bool, int, list[str]]:
        """
        Read lines (or size bytes) at the specified position from the given file.
        
        Parameters
        ----------
        filename : str
        pos : int
        size : int
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        tuple[bool, int, list[str]]
        
            A tuple containing:
                - bool
                - int
                - list[str]
        """
        return FileReader._op_read.invoke(self, ((filename, pos, size), context))

    def readAsync(self, filename: str, pos: int, size: int, context: dict[str, str] | None = None) -> Awaitable[tuple[bool, int, list[str]]]:
        """
        Read lines (or size bytes) at the specified position from the given file.
        
        Parameters
        ----------
        filename : str
        pos : int
        size : int
        context : dict[str, str]
            The request context for the invocation.
        
        Returns
        -------
        Awaitable[tuple[bool, int, list[str]]]
        
            A tuple containing:
                - bool
                - int
                - list[str]
        """
        return FileReader._op_read.invokeAsync(self, ((filename, pos, size), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> FileReaderPrx | None:
        return checkedCast(FileReaderPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[FileReaderPrx | None ]:
        return checkedCastAsync(FileReaderPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> FileReaderPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> FileReaderPrx | None:
        return uncheckedCast(FileReaderPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::FileReader"

IcePy.defineProxy("::IceGrid::FileReader", FileReaderPrx)

class FileReader(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::IceGrid::FileReader", )
    _op_getOffsetFromEnd: IcePy.Operation
    _op_read: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::IceGrid::FileReader"

    @abstractmethod
    def getOffsetFromEnd(self, filename: str, lines: int, current: Current) -> int | Awaitable[int]:
        """
        Count the number of given lines from the end of the file and return the file offset.
        
        Parameters
        ----------
        filename : str
        lines : int
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        int | Awaitable[int]
        """
        pass

    @abstractmethod
    def read(self, filename: str, pos: int, size: int, current: Current) -> tuple[bool, int, Sequence[str]] | Awaitable[tuple[bool, int, Sequence[str]]]:
        """
        Read lines (or size bytes) at the specified position from the given file.
        
        Parameters
        ----------
        filename : str
        pos : int
        size : int
        current : Ice.Current
            The Current object for the dispatch.
        
        Returns
        -------
        tuple[bool, int, Sequence[str]] | Awaitable[tuple[bool, int, Sequence[str]]]
        
            A tuple containing:
                - bool
                - int
                - Sequence[str]
        """
        pass

FileReader._op_getOffsetFromEnd = IcePy.Operation(
    "getOffsetFromEnd",
    "getOffsetFromEnd",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    ((), IcePy._t_long, False, 0),
    (_IceGrid_FileNotAvailableException_t,))

FileReader._op_read = IcePy.Operation(
    "read",
    "read",
    OperationMode.Idempotent,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), IcePy._t_long, False, 0), ((), IcePy._t_int, False, 0)),
    (((), IcePy._t_long, False, 0), ((), _Ice_StringSeq_t, False, 0)),
    ((), IcePy._t_bool, False, 0),
    (_IceGrid_FileNotAvailableException_t,))

__all__ = ["FileReader", "FileReaderPrx", "_IceGrid_FileReaderPrx_t"]
