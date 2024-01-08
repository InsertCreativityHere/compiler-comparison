% ObjectNotFoundException   Summary of ObjectNotFoundException
%
% This exception is raised if an object cannot be found.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Locator.ice by slice2matlab version 3.7.10

classdef ObjectNotFoundException < Ice.UserException
    methods
        function obj = ObjectNotFoundException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Ice:ObjectNotFoundException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Ice.ObjectNotFoundException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Ice::ObjectNotFoundException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
