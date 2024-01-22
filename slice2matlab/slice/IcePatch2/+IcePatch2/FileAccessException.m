% FileAccessException   Summary of FileAccessException
%
% This exception is raised if a file's contents cannot be read.
%
% FileAccessException Properties:
%   reason - An explanation of the reason for the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileServer.ice by slice2matlab version 3.8.0-alpha.0

classdef FileAccessException < Ice.UserException
    properties
        % reason - An explanation of the reason for the failure.
        reason char
    end
    methods
        function obj = FileAccessException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IcePatch2:FileAccessException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IcePatch2.FileAccessException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IcePatch2::FileAccessException';
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
