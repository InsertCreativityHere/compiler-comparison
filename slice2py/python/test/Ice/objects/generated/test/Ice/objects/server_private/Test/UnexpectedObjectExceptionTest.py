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

from generated.test.Ice.objects.Test.AlsoEmpty_forward import _generated_test_Ice_objects_Test_AlsoEmpty_t

from generated.test.Ice.objects.server_private.Test.UnexpectedObjectExceptionTest_forward import _generated_test_Ice_objects_server_private_Test_UnexpectedObjectExceptionTestPrx_t

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from Ice.Current import Current
    from collections.abc import Awaitable
    from collections.abc import Sequence
    from generated.test.Ice.objects.Test.AlsoEmpty import AlsoEmpty


class UnexpectedObjectExceptionTestPrx(ObjectPrx):

    def op(self, context: dict[str, str] | None = None) -> AlsoEmpty | None:
        return UnexpectedObjectExceptionTest._op_op.invoke(self, ((), context))

    def opAsync(self, context: dict[str, str] | None = None) -> Awaitable[AlsoEmpty | None]:
        return UnexpectedObjectExceptionTest._op_op.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> UnexpectedObjectExceptionTestPrx | None:
        return checkedCast(UnexpectedObjectExceptionTestPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[UnexpectedObjectExceptionTestPrx | None ]:
        return checkedCastAsync(UnexpectedObjectExceptionTestPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> UnexpectedObjectExceptionTestPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> UnexpectedObjectExceptionTestPrx | None:
        return uncheckedCast(UnexpectedObjectExceptionTestPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::UnexpectedObjectExceptionTest"

IcePy.defineProxy("::Test::UnexpectedObjectExceptionTest", UnexpectedObjectExceptionTestPrx)

class UnexpectedObjectExceptionTest(Object, ABC):

    _ice_ids: Sequence[str] = ("::Ice::Object", "::Test::UnexpectedObjectExceptionTest", )
    _op_op: IcePy.Operation

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::UnexpectedObjectExceptionTest"

    @abstractmethod
    def op(self, current: Current) -> AlsoEmpty | None | Awaitable[AlsoEmpty | None]:
        pass

UnexpectedObjectExceptionTest._op_op = IcePy.Operation(
    "op",
    "op",
    OperationMode.Normal,
    None,
    (),
    (),
    (),
    ((), _generated_test_Ice_objects_Test_AlsoEmpty_t, False, 0),
    ())

__all__ = ["UnexpectedObjectExceptionTest", "UnexpectedObjectExceptionTestPrx", "_generated_test_Ice_objects_server_private_Test_UnexpectedObjectExceptionTestPrx_t"]
