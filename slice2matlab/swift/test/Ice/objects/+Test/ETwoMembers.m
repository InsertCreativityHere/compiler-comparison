
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ETwoMembers < Ice.UserException
    properties
        e1
        e2
    end
    methods
        function obj = ETwoMembers(errID, msg)
            if nargin == 0
                errID = 'Test:ETwoMembers';
                msg = 'Test.ETwoMembers';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::ETwoMembers';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.e1 = obj.e1.value;
            obj.e2 = obj.e2.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.e1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.e1.set(v), 'Test.Empty');
            obj.e2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.e2.set(v), 'Test.Empty');
            is.endSlice();
        end
    end
end
