% BadSignalException   Summary of BadSignalException
%
% This exception is raised if an unknown signal was sent to
% to a server.
%
% BadSignalException Properties:
%   reason - The details of the unknown signal.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.10

classdef BadSignalException < Ice.UserException
    properties
        % reason - The details of the unknown signal.
        reason char
    end
    methods
        function obj = BadSignalException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:BadSignalException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.BadSignalException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceGrid::BadSignalException';
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
