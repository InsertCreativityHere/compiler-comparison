
% Copyright (c) ZeroC, Inc.
% Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

classdef St
    properties
        v char
        istr int16
        ostr int32
        rhs int32
        hashCode char
        clone int32
    end
    methods
        function obj = St(v, istr, ostr, rhs, hashCode, clone)
            if nargin == 0
                obj.v = '';
                obj.istr = 0;
                obj.ostr = 0;
                obj.rhs = 0;
                obj.hashCode = '';
                obj.clone = 0;
            elseif ne(v, IceInternal.NoInit.Instance)
                obj.v = v;
                obj.istr = istr;
                obj.ostr = ostr;
                obj.rhs = rhs;
                obj.hashCode = hashCode;
                obj.clone = clone;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Clash.St(IceInternal.NoInit.Instance);
            r.v = is.readString();
            r.istr = is.readShort();
            r.ostr = is.readInt();
            r.rhs = is.readInt();
            r.hashCode = is.readString();
            r.clone = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Clash.St();
            end
            os.writeString(v.v);
            os.writeShort(v.istr);
            os.writeInt(v.ostr);
            os.writeInt(v.rhs);
            os.writeString(v.hashCode);
            os.writeInt(v.clone);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Clash.St.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Clash.St.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
