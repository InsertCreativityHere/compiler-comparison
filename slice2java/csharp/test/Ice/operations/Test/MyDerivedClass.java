//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public interface MyDerivedClass extends MyClass
{
    java.util.concurrent.CompletionStage<Void> opDerivedAsync(com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<MyClass1> opMyClass1Async(MyClass1 opMyClass1, com.zeroc.Ice.Current current);

    java.util.concurrent.CompletionStage<MyStruct1> opMyStruct1Async(MyStruct1 opMyStruct1, com.zeroc.Ice.Current current);

    /** @hidden */
    static final String[] _iceIds =
    {
        "::Ice::Object",
        "::Test::MyClass",
        "::Test::MyDerivedClass"
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
        return "::Test::MyDerivedClass";
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opDerived(MyDerivedClass obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        request.inputStream.skipEmptyEncapsulation();
        var result = obj.opDerivedAsync(request.current);
        return result.thenApply(r -> request.current.createEmptyOutgoingResponse());
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opMyClass1(MyDerivedClass obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        final com.zeroc.Ice.Holder<MyClass1> icePP_opMyClass1 = new com.zeroc.Ice.Holder<>();
        istr.readValue(v -> icePP_opMyClass1.value = v, MyClass1.class);
        istr.readPendingValues();
        istr.endEncapsulation();
        MyClass1 iceP_opMyClass1 = icePP_opMyClass1.value;
        var result = obj.opMyClass1Async(iceP_opMyClass1, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                ostr.writeValue(value);
                ostr.writePendingValues();
            },
            null));
    }

    /** @hidden */
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutgoingResponse> _iceD_opMyStruct1(MyDerivedClass obj, com.zeroc.Ice.IncomingRequest request)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, request.current.mode);
        com.zeroc.Ice.InputStream istr = request.inputStream;
        istr.startEncapsulation();
        MyStruct1 iceP_opMyStruct1;
        iceP_opMyStruct1 = MyStruct1.ice_read(istr);
        istr.endEncapsulation();
        var result = obj.opMyStruct1Async(iceP_opMyStruct1, request.current);
        return result.thenApply(r -> request.current.createOutgoingResponse(
            r,
            (ostr, value) -> 
            {
                MyStruct1.ice_write(ostr, value);
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
            case "supportsCompress" -> MyClass._iceD_supportsCompress(this, request);
            case "opVoid" -> MyClass._iceD_opVoid(this, request);
            case "opByte" -> MyClass._iceD_opByte(this, request);
            case "opBool" -> MyClass._iceD_opBool(this, request);
            case "opShortIntLong" -> MyClass._iceD_opShortIntLong(this, request);
            case "opFloatDouble" -> MyClass._iceD_opFloatDouble(this, request);
            case "opString" -> MyClass._iceD_opString(this, request);
            case "opMyEnum" -> MyClass._iceD_opMyEnum(this, request);
            case "opMyClass" -> MyClass._iceD_opMyClass(this, request);
            case "opStruct" -> MyClass._iceD_opStruct(this, request);
            case "opByteS" -> MyClass._iceD_opByteS(this, request);
            case "opBoolS" -> MyClass._iceD_opBoolS(this, request);
            case "opShortIntLongS" -> MyClass._iceD_opShortIntLongS(this, request);
            case "opFloatDoubleS" -> MyClass._iceD_opFloatDoubleS(this, request);
            case "opStringS" -> MyClass._iceD_opStringS(this, request);
            case "opByteSS" -> MyClass._iceD_opByteSS(this, request);
            case "opBoolSS" -> MyClass._iceD_opBoolSS(this, request);
            case "opShortIntLongSS" -> MyClass._iceD_opShortIntLongSS(this, request);
            case "opFloatDoubleSS" -> MyClass._iceD_opFloatDoubleSS(this, request);
            case "opStringSS" -> MyClass._iceD_opStringSS(this, request);
            case "opStringSSS" -> MyClass._iceD_opStringSSS(this, request);
            case "opByteBoolD" -> MyClass._iceD_opByteBoolD(this, request);
            case "opShortIntD" -> MyClass._iceD_opShortIntD(this, request);
            case "opLongFloatD" -> MyClass._iceD_opLongFloatD(this, request);
            case "opStringStringD" -> MyClass._iceD_opStringStringD(this, request);
            case "opStringMyEnumD" -> MyClass._iceD_opStringMyEnumD(this, request);
            case "opMyEnumStringD" -> MyClass._iceD_opMyEnumStringD(this, request);
            case "opMyStructMyEnumD" -> MyClass._iceD_opMyStructMyEnumD(this, request);
            case "opByteBoolDS" -> MyClass._iceD_opByteBoolDS(this, request);
            case "opShortIntDS" -> MyClass._iceD_opShortIntDS(this, request);
            case "opLongFloatDS" -> MyClass._iceD_opLongFloatDS(this, request);
            case "opStringStringDS" -> MyClass._iceD_opStringStringDS(this, request);
            case "opStringMyEnumDS" -> MyClass._iceD_opStringMyEnumDS(this, request);
            case "opMyEnumStringDS" -> MyClass._iceD_opMyEnumStringDS(this, request);
            case "opMyStructMyEnumDS" -> MyClass._iceD_opMyStructMyEnumDS(this, request);
            case "opByteByteSD" -> MyClass._iceD_opByteByteSD(this, request);
            case "opBoolBoolSD" -> MyClass._iceD_opBoolBoolSD(this, request);
            case "opShortShortSD" -> MyClass._iceD_opShortShortSD(this, request);
            case "opIntIntSD" -> MyClass._iceD_opIntIntSD(this, request);
            case "opLongLongSD" -> MyClass._iceD_opLongLongSD(this, request);
            case "opStringFloatSD" -> MyClass._iceD_opStringFloatSD(this, request);
            case "opStringDoubleSD" -> MyClass._iceD_opStringDoubleSD(this, request);
            case "opStringStringSD" -> MyClass._iceD_opStringStringSD(this, request);
            case "opMyEnumMyEnumSD" -> MyClass._iceD_opMyEnumMyEnumSD(this, request);
            case "opIntS" -> MyClass._iceD_opIntS(this, request);
            case "opByteSOneway" -> MyClass._iceD_opByteSOneway(this, request);
            case "opByteSOnewayCallCount" -> MyClass._iceD_opByteSOnewayCallCount(this, request);
            case "opContext" -> MyClass._iceD_opContext(this, request);
            case "opDoubleMarshaling" -> MyClass._iceD_opDoubleMarshaling(this, request);
            case "opIdempotent" -> MyClass._iceD_opIdempotent(this, request);
            case "opByte1" -> MyClass._iceD_opByte1(this, request);
            case "opShort1" -> MyClass._iceD_opShort1(this, request);
            case "opInt1" -> MyClass._iceD_opInt1(this, request);
            case "opLong1" -> MyClass._iceD_opLong1(this, request);
            case "opFloat1" -> MyClass._iceD_opFloat1(this, request);
            case "opDouble1" -> MyClass._iceD_opDouble1(this, request);
            case "opString1" -> MyClass._iceD_opString1(this, request);
            case "opStringS1" -> MyClass._iceD_opStringS1(this, request);
            case "opByteBoolD1" -> MyClass._iceD_opByteBoolD1(this, request);
            case "opStringS2" -> MyClass._iceD_opStringS2(this, request);
            case "opByteBoolD2" -> MyClass._iceD_opByteBoolD2(this, request);
            case "opStringLiterals" -> MyClass._iceD_opStringLiterals(this, request);
            case "opWStringLiterals" -> MyClass._iceD_opWStringLiterals(this, request);
            case "opMStruct1" -> MyClass._iceD_opMStruct1(this, request);
            case "opMStruct2" -> MyClass._iceD_opMStruct2(this, request);
            case "opMSeq1" -> MyClass._iceD_opMSeq1(this, request);
            case "opMSeq2" -> MyClass._iceD_opMSeq2(this, request);
            case "opMDict1" -> MyClass._iceD_opMDict1(this, request);
            case "opMDict2" -> MyClass._iceD_opMDict2(this, request);
            case "opDerived" -> MyDerivedClass._iceD_opDerived(this, request);
            case "opMyClass1" -> MyDerivedClass._iceD_opMyClass1(this, request);
            case "opMyStruct1" -> MyDerivedClass._iceD_opMyStruct1(this, request);
            case "ice_id" -> com.zeroc.Ice.Object._iceD_ice_id(this, request);
            case "ice_ids" -> com.zeroc.Ice.Object._iceD_ice_ids(this, request);
            case "ice_isA" -> com.zeroc.Ice.Object._iceD_ice_isA(this, request);
            case "ice_ping" -> com.zeroc.Ice.Object._iceD_ice_ping(this, request);
            default -> throw new com.zeroc.Ice.OperationNotExistException();
        };
    }
}
