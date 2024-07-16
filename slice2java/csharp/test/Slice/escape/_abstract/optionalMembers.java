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

package _abstract;

public class optionalMembers extends com.zeroc.Ice.Value
{
    public optionalMembers()
    {
        this._for = new _break();
        this._goto = as.base;
        this.namespace = "";
    }

    public optionalMembers(_break _for, as _goto, explicitPrx _if, java.util.Map<java.lang.String, _break> internal, String namespace)
    {
        set_for(_for);
        set_goto(_goto);
        set_if(_if);
        setInternal(internal);
        setNamespace(namespace);
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

    private as _goto;
    private boolean _goto;

    public as getGoto()
    {
        if(!_goto)
        {
            throw new java.util.NoSuchElementException("_goto is not set");
        }
        return _goto;
    }

    public void setGoto(as _goto)
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

    public void optionalGoto(java.util.Optional<as> v)
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

    public java.util.Optional<as> optionalGoto()
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

    private String namespace;
    private boolean _namespace;

    public String getNamespace()
    {
        if(!_namespace)
        {
            throw new java.util.NoSuchElementException("namespace is not set");
        }
        return namespace;
    }

    public void setNamespace(String namespace)
    {
        _namespace = true;
        this.namespace = namespace;
    }

    public boolean hasNamespace()
    {
        return _namespace;
    }

    public void clearNamespace()
    {
        _namespace = false;
    }

    public void optionalNamespace(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _namespace = false;
        }
        else
        {
            _namespace = true;
            namespace = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalNamespace()
    {
        if(_namespace)
        {
            return java.util.Optional.of(namespace);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public optionalMembers clone()
    {
        return (optionalMembers)super.clone();
    }

    public static String ice_staticId()
    {
        return "::abstract::optionalMembers";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 4946501489544538722L;

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
            as.ice_write(ostr_, 2, _goto);
        }
        if(_if)
        {
            ostr_.writeProxy(3, _if);
        }
        if(_internal)
        {
            whileHelper.write(ostr_, 5, internal);
        }
        if(_namespace)
        {
            ostr_.writeString(7, namespace);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_for = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            _for = _break.ice_read(istr_);
        }
        if(_goto = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.Size))
        {
            _goto = as.ice_read(istr_);
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
        if(_namespace = istr_.readOptional(7, com.zeroc.Ice.OptionalFormat.VSize))
        {
            namespace = istr_.readString();
        }
        istr_.endSlice();
    }
}
