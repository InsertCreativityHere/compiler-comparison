
% Copyright (c) ZeroC, Inc.
% Generated from WstringAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef WstringStruct
    properties
        s char
    end
    methods
        function obj = WstringStruct(s)
            if nargin == 0
                obj.s = '';
            elseif ne(s, IceInternal.NoInit.Instance)
                obj.s = s;
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
            r = Test2.WstringStruct(IceInternal.NoInit.Instance);
            r.s = is.readString();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test2.WstringStruct();
            end
            os.writeString(v.s);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test2.WstringStruct.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test2.WstringStruct.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
