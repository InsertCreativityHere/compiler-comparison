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

public interface MyDerivedClass extends MyClass
{
    void opDerived(com.zeroc.Ice.Current current);

    MyClass1 opMyClass1(MyClass1 opMyClass1, com.zeroc.Ice.Current current);

    MyStruct1 opMyStruct1(MyStruct1 opMyStruct1, com.zeroc.Ice.Current current);

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

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opDerived(MyDerivedClass obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        obj.opDerived(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /**
     * @hidden
     * @param obj -
     * @param inS -
     * @param current -
     * @return -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opMyClass1(MyDerivedClass obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        final com.zeroc.IceInternal.Holder<MyClass1> icePP_opMyClass1 = new com.zeroc.IceInternal.Holder<>();
        istr.readValue(v -> icePP_opMyClass1.value = v, MyClass1.class);
        istr.readPendingValues();
        inS.endReadParams();
        MyClass1 iceP_opMyClass1 = icePP_opMyClass1.value;
        MyClass1 ret = obj.opMyClass1(iceP_opMyClass1, current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_opMyStruct1(MyDerivedClass obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        MyStruct1 iceP_opMyStruct1;
        iceP_opMyStruct1 = MyStruct1.ice_read(istr);
        inS.endReadParams();
        MyStruct1 ret = obj.opMyStruct1(iceP_opMyStruct1, current);
        com.zeroc.Ice.OutputStream ostr = inS.startWriteParams();
        MyStruct1.ice_write(ostr, ret);
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
        "opBool",
        "opBoolBoolSD",
        "opBoolS",
        "opBoolSS",
        "opByte",
        "opByte1",
        "opByteBoolD",
        "opByteBoolD1",
        "opByteBoolD2",
        "opByteBoolDS",
        "opByteByteSD",
        "opByteS",
        "opByteSOneway",
        "opByteSOnewayCallCount",
        "opByteSS",
        "opContext",
        "opDerived",
        "opDouble1",
        "opDoubleMarshaling",
        "opFloat1",
        "opFloatDouble",
        "opFloatDoubleS",
        "opFloatDoubleSS",
        "opIdempotent",
        "opInt1",
        "opIntIntSD",
        "opIntS",
        "opLong1",
        "opLongFloatD",
        "opLongFloatDS",
        "opLongLongSD",
        "opMDict1",
        "opMDict2",
        "opMSeq1",
        "opMSeq2",
        "opMStruct1",
        "opMStruct2",
        "opMyClass",
        "opMyClass1",
        "opMyEnum",
        "opMyEnumMyEnumSD",
        "opMyEnumStringD",
        "opMyEnumStringDS",
        "opMyStruct1",
        "opMyStructMyEnumD",
        "opMyStructMyEnumDS",
        "opNonmutating",
        "opShort1",
        "opShortIntD",
        "opShortIntDS",
        "opShortIntLong",
        "opShortIntLongS",
        "opShortIntLongSS",
        "opShortShortSD",
        "opString",
        "opString1",
        "opStringDoubleSD",
        "opStringFloatSD",
        "opStringLiterals",
        "opStringMyEnumD",
        "opStringMyEnumDS",
        "opStringS",
        "opStringS1",
        "opStringS2",
        "opStringSS",
        "opStringSSS",
        "opStringStringD",
        "opStringStringDS",
        "opStringStringSD",
        "opStruct",
        "opVoid",
        "shutdown",
        "supportsCompress"
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
                return MyClass._iceD_opBool(this, in, current);
            }
            case 5:
            {
                return MyClass._iceD_opBoolBoolSD(this, in, current);
            }
            case 6:
            {
                return MyClass._iceD_opBoolS(this, in, current);
            }
            case 7:
            {
                return MyClass._iceD_opBoolSS(this, in, current);
            }
            case 8:
            {
                return MyClass._iceD_opByte(this, in, current);
            }
            case 9:
            {
                return MyClass._iceD_opByte1(this, in, current);
            }
            case 10:
            {
                return MyClass._iceD_opByteBoolD(this, in, current);
            }
            case 11:
            {
                return MyClass._iceD_opByteBoolD1(this, in, current);
            }
            case 12:
            {
                return MyClass._iceD_opByteBoolD2(this, in, current);
            }
            case 13:
            {
                return MyClass._iceD_opByteBoolDS(this, in, current);
            }
            case 14:
            {
                return MyClass._iceD_opByteByteSD(this, in, current);
            }
            case 15:
            {
                return MyClass._iceD_opByteS(this, in, current);
            }
            case 16:
            {
                return MyClass._iceD_opByteSOneway(this, in, current);
            }
            case 17:
            {
                return MyClass._iceD_opByteSOnewayCallCount(this, in, current);
            }
            case 18:
            {
                return MyClass._iceD_opByteSS(this, in, current);
            }
            case 19:
            {
                return MyClass._iceD_opContext(this, in, current);
            }
            case 20:
            {
                return _iceD_opDerived(this, in, current);
            }
            case 21:
            {
                return MyClass._iceD_opDouble1(this, in, current);
            }
            case 22:
            {
                return MyClass._iceD_opDoubleMarshaling(this, in, current);
            }
            case 23:
            {
                return MyClass._iceD_opFloat1(this, in, current);
            }
            case 24:
            {
                return MyClass._iceD_opFloatDouble(this, in, current);
            }
            case 25:
            {
                return MyClass._iceD_opFloatDoubleS(this, in, current);
            }
            case 26:
            {
                return MyClass._iceD_opFloatDoubleSS(this, in, current);
            }
            case 27:
            {
                return MyClass._iceD_opIdempotent(this, in, current);
            }
            case 28:
            {
                return MyClass._iceD_opInt1(this, in, current);
            }
            case 29:
            {
                return MyClass._iceD_opIntIntSD(this, in, current);
            }
            case 30:
            {
                return MyClass._iceD_opIntS(this, in, current);
            }
            case 31:
            {
                return MyClass._iceD_opLong1(this, in, current);
            }
            case 32:
            {
                return MyClass._iceD_opLongFloatD(this, in, current);
            }
            case 33:
            {
                return MyClass._iceD_opLongFloatDS(this, in, current);
            }
            case 34:
            {
                return MyClass._iceD_opLongLongSD(this, in, current);
            }
            case 35:
            {
                return MyClass._iceD_opMDict1(this, in, current);
            }
            case 36:
            {
                return MyClass._iceD_opMDict2(this, in, current);
            }
            case 37:
            {
                return MyClass._iceD_opMSeq1(this, in, current);
            }
            case 38:
            {
                return MyClass._iceD_opMSeq2(this, in, current);
            }
            case 39:
            {
                return MyClass._iceD_opMStruct1(this, in, current);
            }
            case 40:
            {
                return MyClass._iceD_opMStruct2(this, in, current);
            }
            case 41:
            {
                return MyClass._iceD_opMyClass(this, in, current);
            }
            case 42:
            {
                return _iceD_opMyClass1(this, in, current);
            }
            case 43:
            {
                return MyClass._iceD_opMyEnum(this, in, current);
            }
            case 44:
            {
                return MyClass._iceD_opMyEnumMyEnumSD(this, in, current);
            }
            case 45:
            {
                return MyClass._iceD_opMyEnumStringD(this, in, current);
            }
            case 46:
            {
                return MyClass._iceD_opMyEnumStringDS(this, in, current);
            }
            case 47:
            {
                return _iceD_opMyStruct1(this, in, current);
            }
            case 48:
            {
                return MyClass._iceD_opMyStructMyEnumD(this, in, current);
            }
            case 49:
            {
                return MyClass._iceD_opMyStructMyEnumDS(this, in, current);
            }
            case 50:
            {
                return MyClass._iceD_opNonmutating(this, in, current);
            }
            case 51:
            {
                return MyClass._iceD_opShort1(this, in, current);
            }
            case 52:
            {
                return MyClass._iceD_opShortIntD(this, in, current);
            }
            case 53:
            {
                return MyClass._iceD_opShortIntDS(this, in, current);
            }
            case 54:
            {
                return MyClass._iceD_opShortIntLong(this, in, current);
            }
            case 55:
            {
                return MyClass._iceD_opShortIntLongS(this, in, current);
            }
            case 56:
            {
                return MyClass._iceD_opShortIntLongSS(this, in, current);
            }
            case 57:
            {
                return MyClass._iceD_opShortShortSD(this, in, current);
            }
            case 58:
            {
                return MyClass._iceD_opString(this, in, current);
            }
            case 59:
            {
                return MyClass._iceD_opString1(this, in, current);
            }
            case 60:
            {
                return MyClass._iceD_opStringDoubleSD(this, in, current);
            }
            case 61:
            {
                return MyClass._iceD_opStringFloatSD(this, in, current);
            }
            case 62:
            {
                return MyClass._iceD_opStringLiterals(this, in, current);
            }
            case 63:
            {
                return MyClass._iceD_opStringMyEnumD(this, in, current);
            }
            case 64:
            {
                return MyClass._iceD_opStringMyEnumDS(this, in, current);
            }
            case 65:
            {
                return MyClass._iceD_opStringS(this, in, current);
            }
            case 66:
            {
                return MyClass._iceD_opStringS1(this, in, current);
            }
            case 67:
            {
                return MyClass._iceD_opStringS2(this, in, current);
            }
            case 68:
            {
                return MyClass._iceD_opStringSS(this, in, current);
            }
            case 69:
            {
                return MyClass._iceD_opStringSSS(this, in, current);
            }
            case 70:
            {
                return MyClass._iceD_opStringStringD(this, in, current);
            }
            case 71:
            {
                return MyClass._iceD_opStringStringDS(this, in, current);
            }
            case 72:
            {
                return MyClass._iceD_opStringStringSD(this, in, current);
            }
            case 73:
            {
                return MyClass._iceD_opStruct(this, in, current);
            }
            case 74:
            {
                return MyClass._iceD_opVoid(this, in, current);
            }
            case 75:
            {
                return MyClass._iceD_shutdown(this, in, current);
            }
            case 76:
            {
                return MyClass._iceD_supportsCompress(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
