# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

from Ice.Identity import _Ice_Identity_t

from Ice.Object import Object

from Ice.ObjectPrx import ObjectPrx
from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from generated.test.Ice.exceptions.Test.A import _generated_test_Ice_exceptions_Test_A_t

from generated.test.Ice.exceptions.Test.B import _generated_test_Ice_exceptions_Test_B_t

from generated.test.Ice.exceptions.Test.C import _generated_test_Ice_exceptions_Test_C_t

from generated.test.Ice.exceptions.Test.D import _generated_test_Ice_exceptions_Test_D_t

from generated.test.Ice.exceptions.Test.Mod.A import _generated_test_Ice_exceptions_Test_Mod_A_t

from generated.test.Ice.exceptions.Test.Thrower_forward import _generated_test_Ice_exceptions_Test_ThrowerPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from Ice.Identity import Identity
    from collections.abc import Awaitable
    from collections.abc import Sequence


class ThrowerPrx(ObjectPrx):

    def shutdown(self, context: dict[str, str] | None = None) -> None:
        return Thrower._op_shutdown.invoke(self, ((), context))

    def shutdownAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_shutdown.invokeAsync(self, ((), context))

    def supportsUndeclaredExceptions(self, context: dict[str, str] | None = None) -> bool:
        return Thrower._op_supportsUndeclaredExceptions.invoke(self, ((), context))

    def supportsUndeclaredExceptionsAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return Thrower._op_supportsUndeclaredExceptions.invokeAsync(self, ((), context))

    def supportsAssertException(self, context: dict[str, str] | None = None) -> bool:
        return Thrower._op_supportsAssertException.invoke(self, ((), context))

    def supportsAssertExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[bool]:
        return Thrower._op_supportsAssertException.invokeAsync(self, ((), context))

    def throwAasA(self, a: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwAasA.invoke(self, ((a, ), context))

    def throwAasAAsync(self, a: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwAasA.invokeAsync(self, ((a, ), context))

    def throwAorDasAorD(self, a: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwAorDasAorD.invoke(self, ((a, ), context))

    def throwAorDasAorDAsync(self, a: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwAorDasAorD.invokeAsync(self, ((a, ), context))

    def throwBasA(self, a: int, b: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwBasA.invoke(self, ((a, b), context))

    def throwBasAAsync(self, a: int, b: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwBasA.invokeAsync(self, ((a, b), context))

    def throwCasA(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwCasA.invoke(self, ((a, b, c), context))

    def throwCasAAsync(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwCasA.invokeAsync(self, ((a, b, c), context))

    def throwBasB(self, a: int, b: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwBasB.invoke(self, ((a, b), context))

    def throwBasBAsync(self, a: int, b: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwBasB.invokeAsync(self, ((a, b), context))

    def throwCasB(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwCasB.invoke(self, ((a, b, c), context))

    def throwCasBAsync(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwCasB.invokeAsync(self, ((a, b, c), context))

    def throwCasC(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwCasC.invoke(self, ((a, b, c), context))

    def throwCasCAsync(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwCasC.invokeAsync(self, ((a, b, c), context))

    def throwModA(self, a: int, a2: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwModA.invoke(self, ((a, a2), context))

    def throwModAAsync(self, a: int, a2: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwModA.invokeAsync(self, ((a, a2), context))

    def throwUndeclaredA(self, a: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwUndeclaredA.invoke(self, ((a, ), context))

    def throwUndeclaredAAsync(self, a: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwUndeclaredA.invokeAsync(self, ((a, ), context))

    def throwUndeclaredB(self, a: int, b: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwUndeclaredB.invoke(self, ((a, b), context))

    def throwUndeclaredBAsync(self, a: int, b: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwUndeclaredB.invokeAsync(self, ((a, b), context))

    def throwUndeclaredC(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwUndeclaredC.invoke(self, ((a, b, c), context))

    def throwUndeclaredCAsync(self, a: int, b: int, c: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwUndeclaredC.invokeAsync(self, ((a, b, c), context))

    def throwLocalException(self, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwLocalException.invoke(self, ((), context))

    def throwLocalExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwLocalException.invokeAsync(self, ((), context))

    def throwNonIceException(self, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwNonIceException.invoke(self, ((), context))

    def throwNonIceExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwNonIceException.invokeAsync(self, ((), context))

    def throwAssertException(self, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwAssertException.invoke(self, ((), context))

    def throwAssertExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwAssertException.invokeAsync(self, ((), context))

    def throwMemoryLimitException(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> bytes:
        return Thrower._op_throwMemoryLimitException.invoke(self, ((seq, ), context))

    def throwMemoryLimitExceptionAsync(self, seq: Sequence[int] | bytes, context: dict[str, str] | None = None) -> Awaitable[bytes]:
        return Thrower._op_throwMemoryLimitException.invokeAsync(self, ((seq, ), context))

    def throwLocalExceptionIdempotent(self, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwLocalExceptionIdempotent.invoke(self, ((), context))

    def throwLocalExceptionIdempotentAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwLocalExceptionIdempotent.invokeAsync(self, ((), context))

    def throwDispatchException(self, replyStatus: int, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwDispatchException.invoke(self, ((replyStatus, ), context))

    def throwDispatchExceptionAsync(self, replyStatus: int, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwDispatchException.invokeAsync(self, ((replyStatus, ), context))

    def throwAfterResponse(self, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwAfterResponse.invoke(self, ((), context))

    def throwAfterResponseAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwAfterResponse.invokeAsync(self, ((), context))

    def throwAfterException(self, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwAfterException.invoke(self, ((), context))

    def throwAfterExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwAfterException.invokeAsync(self, ((), context))

    def throwMarshalException(self, context: dict[str, str] | None = None) -> tuple[int, int]:
        return Thrower._op_throwMarshalException.invoke(self, ((), context))

    def throwMarshalExceptionAsync(self, context: dict[str, str] | None = None) -> Awaitable[tuple[int, int]]:
        return Thrower._op_throwMarshalException.invokeAsync(self, ((), context))

    def throwRequestFailedException(self, type: str, id: Identity, facet: str, operation: str, context: dict[str, str] | None = None) -> None:
        return Thrower._op_throwRequestFailedException.invoke(self, ((type, id, facet, operation), context))

    def throwRequestFailedExceptionAsync(self, type: str, id: Identity, facet: str, operation: str, context: dict[str, str] | None = None) -> Awaitable[None]:
        return Thrower._op_throwRequestFailedException.invokeAsync(self, ((type, id, facet, operation), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> ThrowerPrx | None:
        return checkedCast(ThrowerPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[ThrowerPrx | None ]:
        return checkedCastAsync(ThrowerPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> ThrowerPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> ThrowerPrx | None:
        return uncheckedCast(ThrowerPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Thrower"

IcePy.defineProxy("::Test::Thrower", ThrowerPrx)

class Thrower(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::Thrower", )
    _op_shutdown: IcePy.Operation
    _op_supportsUndeclaredExceptions: IcePy.Operation
    _op_supportsAssertException: IcePy.Operation
    _op_throwAasA: IcePy.Operation
    _op_throwAorDasAorD: IcePy.Operation
    _op_throwBasA: IcePy.Operation
    _op_throwCasA: IcePy.Operation
    _op_throwBasB: IcePy.Operation
    _op_throwCasB: IcePy.Operation
    _op_throwCasC: IcePy.Operation
    _op_throwModA: IcePy.Operation
    _op_throwUndeclaredA: IcePy.Operation
    _op_throwUndeclaredB: IcePy.Operation
    _op_throwUndeclaredC: IcePy.Operation
    _op_throwLocalException: IcePy.Operation
    _op_throwNonIceException: IcePy.Operation
    _op_throwAssertException: IcePy.Operation
    _op_throwMemoryLimitException: IcePy.Operation
    _op_throwLocalExceptionIdempotent: IcePy.Operation
    _op_throwDispatchException: IcePy.Operation
    _op_throwAfterResponse: IcePy.Operation
    _op_throwAfterException: IcePy.Operation
    _op_throwMarshalException: IcePy.Operation
    _op_throwRequestFailedException: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Thrower"

    @abstractmethod
    def shutdown(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def supportsUndeclaredExceptions(self, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def supportsAssertException(self, current: Current) -> bool | Awaitable[bool]:
        pass

    @abstractmethod
    def throwAasA(self, a: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwAorDasAorD(self, a: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwBasA(self, a: int, b: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwCasA(self, a: int, b: int, c: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwBasB(self, a: int, b: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwCasB(self, a: int, b: int, c: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwCasC(self, a: int, b: int, c: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwModA(self, a: int, a2: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwUndeclaredA(self, a: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwUndeclaredB(self, a: int, b: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwUndeclaredC(self, a: int, b: int, c: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwLocalException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwNonIceException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwAssertException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwMemoryLimitException(self, seq: bytes, current: Current) -> Sequence[int] | bytes | Awaitable[Sequence[int] | bytes]:
        pass

    @abstractmethod
    def throwLocalExceptionIdempotent(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwDispatchException(self, replyStatus: int, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwAfterResponse(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwAfterException(self, current: Current) -> None | Awaitable[None]:
        pass

    @abstractmethod
    def throwMarshalException(self, current: Current) -> tuple[int, int] | Awaitable[tuple[int, int]]:
        pass

    @abstractmethod
    def throwRequestFailedException(self, type: str, id: Identity, facet: str, operation: str, current: Current) -> None | Awaitable[None]:
        pass

Thrower._op_shutdown = IcePy.Operation(
    "shutdown",
    "shutdown",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Thrower._op_supportsUndeclaredExceptions = IcePy.Operation(
    "supportsUndeclaredExceptions",
    "supportsUndeclaredExceptions",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

Thrower._op_supportsAssertException = IcePy.Operation(
    "supportsAssertException",
    "supportsAssertException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), IcePy._t_bool, False, 0),
    ())

Thrower._op_throwAasA = IcePy.Operation(
    "throwAasA",
    "throwAasA",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_A_t,))

Thrower._op_throwAorDasAorD = IcePy.Operation(
    "throwAorDasAorD",
    "throwAorDasAorD",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_A_t, _generated_test_Ice_exceptions_Test_D_t))

Thrower._op_throwBasA = IcePy.Operation(
    "throwBasA",
    "throwBasA",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_A_t,))

Thrower._op_throwCasA = IcePy.Operation(
    "throwCasA",
    "throwCasA",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_A_t,))

Thrower._op_throwBasB = IcePy.Operation(
    "throwBasB",
    "throwBasB",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_B_t,))

Thrower._op_throwCasB = IcePy.Operation(
    "throwCasB",
    "throwCasB",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_B_t,))

Thrower._op_throwCasC = IcePy.Operation(
    "throwCasC",
    "throwCasC",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_C_t,))

Thrower._op_throwModA = IcePy.Operation(
    "throwModA",
    "throwModA",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_Mod_A_t,))

Thrower._op_throwUndeclaredA = IcePy.Operation(
    "throwUndeclaredA",
    "throwUndeclaredA",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0),),
    (),
    None,
    ())

Thrower._op_throwUndeclaredB = IcePy.Operation(
    "throwUndeclaredB",
    "throwUndeclaredB",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    ())

Thrower._op_throwUndeclaredC = IcePy.Operation(
    "throwUndeclaredC",
    "throwUndeclaredC",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_int, False, 0)),
    (),
    None,
    ())

Thrower._op_throwLocalException = IcePy.Operation(
    "throwLocalException",
    "throwLocalException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Thrower._op_throwNonIceException = IcePy.Operation(
    "throwNonIceException",
    "throwNonIceException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Thrower._op_throwAssertException = IcePy.Operation(
    "throwAssertException",
    "throwAssertException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Thrower._op_throwMemoryLimitException = IcePy.Operation(
    "throwMemoryLimitException",
    "throwMemoryLimitException",
    OperationMode.Normal,
    None,
    (),
    (((), _Ice_ByteSeq_t, False, 0),),
    (),
    ((), _Ice_ByteSeq_t, False, 0),
    ())

Thrower._op_throwLocalExceptionIdempotent = IcePy.Operation(
    "throwLocalExceptionIdempotent",
    "throwLocalExceptionIdempotent",
    OperationMode.Idempotent,
    None,
    (),
    (),
    (),
    None,
    ())

Thrower._op_throwDispatchException = IcePy.Operation(
    "throwDispatchException",
    "throwDispatchException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_byte, False, 0),),
    (),
    None,
    ())

Thrower._op_throwAfterResponse = IcePy.Operation(
    "throwAfterResponse",
    "throwAfterResponse",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    ())

Thrower._op_throwAfterException = IcePy.Operation(
    "throwAfterException",
    "throwAfterException",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    None,
    (_generated_test_Ice_exceptions_Test_A_t,))

Thrower._op_throwMarshalException = IcePy.Operation(
    "throwMarshalException",
    "throwMarshalException",
    OperationMode.Normal,
    None,
    (),
    (),
    (((), IcePy._t_int, False, 0),),
    ((), IcePy._t_int, False, 0),
    ())

Thrower._op_throwRequestFailedException = IcePy.Operation(
    "throwRequestFailedException",
    "throwRequestFailedException",
    OperationMode.Normal,
    None,
    (),
    (((), IcePy._t_string, False, 0), ((), _Ice_Identity_t, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_string, False, 0)),
    (),
    None,
    ())

__all__ = ["Thrower", "ThrowerPrx", "_generated_test_Ice_exceptions_Test_ThrowerPrx_t"]
