
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef not < and.is
    properties
        or int32
        pass int32
    end
    methods
        function obj = not(errID, msg)
            if nargin == 0
                errID = 'and:not';
                msg = 'and.not';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@and.is(errID, msg);
        end
        function id = ice_id(~)
            id = '::and::not';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.or = is.readInt();
            obj.pass = is.readInt();
            is.endSlice();
            obj = iceReadImpl@and.is(obj, is);
        end
    end
end
