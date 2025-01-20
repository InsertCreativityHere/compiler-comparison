% UserAccountNotFoundException   Summary of UserAccountNotFoundException
%
% This exception is raised if a user account for a given session identifier can't be found.

% Copyright (c) ZeroC, Inc.
% Generated from UserAccountMapper.ice by slice2matlab version 3.8.0-alpha.0

classdef UserAccountNotFoundException < Ice.UserException
    methods
        function obj = UserAccountNotFoundException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:UserAccountNotFoundException';
                msg = 'IceGrid.UserAccountNotFoundException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::UserAccountNotFoundException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
