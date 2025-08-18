
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .array import _and_array_t
from .array import array
from .die import die
from .die import diePrx
from .die_forward import _and_diePrx_t
from .echo import echo
from .echo_forward import _and_echo_t
from .enddeclare import enddeclare
from .enddeclare import enddeclarePrx
from .enddeclare_forward import _and_enddeclarePrx_t
from .endfor import _and_endfor_t
from .endforeach import _and_endforeach_t
from .endif import _and_endif_t
from .endif import endif
from .endwhile import _and_endwhile_t
from .endwhile import endwhile
from .function import function
from .function import functionPrx
from .function_forward import _and_functionPrx_t
from .require_once import require_once
from .xor import _and_xor_t
from .xor import xor


__all__ = [
    "_and_array_t",
    "array",
    "die",
    "diePrx",
    "_and_diePrx_t",
    "echo",
    "_and_echo_t",
    "enddeclare",
    "enddeclarePrx",
    "_and_enddeclarePrx_t",
    "_and_endfor_t",
    "_and_endforeach_t",
    "_and_endif_t",
    "endif",
    "_and_endwhile_t",
    "endwhile",
    "function",
    "functionPrx",
    "_and_functionPrx_t",
    "require_once",
    "_and_xor_t",
    "xor"
]
