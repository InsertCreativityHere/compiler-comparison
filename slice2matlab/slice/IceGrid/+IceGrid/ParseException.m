% ParseException   Summary of ParseException
%
% This exception is raised if an error occurs during parsing.
%
% ParseException Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileParser.ice by slice2matlab version 3.7.10

classdef ParseException < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = ParseException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:ParseException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.ParseException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceGrid::ParseException';
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
