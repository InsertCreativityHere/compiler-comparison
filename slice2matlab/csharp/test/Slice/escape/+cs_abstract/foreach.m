
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef foreach < cs_abstract.fixed
    properties
        goto int32
        Message int32
    end
    methods
        function obj = foreach(errID, msg)
            if nargin == 0
                errID = 'cs_abstract:foreach';
                msg = 'cs_abstract.foreach';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@cs_abstract.fixed(errID, msg);
        end
        function id = ice_id(~)
            id = '::cs_abstract::foreach';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.goto = is.readInt();
            obj.Message = is.readInt();
            is.endSlice();
            obj = iceReadImpl@cs_abstract.fixed(obj, is);
        end
    end
end
