% S5   Summary of S5
%
% S5 Properties:
%   c1dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.9

classdef S5
    properties
        c1dict containers.Map
    end
    methods
        function obj = S5(c1dict)
            if nargin == 0
                obj.c1dict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(c1dict, IceInternal.NoInit.Instance)
                obj.c1dict = c1dict;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.c1dict = LocalTest.C1Dict.convert(obj.c1dict);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S5(IceInternal.NoInit.Instance);
            r.c1dict = LocalTest.C1Dict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S5.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S5();
            end
            LocalTest.C1Dict.write(os, v.c1dict);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S5.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
