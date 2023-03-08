% OneOptional   Summary of OneOptional
%
% OneOptional Properties:
%   a

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.9

classdef OneOptional < Ice.Value
    properties
        a
    end
    methods
        function obj = OneOptional(a)
            if nargin == 0
                obj.a = IceInternal.UnsetI.Instance;
            elseif ne(a, IceInternal.NoInit.Instance)
                obj.a = a;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OneOptional', -1, true);
            os.writeIntOpt(1, obj.a);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.a = is.readIntOpt(1);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OneOptional';
        end
    end
end
