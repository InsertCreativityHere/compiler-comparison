//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public interface TestIntf extends com.zeroc.Ice.Object
{
    void op(com.zeroc.Ice.Current current);

    void opWithPayload(byte[] seq, com.zeroc.Ice.Current current);

    int opWithResult(com.zeroc.Ice.Current current);

    void opWithUE(com.zeroc.Ice.Current current)
        throws TestIntfException;

    void opBatch(com.zeroc.Ice.Current current);

    int opBatchCount(com.zeroc.Ice.Current current);

    boolean waitForBatch(int count, com.zeroc.Ice.Current current);

    void close(CloseMode mode, com.zeroc.Ice.Current current);

    void sleep(int ms, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> startDispatchAsync(com.zeroc.Ice.Current current);

    void finishDispatch(com.zeroc.Ice.Current current);

    void shutdown(com.zeroc.Ice.Current current);

    boolean supportsAMD(com.zeroc.Ice.Current current);

    boolean supportsFunctionalTests(com.zeroc.Ice.Current current);

    boolean opBool(boolean b, com.zeroc.Ice.Current current);

    byte opByte(byte b, com.zeroc.Ice.Current current);

    short opShort(short s, com.zeroc.Ice.Current current);

    int opInt(int i, com.zeroc.Ice.Current current);

    long opLong(long l, com.zeroc.Ice.Current current);

    float opFloat(float f, com.zeroc.Ice.Current current);

    double opDouble(double d, com.zeroc.Ice.Current current);

    void pingBiDir(PingReplyPrx reply, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::TestIntf"
    };

    @Override
    default String[] ice_ids(com.zeroc.Ice.Current current)
    {
        return _iceIds;
    }

    @Override
    default String ice_id(com.zeroc.Ice.Current current)
    {
        return ice_staticId();
    }

    static String ice_staticId()
    {
        return "::Test::TestIntf";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_op(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.op(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opWithPayload(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        byte[] iceP_seq;
        iceP_seq = istr.readByteSeq();
        inS.endReadParams();
        obj.opWithPayload(iceP_seq, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opWithResult(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        int ret = obj.opWithResult(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeInt(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opWithUE(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.opWithUE(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opBatch(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.opBatch(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opBatchCount(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        int ret = obj.opBatchCount(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeInt(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_waitForBatch(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_count;
        iceP_count = istr.readInt();
        inS.endReadParams();
        boolean ret = obj.waitForBatch(iceP_count, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeBool(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_close(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        CloseMode iceP_mode;
        iceP_mode = CloseMode.ice_read(istr);
        inS.endReadParams();
        obj.close(iceP_mode, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_sleep(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_ms;
        iceP_ms = istr.readInt();
        inS.endReadParams();
        obj.sleep(iceP_ms, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_startDispatch(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        return inS.setResultFuture(obj.startDispatchAsync(current));
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_finishDispatch(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.finishDispatch(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_shutdown(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.shutdown(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_supportsAMD(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        boolean ret = obj.supportsAMD(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeBool(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_supportsFunctionalTests(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        boolean ret = obj.supportsFunctionalTests(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeBool(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opBool(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        boolean iceP_b;
        iceP_b = istr.readBool();
        inS.endReadParams();
        boolean ret = obj.opBool(iceP_b, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeBool(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opByte(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        byte iceP_b;
        iceP_b = istr.readByte();
        inS.endReadParams();
        byte ret = obj.opByte(iceP_b, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeByte(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opShort(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        short iceP_s;
        iceP_s = istr.readShort();
        inS.endReadParams();
        short ret = obj.opShort(iceP_s, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeShort(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opInt(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_i;
        iceP_i = istr.readInt();
        inS.endReadParams();
        int ret = obj.opInt(iceP_i, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeInt(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opLong(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        long iceP_l;
        iceP_l = istr.readLong();
        inS.endReadParams();
        long ret = obj.opLong(iceP_l, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeLong(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opFloat(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        float iceP_f;
        iceP_f = istr.readFloat();
        inS.endReadParams();
        float ret = obj.opFloat(iceP_f, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeFloat(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opDouble(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        double iceP_d;
        iceP_d = istr.readDouble();
        inS.endReadParams();
        double ret = obj.opDouble(iceP_d, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeDouble(ret);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_pingBiDir(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        PingReplyPrx iceP_reply;
        iceP_reply = PingReplyPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        obj.pingBiDir(iceP_reply, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "close",
        "finishDispatch",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "op",
        "opBatch",
        "opBatchCount",
        "opBool",
        "opByte",
        "opDouble",
        "opFloat",
        "opInt",
        "opLong",
        "opShort",
        "opWithPayload",
        "opWithResult",
        "opWithUE",
        "pingBiDir",
        "shutdown",
        "sleep",
        "startDispatch",
        "supportsAMD",
        "supportsFunctionalTests",
        "waitForBatch"
    };

    /** @hidden */
    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceDispatch(com.zeroc.IceInternal.Incoming in, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        int pos = java.util.Arrays.binarySearch(_iceOps, current.operation);
        if(pos < 0)
        {
            throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        switch(pos)
        {
            case 0:
            {
                return _iceD_close(this, in, current);
            }
            case 1:
            {
                return _iceD_finishDispatch(this, in, current);
            }
            case 2:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 4:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 5:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 6:
            {
                return _iceD_op(this, in, current);
            }
            case 7:
            {
                return _iceD_opBatch(this, in, current);
            }
            case 8:
            {
                return _iceD_opBatchCount(this, in, current);
            }
            case 9:
            {
                return _iceD_opBool(this, in, current);
            }
            case 10:
            {
                return _iceD_opByte(this, in, current);
            }
            case 11:
            {
                return _iceD_opDouble(this, in, current);
            }
            case 12:
            {
                return _iceD_opFloat(this, in, current);
            }
            case 13:
            {
                return _iceD_opInt(this, in, current);
            }
            case 14:
            {
                return _iceD_opLong(this, in, current);
            }
            case 15:
            {
                return _iceD_opShort(this, in, current);
            }
            case 16:
            {
                return _iceD_opWithPayload(this, in, current);
            }
            case 17:
            {
                return _iceD_opWithResult(this, in, current);
            }
            case 18:
            {
                return _iceD_opWithUE(this, in, current);
            }
            case 19:
            {
                return _iceD_pingBiDir(this, in, current);
            }
            case 20:
            {
                return _iceD_shutdown(this, in, current);
            }
            case 21:
            {
                return _iceD_sleep(this, in, current);
            }
            case 22:
            {
                return _iceD_startDispatch(this, in, current);
            }
            case 23:
            {
                return _iceD_supportsAMD(this, in, current);
            }
            case 24:
            {
                return _iceD_supportsFunctionalTests(this, in, current);
            }
            case 25:
            {
                return _iceD_waitForBatch(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
