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

public class _package extends com.zeroc.Ice.Value
{
    public _package()
    {
        this._for = new _break();
        this._goto = var.base;
        this.debugger = "";
    }

    public _package(_break _for, var _goto, explicitPrx _if, java.util.Map<java.lang.String, _break> internal, String debugger, explicitPrx _null)
    {
        set_for(_for);
        set_goto(_goto);
        set_if(_if);
        setInternal(internal);
        setDebugger(debugger);
        set_null(_null);
    }

    private _break _for;
    private boolean _for;

    public _break getFor()
    {
        if(!_for)
        {
            throw new java.util.NoSuchElementException("_for is not set");
        }
        return _for;
    }

    public void setFor(_break _for)
    {
        _for = true;
        this._for = _for;
    }

    public boolean hasFor()
    {
        return _for;
    }

    public void clearFor()
    {
        _for = false;
    }

    public void optionalFor(java.util.Optional<_break> v)
    {
        if(v == null || !v.isPresent())
        {
            _for = false;
        }
        else
        {
            _for = true;
            _for = v.get();
        }
    }

    public java.util.Optional<_break> optionalFor()
    {
        if(_for)
        {
            return java.util.Optional.of(_for);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private var _goto;
    private boolean _goto;

    public var getGoto()
    {
        if(!_goto)
        {
            throw new java.util.NoSuchElementException("_goto is not set");
        }
        return _goto;
    }

    public void setGoto(var _goto)
    {
        _goto = true;
        this._goto = _goto;
    }

    public boolean hasGoto()
    {
        return _goto;
    }

    public void clearGoto()
    {
        _goto = false;
    }

    public void optionalGoto(java.util.Optional<var> v)
    {
        if(v == null || !v.isPresent())
        {
            _goto = false;
        }
        else
        {
            _goto = true;
            _goto = v.get();
        }
    }

    public java.util.Optional<var> optionalGoto()
    {
        if(_goto)
        {
            return java.util.Optional.of(_goto);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private explicitPrx _if;
    private boolean _if;

    public explicitPrx getIf()
    {
        if(!_if)
        {
            throw new java.util.NoSuchElementException("_if is not set");
        }
        return _if;
    }

    public void setIf(explicitPrx _if)
    {
        _if = true;
        this._if = _if;
    }

    public boolean hasIf()
    {
        return _if;
    }

    public void clearIf()
    {
        _if = false;
    }

    public void optionalIf(java.util.Optional<explicitPrx> v)
    {
        if(v == null || !v.isPresent())
        {
            _if = false;
        }
        else
        {
            _if = true;
            _if = v.get();
        }
    }

    public java.util.Optional<explicitPrx> optionalIf()
    {
        if(_if)
        {
            return java.util.Optional.of(_if);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private java.util.Map<java.lang.String, _break> internal;
    private boolean _internal;

    public java.util.Map<java.lang.String, _break> getInternal()
    {
        if(!_internal)
        {
            throw new java.util.NoSuchElementException("internal is not set");
        }
        return internal;
    }

    public void setInternal(java.util.Map<java.lang.String, _break> internal)
    {
        _internal = true;
        this.internal = internal;
    }

    public boolean hasInternal()
    {
        return _internal;
    }

    public void clearInternal()
    {
        _internal = false;
    }

    public void optionalInternal(java.util.Optional<java.util.Map<java.lang.String, _break>> v)
    {
        if(v == null || !v.isPresent())
        {
            _internal = false;
        }
        else
        {
            _internal = true;
            internal = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.String, _break>> optionalInternal()
    {
        if(_internal)
        {
            return java.util.Optional.of(internal);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private String debugger;
    private boolean _debugger;

    public String getDebugger()
    {
        if(!_debugger)
        {
            throw new java.util.NoSuchElementException("debugger is not set");
        }
        return debugger;
    }

    public void setDebugger(String debugger)
    {
        _debugger = true;
        this.debugger = debugger;
    }

    public boolean hasDebugger()
    {
        return _debugger;
    }

    public void clearDebugger()
    {
        _debugger = false;
    }

    public void optionalDebugger(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _debugger = false;
        }
        else
        {
            _debugger = true;
            debugger = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalDebugger()
    {
        if(_debugger)
        {
            return java.util.Optional.of(debugger);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private explicitPrx _null;
    private boolean _null;

    public explicitPrx getNull()
    {
        if(!_null)
        {
            throw new java.util.NoSuchElementException("_null is not set");
        }
        return _null;
    }

    public void setNull(explicitPrx _null)
    {
        _null = true;
        this._null = _null;
    }

    public boolean hasNull()
    {
        return _null;
    }

    public void clearNull()
    {
        _null = false;
    }

    public void optionalNull(java.util.Optional<explicitPrx> v)
    {
        if(v == null || !v.isPresent())
        {
            _null = false;
        }
        else
        {
            _null = true;
            _null = v.get();
        }
    }

    public java.util.Optional<explicitPrx> optionalNull()
    {
        if(_null)
        {
            return java.util.Optional.of(_null);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public _package clone()
    {
        return (_package)super.clone();
    }

    public static String ice_staticId()
    {
        return "::await::package";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -7980919261849273071L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_for)
        {
            _break.ice_write(ostr_, 1, _for);
        }
        if(_goto)
        {
            var.ice_write(ostr_, 2, _goto);
        }
        if(_if)
        {
            ostr_.writeProxy(3, _if);
        }
        if(_internal)
        {
            whileHelper.write(ostr_, 5, internal);
        }
        if(_debugger)
        {
            ostr_.writeString(7, debugger);
        }
        if(_null)
        {
            ostr_.writeProxy(8, _null);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_for = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            _for = _break.ice_read(istr_);
        }
        if(_goto = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.Size))
        {
            _goto = var.ice_read(istr_);
        }
        if(_if = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            _if = explicitPrx.uncheckedCast(istr_.readProxy());
        }
        if(_internal = istr_.readOptional(5, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            internal = whileHelper.read(istr_);
        }
        if(_debugger = istr_.readOptional(7, com.zeroc.Ice.OptionalFormat.VSize))
        {
            debugger = istr_.readString();
        }
        if(_null = istr_.readOptional(8, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            _null = explicitPrx.uncheckedCast(istr_.readProxy());
        }
        istr_.endSlice();
    }
}
