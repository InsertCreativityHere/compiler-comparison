
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Namespace.ice by slice2matlab version 3.8.0-alpha.0

classdef E2 < WithNamespace.E1
    properties
        l int64
    end
    methods
        function obj = E2(errID, msg)
            if nargin == 0
                errID = 'WithNamespace:E2';
                msg = 'WithNamespace.E2';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@WithNamespace.E1(errID, msg);
        end
        function id = ice_id(~)
            id = '::WithNamespace::E2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.l = is.readLong();
            is.endSlice();
            obj = iceReadImpl@WithNamespace.E1(obj, is);
        end
    end
end
