//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceStormElection;

/**
 * Thrown if an observer detects an inconsistency.
 **/
public class ObserverInconsistencyException extends com.zeroc.Ice.UserException
{
    public ObserverInconsistencyException()
    {
        this.reason = "";
    }

    public ObserverInconsistencyException(String reason)
    {
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceStormElection::ObserverInconsistencyException";
    }

    /**
     * The reason for the inconsistency.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceStormElection::ObserverInconsistencyException", -1, true);
        ostr_.writeString(reason);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        reason = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 938918881904780491L;
}
