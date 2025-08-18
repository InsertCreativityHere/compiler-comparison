classdef (Sealed) St
    %ST
    %
    %   Creation
    %     Syntax
    %       obj = Clash.St()
    %       obj = Clash.St(v, istr, ostr, rhs)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   St Properties:
    %     v
    %     istr
    %     ostr
    %     rhs
    %
    %   Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % V
        %   character vector
        v (1, :) char
        
        % ISTR
        %   int16 scalar
        istr (1, 1) int16
        
        % OSTR
        %   int32 scalar
        ostr (1, 1) int32
        
        % RHS
        %   int32 scalar
        rhs (1, 1) int32
    end
    methods
        function obj = St(v, istr, ostr, rhs)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.v = v;
                obj.istr = istr;
                obj.ostr = ostr;
                obj.rhs = rhs;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = Clash.St();
            r.v = is.readString();
            r.istr = is.readShort();
            r.ostr = is.readInt();
            r.rhs = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Clash.St();
            end
            os.writeString(v.v);
            os.writeShort(v.istr);
            os.writeInt(v.ostr);
            os.writeInt(v.rhs);
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
