% ParseException   Summary of ParseException
%
% This exception is raised if an error occurs during parsing.
%
% ParseException Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc.
% Generated from FileParser.ice by slice2matlab version 3.8.0-alpha.0

classdef ParseException < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = ParseException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ParseException';
                msg = 'IceGrid.ParseException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
