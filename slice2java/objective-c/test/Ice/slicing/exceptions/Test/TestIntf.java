//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `SlicingExceptionsTestServer.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public interface TestIntf extends com.zeroc.Ice.Object
{
    void baseAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void unknownDerivedAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void knownDerivedAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void knownDerivedAsKnownDerived(com.zeroc.Ice.Current current)
        throws KnownDerived;

    void unknownIntermediateAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void knownIntermediateAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void knownMostDerivedAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void knownIntermediateAsKnownIntermediate(com.zeroc.Ice.Current current)
        throws KnownIntermediate;

    void knownMostDerivedAsKnownIntermediate(com.zeroc.Ice.Current current)
        throws KnownIntermediate;

    void knownMostDerivedAsKnownMostDerived(com.zeroc.Ice.Current current)
        throws KnownMostDerived;

    void unknownMostDerived1AsBase(com.zeroc.Ice.Current current)
        throws Base;

    void unknownMostDerived1AsKnownIntermediate(com.zeroc.Ice.Current current)
        throws KnownIntermediate;

    void unknownMostDerived2AsBase(com.zeroc.Ice.Current current)
        throws Base;

    void unknownMostDerived2AsBaseCompact(com.zeroc.Ice.Current current)
        throws Base;

    void knownPreservedAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void knownPreservedAsKnownPreserved(com.zeroc.Ice.Current current)
        throws KnownPreserved;

    void relayKnownPreservedAsBase(RelayPrx r, com.zeroc.Ice.Current current)
        throws Base;

    void relayKnownPreservedAsKnownPreserved(RelayPrx r, com.zeroc.Ice.Current current)
        throws KnownPreserved;

    void unknownPreservedAsBase(com.zeroc.Ice.Current current)
        throws Base;

    void unknownPreservedAsKnownPreserved(com.zeroc.Ice.Current current)
        throws KnownPreserved;

    void relayUnknownPreservedAsBase(RelayPrx r, com.zeroc.Ice.Current current)
        throws Base;

    void relayUnknownPreservedAsKnownPreserved(RelayPrx r, com.zeroc.Ice.Current current)
        throws KnownPreserved;

    void shutdown(com.zeroc.Ice.Current current);

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
     * @throws com.zeroc.Ice.UserException -
    **/
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_baseAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.baseAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownDerivedAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.unknownDerivedAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownDerivedAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownDerivedAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownDerivedAsKnownDerived(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownDerivedAsKnownDerived(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownIntermediateAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.unknownIntermediateAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownIntermediateAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownIntermediateAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownMostDerivedAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownMostDerivedAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownIntermediateAsKnownIntermediate(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownIntermediateAsKnownIntermediate(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownMostDerivedAsKnownIntermediate(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownMostDerivedAsKnownIntermediate(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownMostDerivedAsKnownMostDerived(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownMostDerivedAsKnownMostDerived(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownMostDerived1AsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.unknownMostDerived1AsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownMostDerived1AsKnownIntermediate(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.unknownMostDerived1AsKnownIntermediate(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownMostDerived2AsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.unknownMostDerived2AsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownMostDerived2AsBaseCompact(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.CompactFormat);
        obj.unknownMostDerived2AsBaseCompact(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownPreservedAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownPreservedAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_knownPreservedAsKnownPreserved(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.knownPreservedAsKnownPreserved(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_relayKnownPreservedAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        RelayPrx iceP_r;
        iceP_r = RelayPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.relayKnownPreservedAsBase(iceP_r, current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_relayKnownPreservedAsKnownPreserved(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        RelayPrx iceP_r;
        iceP_r = RelayPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.relayKnownPreservedAsKnownPreserved(iceP_r, current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownPreservedAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.unknownPreservedAsBase(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_unknownPreservedAsKnownPreserved(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        inS.readEmptyParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.unknownPreservedAsKnownPreserved(current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_relayUnknownPreservedAsBase(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        RelayPrx iceP_r;
        iceP_r = RelayPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.relayUnknownPreservedAsBase(iceP_r, current);
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
    static java.util.concurrent.CompletionStage<com.zeroc.Ice.OutputStream> _iceD_relayUnknownPreservedAsKnownPreserved(TestIntf obj, final com.zeroc.IceInternal.Incoming inS, com.zeroc.Ice.Current current)
        throws com.zeroc.Ice.UserException
    {
        com.zeroc.Ice.Object._iceCheckMode(null, current.mode);
        com.zeroc.Ice.InputStream istr = inS.startReadParams();
        RelayPrx iceP_r;
        iceP_r = RelayPrx.uncheckedCast(istr.readProxy());
        inS.endReadParams();
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.relayUnknownPreservedAsKnownPreserved(iceP_r, current);
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
        inS.setFormat(com.zeroc.Ice.FormatType.SlicedFormat);
        obj.shutdown(current);
        return inS.setResult(inS.writeEmptyParams());
    }

    /** @hidden */
    final static String[] _iceOps =
    {
        "baseAsBase",
        "ice_id",
        "ice_ids",
        "ice_isA",
        "ice_ping",
        "knownDerivedAsBase",
        "knownDerivedAsKnownDerived",
        "knownIntermediateAsBase",
        "knownIntermediateAsKnownIntermediate",
        "knownMostDerivedAsBase",
        "knownMostDerivedAsKnownIntermediate",
        "knownMostDerivedAsKnownMostDerived",
        "knownPreservedAsBase",
        "knownPreservedAsKnownPreserved",
        "relayKnownPreservedAsBase",
        "relayKnownPreservedAsKnownPreserved",
        "relayUnknownPreservedAsBase",
        "relayUnknownPreservedAsKnownPreserved",
        "shutdown",
        "unknownDerivedAsBase",
        "unknownIntermediateAsBase",
        "unknownMostDerived1AsBase",
        "unknownMostDerived1AsKnownIntermediate",
        "unknownMostDerived2AsBase",
        "unknownMostDerived2AsBaseCompact",
        "unknownPreservedAsBase",
        "unknownPreservedAsKnownPreserved"
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
                return _iceD_baseAsBase(this, in, current);
            }
            case 1:
            {
                return com.zeroc.Ice.Object._iceD_ice_id(this, in, current);
            }
            case 2:
            {
                return com.zeroc.Ice.Object._iceD_ice_ids(this, in, current);
            }
            case 3:
            {
                return com.zeroc.Ice.Object._iceD_ice_isA(this, in, current);
            }
            case 4:
            {
                return com.zeroc.Ice.Object._iceD_ice_ping(this, in, current);
            }
            case 5:
            {
                return _iceD_knownDerivedAsBase(this, in, current);
            }
            case 6:
            {
                return _iceD_knownDerivedAsKnownDerived(this, in, current);
            }
            case 7:
            {
                return _iceD_knownIntermediateAsBase(this, in, current);
            }
            case 8:
            {
                return _iceD_knownIntermediateAsKnownIntermediate(this, in, current);
            }
            case 9:
            {
                return _iceD_knownMostDerivedAsBase(this, in, current);
            }
            case 10:
            {
                return _iceD_knownMostDerivedAsKnownIntermediate(this, in, current);
            }
            case 11:
            {
                return _iceD_knownMostDerivedAsKnownMostDerived(this, in, current);
            }
            case 12:
            {
                return _iceD_knownPreservedAsBase(this, in, current);
            }
            case 13:
            {
                return _iceD_knownPreservedAsKnownPreserved(this, in, current);
            }
            case 14:
            {
                return _iceD_relayKnownPreservedAsBase(this, in, current);
            }
            case 15:
            {
                return _iceD_relayKnownPreservedAsKnownPreserved(this, in, current);
            }
            case 16:
            {
                return _iceD_relayUnknownPreservedAsBase(this, in, current);
            }
            case 17:
            {
                return _iceD_relayUnknownPreservedAsKnownPreserved(this, in, current);
            }
            case 18:
            {
                return _iceD_shutdown(this, in, current);
            }
            case 19:
            {
                return _iceD_unknownDerivedAsBase(this, in, current);
            }
            case 20:
            {
                return _iceD_unknownIntermediateAsBase(this, in, current);
            }
            case 21:
            {
                return _iceD_unknownMostDerived1AsBase(this, in, current);
            }
            case 22:
            {
                return _iceD_unknownMostDerived1AsKnownIntermediate(this, in, current);
            }
            case 23:
            {
                return _iceD_unknownMostDerived2AsBase(this, in, current);
            }
            case 24:
            {
                return _iceD_unknownMostDerived2AsBaseCompact(this, in, current);
            }
            case 25:
            {
                return _iceD_unknownPreservedAsBase(this, in, current);
            }
            case 26:
            {
                return _iceD_unknownPreservedAsKnownPreserved(this, in, current);
            }
        }

        assert(false);
        throw new com.zeroc.Ice.OperationNotExistException(current.id, current.facet, current.operation);
    }
}
