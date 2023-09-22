% BluetoothException   Summary of BluetoothException
%
% Indicates a failure in the Bluetooth plug-in.
%
% BluetoothException Properties:
%   reason - Provides more information about the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.10

classdef BluetoothException < Ice.LocalException
    properties
        % reason - Provides more information about the failure.
        reason char
    end
    methods
        function obj = BluetoothException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceBT:BluetoothException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceBT.BluetoothException';
            end
            obj = obj@Ice.LocalException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceBT::BluetoothException';
        end
    end
end
