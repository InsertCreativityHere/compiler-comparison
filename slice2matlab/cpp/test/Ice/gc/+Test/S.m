% S   Summary of S
%
% S Properties:
%   theC

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef S
    properties
        theC
    end
    methods
        function obj = S(theC)
            if nargin == 0
                obj.theC = [];
            elseif ne(theC, IceInternal.NoInit.Instance)
                obj.theC = theC;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.theC = obj.theC.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = Test.S(IceInternal.NoInit.Instance);
            theC_ = IceInternal.ValueHolder();
            r.theC = theC_;
            is.readValue(@(v_) theC_.set(v_), 'Test.C');
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            os.writeValue(v.theC);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
