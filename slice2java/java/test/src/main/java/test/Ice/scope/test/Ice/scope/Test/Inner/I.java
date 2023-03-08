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

package test.Ice.scope.Test.Inner;

public interface I extends com.zeroc.Ice.Object
{
    /**
     * Holds the result of operation opS.
     **/
    public static class OpSResult
    {
        /**
         * Default constructor.
         **/
        public OpSResult()
        {
        }

        public OpSResult(test.Ice.scope.Test.Inner.Inner2.S returnValue, test.Ice.scope.Test.Inner.Inner2.S s2)
        {
            this.returnValue = returnValue;
            this.s2 = s2;
        }

        public test.Ice.scope.Test.Inner.Inner2.S returnValue;
        public test.Ice.scope.Test.Inner.Inner2.S s2;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            test.Ice.scope.Test.Inner.Inner2.S.ice_write(ostr, this.s2);
            test.Ice.scope.Test.Inner.Inner2.S.ice_write(ostr, returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.s2 = test.Ice.scope.Test.Inner.Inner2.S.ice_read(istr);
            returnValue = test.Ice.scope.Test.Inner.Inner2.S.ice_read(istr);
        }
    }

    /**
     * Holds the result of operation opSSeq.
     **/
    public static class OpSSeqResult
    {
        /**
         * Default constructor.
         **/
        public OpSSeqResult()
        {
        }

        public OpSSeqResult(test.Ice.scope.Test.Inner.Inner2.S[] returnValue, test.Ice.scope.Test.Inner.Inner2.S[] s2)
        {
            this.returnValue = returnValue;
            this.s2 = s2;
        }

        public test.Ice.scope.Test.Inner.Inner2.S[] returnValue;
        public test.Ice.scope.Test.Inner.Inner2.S[] s2;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            test.Ice.scope.Test.Inner.Inner2.SSeqHelper.write(ostr, this.s2);
            test.Ice.scope.Test.Inner.Inner2.SSeqHelper.write(ostr, returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.s2 = test.Ice.scope.Test.Inner.Inner2.SSeqHelper.read(istr);
            returnValue = test.Ice.scope.Test.Inner.Inner2.SSeqHelper.read(istr);
        }
    }

    /**
     * Holds the result of operation opSMap.
     **/
    public static class OpSMapResult
    {
        /**
         * Default constructor.
         **/
        public OpSMapResult()
        {
        }

        public OpSMapResult(java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.S> returnValue, java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.S> s2)
        {
            this.returnValue = returnValue;
            this.s2 = s2;
        }

        public java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.S> returnValue;
        public java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.S> s2;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            test.Ice.scope.Test.Inner.Inner2.SMapHelper.write(ostr, this.s2);
            test.Ice.scope.Test.Inner.Inner2.SMapHelper.write(ostr, returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.s2 = test.Ice.scope.Test.Inner.Inner2.SMapHelper.read(istr);
            returnValue = test.Ice.scope.Test.Inner.Inner2.SMapHelper.read(istr);
        }
    }

    /**
     * Holds the result of operation opC.
     **/
    public static class OpCResult
    {
        /**
         * Default constructor.
         **/
        public OpCResult()
        {
        }

        public OpCResult(test.Ice.scope.Test.Inner.Inner2.C returnValue, test.Ice.scope.Test.Inner.Inner2.C c2)
        {
            this.returnValue = returnValue;
            this.c2 = c2;
        }

        public test.Ice.scope.Test.Inner.Inner2.C returnValue;
        public test.Ice.scope.Test.Inner.Inner2.C c2;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeValue(this.c2);
            ostr.writeValue(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            istr.readValue(v -> this.c2 = v, test.Ice.scope.Test.Inner.Inner2.C.class);
            istr.readValue(v -> returnValue = v, test.Ice.scope.Test.Inner.Inner2.C.class);
        }
    }

    /**
     * Holds the result of operation opCSeq.
     **/
    public static class OpCSeqResult
    {
        /**
         * Default constructor.
         **/
        public OpCSeqResult()
        {
        }

        public OpCSeqResult(test.Ice.scope.Test.Inner.Inner2.C[] returnValue, test.Ice.scope.Test.Inner.Inner2.C[] c2)
        {
            this.returnValue = returnValue;
            this.c2 = c2;
        }

        public test.Ice.scope.Test.Inner.Inner2.C[] returnValue;
        public test.Ice.scope.Test.Inner.Inner2.C[] c2;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            test.Ice.scope.Test.Inner.Inner2.CSeqHelper.write(ostr, this.c2);
            test.Ice.scope.Test.Inner.Inner2.CSeqHelper.write(ostr, returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.c2 = test.Ice.scope.Test.Inner.Inner2.CSeqHelper.read(istr);
            returnValue = test.Ice.scope.Test.Inner.Inner2.CSeqHelper.read(istr);
        }
    }

    /**
     * Holds the result of operation opCMap.
     **/
    public static class OpCMapResult
    {
        /**
         * Default constructor.
         **/
        public OpCMapResult()
        {
        }

        public OpCMapResult(java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.C> returnValue, java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.C> c2)
        {
            this.returnValue = returnValue;
            this.c2 = c2;
        }

        public java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.C> returnValue;
        public java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.C> c2;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            test.Ice.scope.Test.Inner.Inner2.CMapHelper.write(ostr, this.c2);
            test.Ice.scope.Test.Inner.Inner2.CMapHelper.write(ostr, returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.c2 = test.Ice.scope.Test.Inner.Inner2.CMapHelper.read(istr);
            returnValue = test.Ice.scope.Test.Inner.Inner2.CMapHelper.read(istr);
        }
    }

    I.OpSResult opS(test.Ice.scope.Test.Inner.Inner2.S s1, com.zeroc.Ice.Current current);

    I.OpSSeqResult opSSeq(test.Ice.scope.Test.Inner.Inner2.S[] s1, com.zeroc.Ice.Current current);

    I.OpSMapResult opSMap(java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.S> s1, com.zeroc.Ice.Current current);

    I.OpCResult opC(test.Ice.scope.Test.Inner.Inner2.C c1, com.zeroc.Ice.Current current);

    I.OpCSeqResult opCSeq(test.Ice.scope.Test.Inner.Inner2.C[] c1, com.zeroc.Ice.Current current);

    I.OpCMapResult opCMap(java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.C> c1, com.zeroc.Ice.Current current);

    void shutdown(com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::Inner::I"
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
        return "::Test::Inner::I";
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opS(I obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        test.Ice.scope.Test.Inner.Inner2.S iceP_s1;
        iceP_s1 = test.Ice.scope.Test.Inner.Inner2.S.ice_read(istr);
        inS.endReadParams();
        I.OpSResult ret = obj.opS(iceP_s1, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ret.write(ostr);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opSSeq(I obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        test.Ice.scope.Test.Inner.Inner2.S[] iceP_s1;
        iceP_s1 = test.Ice.scope.Test.Inner.Inner2.SSeqHelper.read(istr);
        inS.endReadParams();
        I.OpSSeqResult ret = obj.opSSeq(iceP_s1, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ret.write(ostr);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opSMap(I obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.S> iceP_s1;
        iceP_s1 = test.Ice.scope.Test.Inner.Inner2.SMapHelper.read(istr);
        inS.endReadParams();
        I.OpSMapResult ret = obj.opSMap(iceP_s1, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ret.write(ostr);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opC(I obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        final com.zeroc.IceInternal.Holder<test.Ice.scope.Test.Inner.Inner2.C> icePP_c1 = new com.zeroc.IceInternal.Holder<>();
        istr.readValue(v -> icePP_c1.value = v, test.Ice.scope.Test.Inner.Inner2.C.class);
        istr.readPendingValues();
        inS.endReadParams();
        test.Ice.scope.Test.Inner.Inner2.C iceP_c1 = icePP_c1.value;
        I.OpCResult ret = obj.opC(iceP_c1, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ret.write(ostr);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opCSeq(I obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        test.Ice.scope.Test.Inner.Inner2.C[] iceP_c1;
        iceP_c1 = test.Ice.scope.Test.Inner.Inner2.CSeqHelper.read(istr);
        istr.readPendingValues();
        inS.endReadParams();
        I.OpCSeqResult ret = obj.opCSeq(iceP_c1, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ret.write(ostr);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opCMap(I obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        java.util.Map<java.lang.String, test.Ice.scope.Test.Inner.Inner2.C> iceP_c1;
        iceP_c1 = test.Ice.scope.Test.Inner.Inner2.CMapHelper.read(istr);
        istr.readPendingValues();
        inS.endReadParams();
        I.OpCMapResult ret = obj.opCMap(iceP_c1, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        ret.write(ostr);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_shutdown(I obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.shutdown(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "opC",
        "opCMap",
        "opCSeq",
        "opS",
        "opSMap",
        "opSSeq",
        "shutdown"
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
                return _iceD_opC(this, in, current);
            }
            case 5:
            {
                return _iceD_opCMap(this, in, current);
            }
            case 6:
            {
                return _iceD_opCSeq(this, in, current);
            }
            case 7:
            {
                return _iceD_opS(this, in, current);
            }
            case 8:
            {
                return _iceD_opSMap(this, in, current);
            }
            case 9:
            {
                return _iceD_opSSeq(this, in, current);
            }
            case 10:
            {
                return _iceD_shutdown(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
