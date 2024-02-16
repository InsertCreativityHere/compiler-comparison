//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

public interface Thrower extends com.zeroc.Ice.Object
{
    /**
     * Holds the result of operation throwMarshalException.
     **/
    public static class ThrowMarshalExceptionResult
    {
        /**
         * Default constructor.
         **/
        public ThrowMarshalExceptionResult()
        {
        }

        public ThrowMarshalExceptionResult(int returnValue, int p)
        {
            this.returnValue = returnValue;
            this.p = p;
        }

        public int returnValue;
        public int p;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeInt(this.p);
            ostr.writeInt(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.p = istr.readInt();
            returnValue = istr.readInt();
        }
    }

    void shutdown(com.zeroc.Ice.Current current);

    boolean supportsUndeclaredExceptions(com.zeroc.Ice.Current current);

    boolean supportsAssertException(com.zeroc.Ice.Current current);

    void throwAasA(int a, com.zeroc.Ice.Current current)
        throws A;

    void throwAorDasAorD(int a, com.zeroc.Ice.Current current)
        throws A,
               D;

    void throwBasA(int a, int b, com.zeroc.Ice.Current current)
        throws A;

    void throwCasA(int a, int b, int c, com.zeroc.Ice.Current current)
        throws A;

    void throwBasB(int a, int b, com.zeroc.Ice.Current current)
        throws B;

    void throwCasB(int a, int b, int c, com.zeroc.Ice.Current current)
        throws B;

    void throwCasC(int a, int b, int c, com.zeroc.Ice.Current current)
        throws C;

    void throwModA(int a, int a2, com.zeroc.Ice.Current current)
        throws Test.Mod.A;

    void throwUndeclaredA(int a, com.zeroc.Ice.Current current);

    void throwUndeclaredB(int a, int b, com.zeroc.Ice.Current current);

    void throwUndeclaredC(int a, int b, int c, com.zeroc.Ice.Current current);

    void throwLocalException(com.zeroc.Ice.Current current);

    void throwNonIceException(com.zeroc.Ice.Current current);

    void throwAssertException(com.zeroc.Ice.Current current);

    byte[] throwMemoryLimitException(byte[] seq, com.zeroc.Ice.Current current);

    void throwLocalExceptionIdempotent(com.zeroc.Ice.Current current);

    void throwAfterResponse(com.zeroc.Ice.Current current);

    void throwAfterException(com.zeroc.Ice.Current current)
        throws A;

    Thrower.ThrowMarshalExceptionResult throwMarshalException(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::Thrower"
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
        return "::Test::Thrower";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_shutdown(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_supportsUndeclaredExceptions(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        boolean ret = obj.supportsUndeclaredExceptions(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_supportsAssertException(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        boolean ret = obj.supportsAssertException(current);
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
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwAasA(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        iceP_a = istr.readInt();
        inS.endReadParams();
        obj.throwAasA(iceP_a, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwAorDasAorD(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        iceP_a = istr.readInt();
        inS.endReadParams();
        obj.throwAorDasAorD(iceP_a, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwBasA(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_b;
        iceP_a = istr.readInt();
        iceP_b = istr.readInt();
        inS.endReadParams();
        obj.throwBasA(iceP_a, iceP_b, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwCasA(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_b;
        int iceP_c;
        iceP_a = istr.readInt();
        iceP_b = istr.readInt();
        iceP_c = istr.readInt();
        inS.endReadParams();
        obj.throwCasA(iceP_a, iceP_b, iceP_c, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwBasB(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_b;
        iceP_a = istr.readInt();
        iceP_b = istr.readInt();
        inS.endReadParams();
        obj.throwBasB(iceP_a, iceP_b, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwCasB(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_b;
        int iceP_c;
        iceP_a = istr.readInt();
        iceP_b = istr.readInt();
        iceP_c = istr.readInt();
        inS.endReadParams();
        obj.throwCasB(iceP_a, iceP_b, iceP_c, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwCasC(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_b;
        int iceP_c;
        iceP_a = istr.readInt();
        iceP_b = istr.readInt();
        iceP_c = istr.readInt();
        inS.endReadParams();
        obj.throwCasC(iceP_a, iceP_b, iceP_c, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwModA(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_a2;
        iceP_a = istr.readInt();
        iceP_a2 = istr.readInt();
        inS.endReadParams();
        obj.throwModA(iceP_a, iceP_a2, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwUndeclaredA(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        iceP_a = istr.readInt();
        inS.endReadParams();
        obj.throwUndeclaredA(iceP_a, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwUndeclaredB(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_b;
        iceP_a = istr.readInt();
        iceP_b = istr.readInt();
        inS.endReadParams();
        obj.throwUndeclaredB(iceP_a, iceP_b, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwUndeclaredC(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        int iceP_a;
        int iceP_b;
        int iceP_c;
        iceP_a = istr.readInt();
        iceP_b = istr.readInt();
        iceP_c = istr.readInt();
        inS.endReadParams();
        obj.throwUndeclaredC(iceP_a, iceP_b, iceP_c, current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwLocalException(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwLocalException(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwNonIceException(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwNonIceException(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwAssertException(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwAssertException(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwMemoryLimitException(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        byte[] iceP_seq;
        iceP_seq = istr.readByteSeq();
        inS.endReadParams();
        byte[] ret = obj.throwMemoryLimitException(iceP_seq, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeByteSeq(ret);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwLocalExceptionIdempotent(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(com.zeroc.Ice.OperationMode.Idempotent, current.mode);
        inS.readEmptyParams();
        obj.throwLocalExceptionIdempotent(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwAfterResponse(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwAfterResponse(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwAfterException(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwAfterException(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwMarshalException(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        Thrower.ThrowMarshalExceptionResult ret = obj.throwMarshalException(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ret.write(ostr);
        inS.endWriteParams(ostr);
        return inS.setResult(ostr);
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "shutdown",
        "supportsAssertException",
        "supportsUndeclaredExceptions",
        "throwAasA",
        "throwAfterException",
        "throwAfterResponse",
        "throwAorDasAorD",
        "throwAssertException",
        "throwBasA",
        "throwBasB",
        "throwCasA",
        "throwCasB",
        "throwCasC",
        "throwLocalException",
        "throwLocalExceptionIdempotent",
        "throwMarshalException",
        "throwMemoryLimitException",
        "throwModA",
        "throwNonIceException",
        "throwUndeclaredA",
        "throwUndeclaredB",
        "throwUndeclaredC"
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
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 1:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 2:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 4:
            {
                return _iceD_shutdown(this, in, current);
            }
            case 5:
            {
                return _iceD_supportsAssertException(this, in, current);
            }
            case 6:
            {
                return _iceD_supportsUndeclaredExceptions(this, in, current);
            }
            case 7:
            {
                return _iceD_throwAasA(this, in, current);
            }
            case 8:
            {
                return _iceD_throwAfterException(this, in, current);
            }
            case 9:
            {
                return _iceD_throwAfterResponse(this, in, current);
            }
            case 10:
            {
                return _iceD_throwAorDasAorD(this, in, current);
            }
            case 11:
            {
                return _iceD_throwAssertException(this, in, current);
            }
            case 12:
            {
                return _iceD_throwBasA(this, in, current);
            }
            case 13:
            {
                return _iceD_throwBasB(this, in, current);
            }
            case 14:
            {
                return _iceD_throwCasA(this, in, current);
            }
            case 15:
            {
                return _iceD_throwCasB(this, in, current);
            }
            case 16:
            {
                return _iceD_throwCasC(this, in, current);
            }
            case 17:
            {
                return _iceD_throwLocalException(this, in, current);
            }
            case 18:
            {
                return _iceD_throwLocalExceptionIdempotent(this, in, current);
            }
            case 19:
            {
                return _iceD_throwMarshalException(this, in, current);
            }
            case 20:
            {
                return _iceD_throwMemoryLimitException(this, in, current);
            }
            case 21:
            {
                return _iceD_throwModA(this, in, current);
            }
            case 22:
            {
                return _iceD_throwNonIceException(this, in, current);
            }
            case 23:
            {
                return _iceD_throwUndeclaredA(this, in, current);
            }
            case 24:
            {
                return _iceD_throwUndeclaredB(this, in, current);
            }
            case 25:
            {
                return _iceD_throwUndeclaredC(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
