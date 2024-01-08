% fixed   Summary of fixed
%
% fixed Properties:
%   for_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef fixed < Ice.UserException
    properties
        for_ int32
    end
    methods
        function obj = fixed(ice_exid, ice_exmsg, for_)
            if nargin <= 2
                for_ = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'await:fixed';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'await.fixed';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.for_ = for_;
        end
        function id = ice_id(~)
            id = '::await::fixed';
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
