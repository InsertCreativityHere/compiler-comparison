% G   Summary of G
%
% G Properties:
%   data

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef G < Ice.LocalException
    properties
        data char
    end
    methods
        function obj = G(ice_exid, ice_exmsg, data)
            if nargin <= 2
                data = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:G';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.G';
            end
            obj = obj@Ice.LocalException(ice_exid, ice_exmsg);
            obj.data = data;
        end
        function id = ice_id(~)
            id = '::Test::G';
        end
    end
end
