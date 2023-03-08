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

package test.Ice.packagemd.Test;

public interface Initial extends com.zeroc.Ice.Object
{
    test.Ice.packagemd.Test1.C1 getTest1C2AsC1(com.zeroc.Ice.Current current);

    test.Ice.packagemd.Test1.C2 getTest1C2AsC2(com.zeroc.Ice.Current current);

    void throwTest1E2AsE1(com.zeroc.Ice.Current current)
        throws test.Ice.packagemd.Test1.E1;

    void throwTest1E2AsE2(com.zeroc.Ice.Current current)
        throws test.Ice.packagemd.Test1.E2;

    void throwTest1Notify(com.zeroc.Ice.Current current)
        throws test.Ice.packagemd.Test1._notify;

    test.Ice.packagemd.testpkg.Test2.C1 getTest2C2AsC1(com.zeroc.Ice.Current current);

    test.Ice.packagemd.testpkg.Test2.C2 getTest2C2AsC2(com.zeroc.Ice.Current current);

    void throwTest2E2AsE1(com.zeroc.Ice.Current current)
        throws test.Ice.packagemd.testpkg.Test2.E1;

    void throwTest2E2AsE2(com.zeroc.Ice.Current current)
        throws test.Ice.packagemd.testpkg.Test2.E2;

    test.Ice.packagemd.modpkg.Test3.C1 getTest3C2AsC1(com.zeroc.Ice.Current current);

    test.Ice.packagemd.modpkg.Test3.C2 getTest3C2AsC2(com.zeroc.Ice.Current current);

    void throwTest3E2AsE1(com.zeroc.Ice.Current current)
        throws test.Ice.packagemd.modpkg.Test3.E1;

    void throwTest3E2AsE2(com.zeroc.Ice.Current current)
        throws test.Ice.packagemd.modpkg.Test3.E2;

    void shutdown(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::Initial"
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
        return "::Test::Initial";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getTest1C2AsC1(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        test.Ice.packagemd.Test1.C1 ret = obj.getTest1C2AsC1(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeValue(ret);
        ostr.writePendingValues();
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getTest1C2AsC2(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        test.Ice.packagemd.Test1.C2 ret = obj.getTest1C2AsC2(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeValue(ret);
        ostr.writePendingValues();
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwTest1E2AsE1(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwTest1E2AsE1(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwTest1E2AsE2(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwTest1E2AsE2(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwTest1Notify(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwTest1Notify(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getTest2C2AsC1(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        test.Ice.packagemd.testpkg.Test2.C1 ret = obj.getTest2C2AsC1(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeValue(ret);
        ostr.writePendingValues();
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getTest2C2AsC2(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        test.Ice.packagemd.testpkg.Test2.C2 ret = obj.getTest2C2AsC2(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeValue(ret);
        ostr.writePendingValues();
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwTest2E2AsE1(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwTest2E2AsE1(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwTest2E2AsE2(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwTest2E2AsE2(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getTest3C2AsC1(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        test.Ice.packagemd.modpkg.Test3.C1 ret = obj.getTest3C2AsC1(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeValue(ret);
        ostr.writePendingValues();
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_getTest3C2AsC2(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        test.Ice.packagemd.modpkg.Test3.C2 ret = obj.getTest3C2AsC2(current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ostr.writeValue(ret);
        ostr.writePendingValues();
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwTest3E2AsE1(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwTest3E2AsE1(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_throwTest3E2AsE2(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.throwTest3E2AsE2(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_shutdown(Initial obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.shutdown(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "getTest1C2AsC1",
        "getTest1C2AsC2",
        "getTest2C2AsC1",
        "getTest2C2AsC2",
        "getTest3C2AsC1",
        "getTest3C2AsC2",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "shutdown",
        "throwTest1E2AsE1",
        "throwTest1E2AsE2",
        "throwTest1Notify",
        "throwTest2E2AsE1",
        "throwTest2E2AsE2",
        "throwTest3E2AsE1",
        "throwTest3E2AsE2"
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
                return _iceD_getTest1C2AsC1(this, in, current);
            }
            case 1:
            {
                return _iceD_getTest1C2AsC2(this, in, current);
            }
            case 2:
            {
                return _iceD_getTest2C2AsC1(this, in, current);
            }
            case 3:
            {
                return _iceD_getTest2C2AsC2(this, in, current);
            }
            case 4:
            {
                return _iceD_getTest3C2AsC1(this, in, current);
            }
            case 5:
            {
                return _iceD_getTest3C2AsC2(this, in, current);
            }
            case 6:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 7:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 8:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 9:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 10:
            {
                return _iceD_shutdown(this, in, current);
            }
            case 11:
            {
                return _iceD_throwTest1E2AsE1(this, in, current);
            }
            case 12:
            {
                return _iceD_throwTest1E2AsE2(this, in, current);
            }
            case 13:
            {
                return _iceD_throwTest1Notify(this, in, current);
            }
            case 14:
            {
                return _iceD_throwTest2E2AsE1(this, in, current);
            }
            case 15:
            {
                return _iceD_throwTest2E2AsE2(this, in, current);
            }
            case 16:
            {
                return _iceD_throwTest3E2AsE1(this, in, current);
            }
            case 17:
            {
                return _iceD_throwTest3E2AsE2(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
