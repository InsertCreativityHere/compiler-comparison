% FileSizeRangeException   Summary of FileSizeRangeException
%
% This exception is raised if an operation tries to use a file whose size is
% larger than 2.1 GB. Use the "large" versions of the operations instead.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileServer.ice by slice2matlab version 3.7.10

classdef FileSizeRangeException < IcePatch2.FileAccessException
    methods
        function obj = FileSizeRangeException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IcePatch2:FileSizeRangeException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IcePatch2.FileSizeRangeException';
            end
            obj = obj@IcePatch2.FileAccessException(ice_exid, ice_exmsg, reason);
        end
        function id = ice_id(~)
            id = '::IcePatch2::FileSizeRangeException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            obj = iceReadImpl@IcePatch2.FileAccessException(obj, is);
        end
    end
end
