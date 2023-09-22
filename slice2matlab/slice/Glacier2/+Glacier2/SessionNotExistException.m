% SessionNotExistException   Summary of SessionNotExistException
%
% This exception is raised if a client tries to destroy a session
% with a router, but no session exists for the client.
%
% See also Glacier2.Router.destroySession

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Router.ice by slice2matlab version 3.7.10

classdef SessionNotExistException < Ice.UserException
    methods
        function obj = SessionNotExistException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Glacier2:SessionNotExistException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Glacier2.SessionNotExistException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Glacier2::SessionNotExistException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
