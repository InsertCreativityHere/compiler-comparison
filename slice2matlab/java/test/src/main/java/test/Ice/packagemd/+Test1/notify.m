
% Copyright (c) ZeroC, Inc.
% Generated from NoPackage.ice by slice2matlab version 3.8.0-alpha.0

classdef notify < Ice.UserException
    properties
        i int32
    end
    methods
        function obj = notify(errID, msg)
            if nargin == 0
                errID = 'Test1:notify';
                msg = 'Test1.notify';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test1::notify';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
end
