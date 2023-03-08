//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.exceptions.AMD.Test;

public interface Thrower extends com.zeroc.Ice.Object
{
    java.util.concurrent.CompletionStage<Void> shutdownAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<java.lang.Boolean> supportsUndeclaredExceptionsAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<java.lang.Boolean> supportsAssertExceptionAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwAasAAsync(int a, com.zeroc.Ice.Current current)
        throws A;

    java.util.concurrent.CompletionStage<Void> throwAorDasAorDAsync(int a, com.zeroc.Ice.Current current)
        throws A,
               D;

    java.util.concurrent.CompletionStage<Void> throwBasAAsync(int a, int b, com.zeroc.Ice.Current current)
        throws A;

    java.util.concurrent.CompletionStage<Void> throwCasAAsync(int a, int b, int c, com.zeroc.Ice.Current current)
        throws A;

    java.util.concurrent.CompletionStage<Void> throwBasBAsync(int a, int b, com.zeroc.Ice.Current current)
        throws B;

    java.util.concurrent.CompletionStage<Void> throwCasBAsync(int a, int b, int c, com.zeroc.Ice.Current current)
        throws B;

    java.util.concurrent.CompletionStage<Void> throwCasCAsync(int a, int b, int c, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException;

    java.util.concurrent.CompletionStage<Void> throwUndeclaredAAsync(int a, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwUndeclaredBAsync(int a, int b, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwUndeclaredCAsync(int a, int b, int c, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException;

    java.util.concurrent.CompletionStage<Void> throwLocalExceptionAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwNonIceExceptionAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwAssertExceptionAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<byte[]> throwMemoryLimitExceptionAsync(byte[] seq, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwLocalExceptionIdempotentAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwAfterResponseAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> throwAfterExceptionAsync(com.zeroc.Ice.Current current)
        throws A;

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
        return inS.setResultFuture(obj.shutdownAsync(current));
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
        return inS.setResultFuture(obj.supportsUndeclaredExceptionsAsync(current), (ostr, ret) ->
            {
                ostr.writeBool(ret);
            });
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
        return inS.setResultFuture(obj.supportsAssertExceptionAsync(current), (ostr, ret) ->
            {
                ostr.writeBool(ret);
            });
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
        return inS.setResultFuture(obj.throwAasAAsync(iceP_a, current));
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
        return inS.setResultFuture(obj.throwAorDasAorDAsync(iceP_a, current));
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
        return inS.setResultFuture(obj.throwBasAAsync(iceP_a, iceP_b, current));
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
        return inS.setResultFuture(obj.throwCasAAsync(iceP_a, iceP_b, iceP_c, current));
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
        return inS.setResultFuture(obj.throwBasBAsync(iceP_a, iceP_b, current));
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
        return inS.setResultFuture(obj.throwCasBAsync(iceP_a, iceP_b, iceP_c, current));
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
        return inS.setResultFuture(obj.throwCasCAsync(iceP_a, iceP_b, iceP_c, current));
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
        return inS.setResultFuture(obj.throwUndeclaredAAsync(iceP_a, current));
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
        return inS.setResultFuture(obj.throwUndeclaredBAsync(iceP_a, iceP_b, current));
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwUndeclaredC(Thrower obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
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
        return inS.setResultFuture(obj.throwUndeclaredCAsync(iceP_a, iceP_b, iceP_c, current));
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
        return inS.setResultFuture(obj.throwLocalExceptionAsync(current));
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
        return inS.setResultFuture(obj.throwNonIceExceptionAsync(current));
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
        return inS.setResultFuture(obj.throwAssertExceptionAsync(current));
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
        return inS.setResultFuture(obj.throwMemoryLimitExceptionAsync(iceP_seq, current), (ostr, ret) ->
            {
                ostr.writeByteSeq(ret);
            });
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
        return inS.setResultFuture(obj.throwLocalExceptionIdempotentAsync(current));
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
        return inS.setResultFuture(obj.throwAfterResponseAsync(current));
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
        return inS.setResultFuture(obj.throwAfterExceptionAsync(current));
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
        "throwMemoryLimitException",
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
                return _iceD_throwMemoryLimitException(this, in, current);
            }
            case 20:
            {
                return _iceD_throwNonIceException(this, in, current);
            }
            case 21:
            {
                return _iceD_throwUndeclaredA(this, in, current);
            }
            case 22:
            {
                return _iceD_throwUndeclaredB(this, in, current);
            }
            case 23:
            {
                return _iceD_throwUndeclaredC(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
