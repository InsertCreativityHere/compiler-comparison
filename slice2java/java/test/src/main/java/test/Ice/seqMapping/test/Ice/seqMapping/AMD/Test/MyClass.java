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

package test.Ice.seqMapping.AMD.Test;

public interface MyClass extends com.zeroc.Ice.Object
{
    /**
     * Holds the result of operation opSerialSmallJava.
     **/
    public static class OpSerialSmallJavaResult
    {
        /**
         * Default constructor.
         **/
        public OpSerialSmallJavaResult()
        {
        }

        public OpSerialSmallJavaResult(test.Ice.seqMapping.Serialize.Small returnValue, test.Ice.seqMapping.Serialize.Small o)
        {
            this.returnValue = returnValue;
            this.o = o;
        }

        public test.Ice.seqMapping.Serialize.Small returnValue;
        public test.Ice.seqMapping.Serialize.Small o;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeSerializable(this.o);
            ostr.writeSerializable(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.o = istr.readSerializable(test.Ice.seqMapping.Serialize.Small.class);
            returnValue = istr.readSerializable(test.Ice.seqMapping.Serialize.Small.class);
        }
    }

    /**
     * Holds the result of operation opSerialLargeJava.
     **/
    public static class OpSerialLargeJavaResult
    {
        /**
         * Default constructor.
         **/
        public OpSerialLargeJavaResult()
        {
        }

        public OpSerialLargeJavaResult(test.Ice.seqMapping.Serialize.Large returnValue, test.Ice.seqMapping.Serialize.Large o)
        {
            this.returnValue = returnValue;
            this.o = o;
        }

        public test.Ice.seqMapping.Serialize.Large returnValue;
        public test.Ice.seqMapping.Serialize.Large o;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeSerializable(this.o);
            ostr.writeSerializable(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.o = istr.readSerializable(test.Ice.seqMapping.Serialize.Large.class);
            returnValue = istr.readSerializable(test.Ice.seqMapping.Serialize.Large.class);
        }
    }

    /**
     * Holds the result of operation opSerialStructJava.
     **/
    public static class OpSerialStructJavaResult
    {
        /**
         * Default constructor.
         **/
        public OpSerialStructJavaResult()
        {
        }

        public OpSerialStructJavaResult(test.Ice.seqMapping.Serialize.Struct returnValue, test.Ice.seqMapping.Serialize.Struct o)
        {
            this.returnValue = returnValue;
            this.o = o;
        }

        public test.Ice.seqMapping.Serialize.Struct returnValue;
        public test.Ice.seqMapping.Serialize.Struct o;

        public void write(com.zeroc.Ice.OutputStream ostr)
        {
            ostr.writeSerializable(this.o);
            ostr.writeSerializable(returnValue);
        }

        public void read(com.zeroc.Ice.InputStream istr)
        {
            this.o = istr.readSerializable(test.Ice.seqMapping.Serialize.Struct.class);
            returnValue = istr.readSerializable(test.Ice.seqMapping.Serialize.Struct.class);
        }
    }

    java.util.concurrent.CompletionStage<Void> shutdownAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<MyClass.OpSerialSmallJavaResult> opSerialSmallJavaAsync(test.Ice.seqMapping.Serialize.Small i, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<MyClass.OpSerialLargeJavaResult> opSerialLargeJavaAsync(test.Ice.seqMapping.Serialize.Large i, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<MyClass.OpSerialStructJavaResult> opSerialStructJavaAsync(test.Ice.seqMapping.Serialize.Struct i, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::MyClass"
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
        return "::Test::MyClass";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_shutdown(MyClass obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.shutdownAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opSerialSmallJava(MyClass obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        test.Ice.seqMapping.Serialize.Small iceP_i;
        iceP_i = istr.readSerializable(test.Ice.seqMapping.Serialize.Small.class);
        istr.endEncapsulation();
        var result = obj.opSerialSmallJavaAsync(iceP_i, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opSerialLargeJava(MyClass obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        test.Ice.seqMapping.Serialize.Large iceP_i;
        iceP_i = istr.readSerializable(test.Ice.seqMapping.Serialize.Large.class);
        istr.endEncapsulation();
        var result = obj.opSerialLargeJavaAsync(iceP_i, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opSerialStructJava(MyClass obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        test.Ice.seqMapping.Serialize.Struct iceP_i;
        iceP_i = istr.readSerializable(test.Ice.seqMapping.Serialize.Struct.class);
        istr.endEncapsulation();
        var result = obj.opSerialStructJavaAsync(iceP_i, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                value.write(ostr);
            },
            null));
    }

    @Override
    default java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> dispatch(com.zeroc.Ice.IncomingRequest request)
        throws com.zeroc.Ice.UserException
    {
        return switch (request.current.operation)
        {
            case "shutdown" -> MyClass._iceD_shutdown(this, request);
            case "opSerialSmallJava" -> MyClass._iceD_opSerialSmallJava(this, request);
            case "opSerialLargeJava" -> MyClass._iceD_opSerialLargeJava(this, request);
            case "opSerialStructJava" -> MyClass._iceD_opSerialStructJava(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
