
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef next < Ice.UserException
    properties
        new int32
    end
    methods
        function obj = next(errID, msg)
            if nargin == 0
                errID = 'BEGIN:next';
                msg = 'BEGIN.next';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::BEGIN::next';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.new = is.readInt();
            is.endSlice();
        end
    end
end
