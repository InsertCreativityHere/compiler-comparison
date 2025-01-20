
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef hashCode < Ice.UserException
    properties
        if_ int32
    end
    methods
        function obj = hashCode(errID, msg)
            if nargin == 0
                errID = 'abstract:hashCode';
                msg = 'abstract.hashCode';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::abstract::hashCode';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            is.endSlice();
        end
    end
end
