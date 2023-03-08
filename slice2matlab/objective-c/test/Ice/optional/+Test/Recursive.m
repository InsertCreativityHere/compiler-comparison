% Recursive   Summary of Recursive
%
% Recursive Properties:
%   value

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.9

classdef Recursive < Ice.Value
    properties
        value
    end
    methods
        function obj = Recursive(value)
            if nargin == 0
                obj.value = IceInternal.UnsetI.Instance;
            elseif ne(value, IceInternal.NoInit.Instance)
                obj.value = value;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            if obj.value ~= Ice.Unset
                obj.value = Test.RecursiveSeq.convert(obj.value);
            end
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Recursive', -1, true);
            Test.RecursiveSeq.writeOpt(os, 0, obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = Test.RecursiveSeq.readOpt(is, 0);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Recursive';
        end
    end
end
