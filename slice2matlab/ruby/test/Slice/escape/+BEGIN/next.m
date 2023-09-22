% next   Summary of next
%
% next Properties:
%   new

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef next < Ice.UserException
    properties
        new int32
    end
    methods
        function obj = next(ice_exid, ice_exmsg, new)
            if nargin <= 2
                new = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'BEGIN:next';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'BEGIN.next';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.new = new;
        end
        function id = ice_id(~)
            id = '::BEGIN::next';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.new = is.readInt();
            is.endSlice();
        end
    end
end
