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

package and;

public class endwhile extends endif
{
    public endwhile()
    {
        super();
    }

    public endwhile(Throwable cause)
    {
        super(cause);
    }

    public endwhile(int endswitch, int eval, int exit)
    {
        super(endswitch);
        this.eval = eval;
        this.exit = exit;
    }

    public endwhile(int endswitch, int eval, int exit, Throwable cause)
    {
        super(endswitch, cause);
        this.eval = eval;
        this.exit = exit;
    }

    public String ice_id()
    {
        return "::and::endwhile";
    }

    public int eval;

    public int exit;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::and::endwhile", -1, false);
        ostr_.writeInt(eval);
        ostr_.writeInt(exit);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        eval = istr_.readInt();
        exit = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = -5681542230860299858L;
}
