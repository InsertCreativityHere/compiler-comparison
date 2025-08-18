# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BoolBuffer import _Test_BoolBuffer_t

from Test.ByteBuffer import _Test_ByteBuffer_t

from Test.DoubleBuffer import _Test_DoubleBuffer_t

from Test.FloatBuffer import _Test_FloatBuffer_t

from Test.IntBuffer import _Test_IntBuffer_t

from Test.LongBuffer import _Test_LongBuffer_t

from Test.ShortBuffer import _Test_ShortBuffer_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class BufferStruct:
    byteBuf: bytes = field(default_factory=bytes)
    boolBuf: list[bool] = field(default_factory=list)
    shortBuf: list[int] = field(default_factory=list)
    intBuf: list[int] = field(default_factory=list)
    longBuf: list[int] = field(default_factory=list)
    floatBuf: list[float] = field(default_factory=list)
    doubleBuf: list[float] = field(default_factory=list)

_Test_BufferStruct_t = IcePy.defineStruct(
    "::Test::BufferStruct",
    BufferStruct,
    (),
    (
        ("byteBuf", (), _Test_ByteBuffer_t),
        ("boolBuf", (), _Test_BoolBuffer_t),
        ("shortBuf", (), _Test_ShortBuffer_t),
        ("intBuf", (), _Test_IntBuffer_t),
        ("longBuf", (), _Test_LongBuffer_t),
        ("floatBuf", (), _Test_FloatBuffer_t),
        ("doubleBuf", (), _Test_DoubleBuffer_t)
    ))

__all__ = ["BufferStruct", "_Test_BufferStruct_t"]
