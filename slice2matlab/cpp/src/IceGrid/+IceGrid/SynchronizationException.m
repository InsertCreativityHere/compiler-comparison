% SynchronizationException   Summary of SynchronizationException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.10

classdef SynchronizationException < Ice.LocalException
    methods
        function obj = SynchronizationException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:SynchronizationException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.SynchronizationException';
            end
            obj = obj@Ice.LocalException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::IceGrid::SynchronizationException';
        end
    end
end
