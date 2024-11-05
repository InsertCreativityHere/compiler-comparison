
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Ex < Ice.UserException
    properties
        reason char
    end
    methods
        function obj = Ex(errID, msg)
            if nargin == 0
                errID = 'Test:Inner:Sub:Ex';
                msg = 'Test.Inner.Sub.Ex';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Inner::Sub::Ex';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
