
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef import < abstract.hashCode
    properties
        instanceof int32
        native int32
    end
    methods
        function obj = import(errID, msg)
            if nargin == 0
                errID = 'abstract:import';
                msg = 'abstract.import';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@abstract.hashCode(errID, msg);
        end
        function id = ice_id(~)
            id = '::abstract::import';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.instanceof = is.readInt();
            obj.native = is.readInt();
            is.endSlice();
            obj = iceReadImpl@abstract.hashCode(obj, is);
        end
    end
end
