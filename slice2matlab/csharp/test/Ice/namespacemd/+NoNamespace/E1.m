
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from NoNamespace.ice by slice2matlab version 3.8.0-alpha.0

classdef E1 < Ice.UserException
    properties
        i int32
    end
    methods
        function obj = E1(errID, msg)
            if nargin == 0
                errID = 'NoNamespace:E1';
                msg = 'NoNamespace.E1';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::NoNamespace::E1';
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
