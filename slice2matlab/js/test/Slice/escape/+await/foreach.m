
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef foreach < await.fixed
    properties
        goto int32
        if_ int32
    end
    methods
        function obj = foreach(errID, msg)
            if nargin == 0
                errID = 'await:foreach';
                msg = 'await.foreach';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@await.fixed(errID, msg);
        end
        function id = ice_id(~)
            id = '::await::foreach';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.goto = is.readInt();
            obj.if_ = is.readInt();
            is.endSlice();
            obj = iceReadImpl@await.fixed(obj, is);
        end
    end
end
