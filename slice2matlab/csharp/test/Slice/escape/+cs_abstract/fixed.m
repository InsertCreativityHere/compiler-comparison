
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef fixed < Ice.UserException
    properties
        for_ int32
    end
    methods
        function obj = fixed(errID, msg)
            if nargin == 0
                errID = 'cs_abstract:fixed';
                msg = 'cs_abstract.fixed';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::cs_abstract::fixed';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.for_ = is.readInt();
            is.endSlice();
        end
    end
end
