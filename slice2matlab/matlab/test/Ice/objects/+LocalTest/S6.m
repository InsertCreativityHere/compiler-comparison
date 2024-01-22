% S6   Summary of S6
%
% S6 Properties:
%   s1dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef S6
    properties
        s1dict containers.Map
    end
    methods
        function obj = S6(s1dict)
            if nargin == 0
                obj.s1dict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(s1dict, IceInternal.NoInit.Instance)
                obj.s1dict = s1dict;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.s1dict = LocalTest.S1Dict.convert(obj.s1dict);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S6(IceInternal.NoInit.Instance);
            r.s1dict = LocalTest.S1Dict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S6.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S6();
            end
            LocalTest.S1Dict.write(os, v.s1dict);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S6.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
