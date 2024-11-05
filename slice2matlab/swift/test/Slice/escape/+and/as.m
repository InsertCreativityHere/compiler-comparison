
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef as < and.return_
    properties
        static int32
        switch_ int32
    end
    methods
        function obj = as(errID, msg)
            if nargin == 0
                errID = 'and:as';
                msg = 'and.as';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@and.return_(errID, msg);
        end
        function id = ice_id(~)
            id = '::and::as';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.static = is.readInt();
            obj.switch_ = is.readInt();
            is.endSlice();
            obj = iceReadImpl@and.return_(obj, is);
        end
    end
end
