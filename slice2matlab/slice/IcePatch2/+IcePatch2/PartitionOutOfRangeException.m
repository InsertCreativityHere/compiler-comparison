% PartitionOutOfRangeException   Summary of PartitionOutOfRangeException
%
% A partition argument was not in the range 0-255.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from FileServer.ice by slice2matlab version 3.8.0-alpha.0

classdef PartitionOutOfRangeException < Ice.UserException
    methods
        function obj = PartitionOutOfRangeException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IcePatch2:PartitionOutOfRangeException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IcePatch2.PartitionOutOfRangeException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::IcePatch2::PartitionOutOfRangeException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
