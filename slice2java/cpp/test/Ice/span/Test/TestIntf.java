// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package Test;

public interface TestIntf extends com.zeroc.Ice.Object
{
    /**
     * Holds the result of operation opByteSpan.
     **/
    public static class OpByteSpanResult
    {
        /**
         * Default constructor.
         **/
        public OpByteSpanResult()
        {
        }

        public OpByteSpanResult(byte[] returnValue, byte[] dataOut)
        {
            this.returnValue = returnValue;
            this.dataOut = dataOut;
        }

        public byte[] returnValue;
        public byte[] dataOut;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeByteSeq(this.dataOut);
            ostr.writeByteSeq(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.dataOut = istr.readByteSeq();
            returnValue = istr.readByteSeq();
        }
    }

    /**
     * Holds the result of operation opShortSpan.
     **/
    public static class OpShortSpanResult
    {
        /**
         * Default constructor.
         **/
        public OpShortSpanResult()
        {
        }

        public OpShortSpanResult(short[] returnValue, short[] dataOut)
        {
            this.returnValue = returnValue;
            this.dataOut = dataOut;
        }

        public short[] returnValue;
        public short[] dataOut;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeShortSeq(this.dataOut);
            ostr.writeShortSeq(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.dataOut = istr.readShortSeq();
            returnValue = istr.readShortSeq();
        }
    }

    /**
     * Holds the result of operation opStringSpan.
     **/
    public static class OpStringSpanResult
    {
        /**
         * Default constructor.
         **/
        public OpStringSpanResult()
        {
        }

        public OpStringSpanResult(String[] returnValue, String[] dataOut)
        {
            this.returnValue = returnValue;
            this.dataOut = dataOut;
        }

        public String[] returnValue;
        public String[] dataOut;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeStringSeq(this.dataOut);
            ostr.writeStringSeq(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.dataOut = istr.readStringSeq();
            returnValue = istr.readStringSeq();
        }
    }

    /**
     * Holds the result of operation opOptionalByteSpan.
     **/
    public static class OpOptionalByteSpanResult
    {
        /**
         * Default constructor.
         **/
        public OpOptionalByteSpanResult()
        {
        }

        public OpOptionalByteSpanResult(java.util.Optional<byte[]> returnValue, java.util.Optional<byte[]> dataOut)
        {
            this.returnValue = returnValue;
            this.dataOut = dataOut;
        }

        public OpOptionalByteSpanResult(byte[] returnValue, byte[] dataOut)
        {
            this.returnValue = java.util.Optional.ofNullable(returnValue);
            this.dataOut = java.util.Optional.ofNullable(dataOut);
        }

        public java.util.Optional<byte[]> returnValue;
        public java.util.Optional<byte[]> dataOut;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeByteSeq(10, returnValue);
            ostr.writeByteSeq(11, this.dataOut);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            returnValue = istr.readByteSeq(10);
            this.dataOut = istr.readByteSeq(11);
        }
    }

    /**
     * Holds the result of operation opOptionalShortSpan.
     **/
    public static class OpOptionalShortSpanResult
    {
        /**
         * Default constructor.
         **/
        public OpOptionalShortSpanResult()
        {
        }

        public OpOptionalShortSpanResult(java.util.Optional<short[]> returnValue, java.util.Optional<short[]> dataOut)
        {
            this.returnValue = returnValue;
            this.dataOut = dataOut;
        }

        public OpOptionalShortSpanResult(short[] returnValue, short[] dataOut)
        {
            this.returnValue = java.util.Optional.ofNullable(returnValue);
            this.dataOut = java.util.Optional.ofNullable(dataOut);
        }

        public java.util.Optional<short[]> returnValue;
        public java.util.Optional<short[]> dataOut;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeShortSeq(10, returnValue);
            ostr.writeShortSeq(11, this.dataOut);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            returnValue = istr.readShortSeq(10);
            this.dataOut = istr.readShortSeq(11);
        }
    }

    /**
     * Holds the result of operation opOptionalStringSpan.
     **/
    public static class OpOptionalStringSpanResult
    {
        /**
         * Default constructor.
         **/
        public OpOptionalStringSpanResult()
        {
        }

        public OpOptionalStringSpanResult(java.util.Optional<String[]> returnValue, java.util.Optional<String[]> dataOut)
        {
            this.returnValue = returnValue;
            this.dataOut = dataOut;
        }

        public OpOptionalStringSpanResult(String[] returnValue, String[] dataOut)
        {
            this.returnValue = java.util.Optional.ofNullable(returnValue);
            this.dataOut = java.util.Optional.ofNullable(dataOut);
        }

        public java.util.Optional<String[]> returnValue;
        public java.util.Optional<String[]> dataOut;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeStringSeq(10, returnValue);
            ostr.writeStringSeq(11, this.dataOut);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            returnValue = istr.readStringSeq(10);
            this.dataOut = istr.readStringSeq(11);
        }
    }

    java.util.concurrent.CompletionStage<TestIntf.OpByteSpanResult> opByteSpanAsync(byte[] dataIn, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<TestIntf.OpShortSpanResult> opShortSpanAsync(short[] dataIn, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<TestIntf.OpStringSpanResult> opStringSpanAsync(String[] dataIn, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<TestIntf.OpOptionalByteSpanResult> opOptionalByteSpanAsync(java.util.Optional<byte[]> dataIn, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<TestIntf.OpOptionalShortSpanResult> opOptionalShortSpanAsync(java.util.Optional<short[]> dataIn, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<TestIntf.OpOptionalStringSpanResult> opOptionalStringSpanAsync(java.util.Optional<String[]> dataIn, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<Void> shutdownAsync(com.zeroc.Ice.Current current);

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

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opByteSpan(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        byte[] iceP_dataIn;
        iceP_dataIn = istr.readByteSeq();
        istr.endEncapsulation();
        var result = obj.opByteSpanAsync(iceP_dataIn, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opShortSpan(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        short[] iceP_dataIn;
        iceP_dataIn = istr.readShortSeq();
        istr.endEncapsulation();
        var result = obj.opShortSpanAsync(iceP_dataIn, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opStringSpan(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        String[] iceP_dataIn;
        iceP_dataIn = istr.readStringSeq();
        istr.endEncapsulation();
        var result = obj.opStringSpanAsync(iceP_dataIn, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opOptionalByteSpan(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        java.util.Optional<byte[]> iceP_dataIn;
        iceP_dataIn = istr.readByteSeq(1);
        istr.endEncapsulation();
        var result = obj.opOptionalByteSpanAsync(iceP_dataIn, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opOptionalShortSpan(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        java.util.Optional<short[]> iceP_dataIn;
        iceP_dataIn = istr.readShortSeq(1);
        istr.endEncapsulation();
        var result = obj.opOptionalShortSpanAsync(iceP_dataIn, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opOptionalStringSpan(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        java.util.Optional<String[]> iceP_dataIn;
        iceP_dataIn = istr.readStringSeq(1);
        istr.endEncapsulation();
        var result = obj.opOptionalStringSpanAsync(iceP_dataIn, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_shutdown(TestIntf obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.shutdownAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "opByteSpan" -> TestIntf._iceD_opByteSpan(this, request);
            case "opShortSpan" -> TestIntf._iceD_opShortSpan(this, request);
            case "opStringSpan" -> TestIntf._iceD_opStringSpan(this, request);
            case "opOptionalByteSpan" -> TestIntf._iceD_opOptionalByteSpan(this, request);
            case "opOptionalShortSpan" -> TestIntf._iceD_opOptionalShortSpan(this, request);
            case "opOptionalStringSpan" -> TestIntf._iceD_opOptionalStringSpan(this, request);
            case "shutdown" -> TestIntf._iceD_shutdown(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
