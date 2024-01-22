% ServerNotFoundException   Summary of ServerNotFoundException
%
% This exception is raised if a server cannot be found.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerNotFoundException < Ice.UserException
    methods
        function obj = ServerNotFoundException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Ice:ServerNotFoundException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Ice.ServerNotFoundException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Ice::ServerNotFoundException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
