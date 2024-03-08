//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package await;

public class BaseMethods extends com.zeroc.Ice.UserException
{
    public BaseMethods()
    {
    }

    public BaseMethods(Throwable cause)
    {
        super(cause);
    }

    public BaseMethods(int Data, int HelpLink, int InnerException, int Message, int Source, int StackTrace, int TargetSite, int HResult, int Equals, int GetBaseException, int GetHashCode, int GetObjectData, int GetType, int ReferenceEquals, int ToString)
    {
        this.Data = Data;
        this.HelpLink = HelpLink;
        this.InnerException = InnerException;
        this.Message = Message;
        this.Source = Source;
        this.StackTrace = StackTrace;
        this.TargetSite = TargetSite;
        this.HResult = HResult;
        this.Equals = Equals;
        this.GetBaseException = GetBaseException;
        this.GetHashCode = GetHashCode;
        this.GetObjectData = GetObjectData;
        this.GetType = GetType;
        this.ReferenceEquals = ReferenceEquals;
        this.ToString = ToString;
    }

    public BaseMethods(int Data, int HelpLink, int InnerException, int Message, int Source, int StackTrace, int TargetSite, int HResult, int Equals, int GetBaseException, int GetHashCode, int GetObjectData, int GetType, int ReferenceEquals, int ToString, Throwable cause)
    {
        super(cause);
        this.Data = Data;
        this.HelpLink = HelpLink;
        this.InnerException = InnerException;
        this.Message = Message;
        this.Source = Source;
        this.StackTrace = StackTrace;
        this.TargetSite = TargetSite;
        this.HResult = HResult;
        this.Equals = Equals;
        this.GetBaseException = GetBaseException;
        this.GetHashCode = GetHashCode;
        this.GetObjectData = GetObjectData;
        this.GetType = GetType;
        this.ReferenceEquals = ReferenceEquals;
        this.ToString = ToString;
    }

    public String ice_id()
    {
        return "::await::BaseMethods";
    }

    public int Data;

    public int HelpLink;

    public int InnerException;

    public int Message;

    public int Source;

    public int StackTrace;

    public int TargetSite;

    public int HResult;

    public int Equals;

    public int GetBaseException;

    public int GetHashCode;

    public int GetObjectData;

    public int GetType;

    public int ReferenceEquals;

    public int ToString;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::await::BaseMethods", -1, true);
        ostr_.writeInt(Data);
        ostr_.writeInt(HelpLink);
        ostr_.writeInt(InnerException);
        ostr_.writeInt(Message);
        ostr_.writeInt(Source);
        ostr_.writeInt(StackTrace);
        ostr_.writeInt(TargetSite);
        ostr_.writeInt(HResult);
        ostr_.writeInt(Equals);
        ostr_.writeInt(GetBaseException);
        ostr_.writeInt(GetHashCode);
        ostr_.writeInt(GetObjectData);
        ostr_.writeInt(GetType);
        ostr_.writeInt(ReferenceEquals);
        ostr_.writeInt(ToString);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        Data = istr_.readInt();
        HelpLink = istr_.readInt();
        InnerException = istr_.readInt();
        Message = istr_.readInt();
        Source = istr_.readInt();
        StackTrace = istr_.readInt();
        TargetSite = istr_.readInt();
        HResult = istr_.readInt();
        Equals = istr_.readInt();
        GetBaseException = istr_.readInt();
        GetHashCode = istr_.readInt();
        GetObjectData = istr_.readInt();
        GetType = istr_.readInt();
        ReferenceEquals = istr_.readInt();
        ToString = istr_.readInt();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -5415413444765794145L;
}
