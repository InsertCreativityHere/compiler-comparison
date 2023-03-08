% PatchException   Summary of PatchException
%
% This exception is raised if a patch failed.
%
% PatchException Properties:
%   reasons - The reasons why the patch failed.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.9

classdef PatchException < Ice.UserException
    properties
        % reasons - The reasons why the patch failed.
        reasons
    end
    methods
        function obj = PatchException(ice_exid, ice_exmsg, reasons)
            if nargin <= 2
                reasons = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:PatchException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.PatchException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reasons = reasons;
        end
        function id = ice_id(~)
            id = '::IceGrid::PatchException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reasons = is.readStringSeq();
            is.endSlice();
        end
    end
end
