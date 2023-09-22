% hashCode   Summary of hashCode
%
% hashCode Properties:
%   if_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef hashCode < Ice.UserException
    properties
        if_ int32
    end
    methods
        function obj = hashCode(ice_exid, ice_exmsg, if_)
            if nargin <= 2
                if_ = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'abstract:hashCode';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'abstract.hashCode';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.if_ = if_;
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
