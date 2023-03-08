% foreach   Summary of foreach
%
% foreach Properties:
%   goto
%   if_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef foreach < await.fixed
    properties
        goto int32
        if_ int32
    end
    methods
        function obj = foreach(ice_exid, ice_exmsg, for_, goto, if_)
            if nargin <= 2
                for_ = 0;
                goto = 0;
                if_ = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'await:foreach';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'await.foreach';
            end
            obj = obj@await.fixed(ice_exid, ice_exmsg, for_);
            obj.goto = goto;
            obj.if_ = if_;
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
