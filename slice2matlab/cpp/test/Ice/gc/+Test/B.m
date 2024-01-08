% B   Summary of B
%
% B Properties:
%   theS

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef B
    properties
        theS Test.S
    end
    methods
        function obj = B(theS)
            if nargin == 0
                obj.theS = Test.S();
            elseif ne(theS, IceInternal.NoInit.Instance)
                obj.theS = theS;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.theS = obj.theS.ice_convert();
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.B(IceInternal.NoInit.Instance);
            r.theS = Test.S.ice_read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.B.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.B();
            end
            Test.S.ice_write(os, v.theS);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.B.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
