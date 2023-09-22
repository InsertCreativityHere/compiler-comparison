% FailureException   Summary of FailureException
%
% This exception is a general failure notification. It is thrown
% for errors such as a service encountering an error during
% initialization, or the service manager being unable
% to load a service executable.
%
% FailureException Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceBox.ice by slice2matlab version 3.7.10

classdef FailureException < Ice.LocalException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = FailureException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceBox:FailureException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceBox.FailureException';
            end
            obj = obj@Ice.LocalException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceBox::FailureException';
        end
    end
end
