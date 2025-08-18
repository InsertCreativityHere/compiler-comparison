
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .assert import _abstract_assert_t
from .assert import assert
from .break import _abstract_break_t
from .break import break
from .catch import catch
from .catch import catchPrx
from .catch_forward import _abstract_catchPrx_t
from .clone import _abstract_clone_t
from .clone import clone
from .default import default
from .default import defaultPrx
from .default_forward import _abstract_defaultPrx_t
from .finalize import finalize
from .finalize import finalizePrx
from .finalize_forward import _abstract_finalizePrx_t
from .for import _abstract_for_t
from .goto import _abstract_goto_t
from .hashCode import _abstract_hashCode_t
from .hashCode import hashCode
from .notify import notify
from .notify_forward import _abstract_notify_t
from .synchronized import synchronized


__all__ = [
    "_abstract_assert_t",
    "assert",
    "_abstract_break_t",
    "break",
    "catch",
    "catchPrx",
    "_abstract_catchPrx_t",
    "_abstract_clone_t",
    "clone",
    "default",
    "defaultPrx",
    "_abstract_defaultPrx_t",
    "finalize",
    "finalizePrx",
    "_abstract_finalizePrx_t",
    "_abstract_for_t",
    "_abstract_goto_t",
    "_abstract_hashCode_t",
    "hashCode",
    "notify",
    "_abstract_notify_t",
    "synchronized"
]
