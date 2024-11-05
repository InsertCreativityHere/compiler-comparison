
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef is < Ice.UserException
    properties
        lambda int32
    end
    methods
        function obj = is(errID, msg)
            if nargin == 0
                errID = 'and:is';
                msg = 'and.is';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::and::is';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.lambda = is.readInt();
            is.endSlice();
        end
    end
end
