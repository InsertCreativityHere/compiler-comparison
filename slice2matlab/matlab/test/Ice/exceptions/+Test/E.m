% E   Summary of E
%
% E Properties:
%   data

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef E < Ice.UserException
    properties
        data char
    end
    methods
        function obj = E(ice_exid, ice_exmsg, data)
            if nargin <= 2
                data = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:E';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.E';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.data = data;
        end
        function id = ice_id(~)
            id = '::Test::E';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.data = is.readString();
            is.endSlice();
        end
    end
end
