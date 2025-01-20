% CannotCreateSessionException   Summary of CannotCreateSessionException
%
% This exception is raised if an attempt to create a new session failed.
%
% CannotCreateSessionException Properties:
%   reason - The reason why session creation has failed.

% Copyright (c) ZeroC, Inc.
% Generated from Session.ice by slice2matlab version 3.8.0-alpha.0

classdef CannotCreateSessionException < Ice.UserException
    properties
        % reason - The reason why session creation has failed.
        reason char
    end
    methods
        function obj = CannotCreateSessionException(errID, msg)
            if nargin == 0
                errID = 'Glacier2:CannotCreateSessionException';
                msg = 'Glacier2.CannotCreateSessionException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Glacier2::CannotCreateSessionException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
