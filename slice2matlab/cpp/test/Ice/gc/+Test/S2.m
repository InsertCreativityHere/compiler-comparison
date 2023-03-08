% S2   Summary of S2
%
% S2 Properties:
%   theC2Dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef S2
    properties
        theC2Dict containers.Map
    end
    methods
        function obj = S2(theC2Dict)
            if nargin == 0
                obj.theC2Dict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(theC2Dict, IceInternal.NoInit.Instance)
                obj.theC2Dict = theC2Dict;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.theC2Dict = Test.C2Dict.convert(obj.theC2Dict);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.S2(IceInternal.NoInit.Instance);
            r.theC2Dict = Test.C2Dict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S2.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S2();
            end
            Test.C2Dict.write(os, v.theC2Dict);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S2.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
