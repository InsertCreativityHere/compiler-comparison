% H   Summary of H
%
% H Properties:
%   data

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef H < Ice.LocalException
    properties
        data char
    end
    methods
        function obj = H(ice_exid, ice_exmsg, data)
            if nargin <= 2
                data = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:H';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.H';
            end
            obj = obj@Ice.LocalException(ice_exid, ice_exmsg);
            obj.data = data;
        end
        function id = ice_id(~)
            id = '::Test::H';
        end
    end
end
