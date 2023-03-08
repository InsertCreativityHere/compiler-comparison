% AdapterNotFoundException   Summary of AdapterNotFoundException
%
% This exception is raised if an adapter cannot be found.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Locator.ice by slice2matlab version 3.7.9

classdef AdapterNotFoundException < Ice.UserException
    methods
        function obj = AdapterNotFoundException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Ice:AdapterNotFoundException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Ice.AdapterNotFoundException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Ice::AdapterNotFoundException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
