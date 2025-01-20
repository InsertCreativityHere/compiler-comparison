% ObserverInconsistencyException   Summary of ObserverInconsistencyException
%
% Thrown if an observer detects an inconsistency.
%
% ObserverInconsistencyException Properties:
%   reason - The reason for the inconsistency.

% Copyright (c) ZeroC, Inc.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef ObserverInconsistencyException < Ice.UserException
    properties
        % reason - The reason for the inconsistency.
        reason char
    end
    methods
        function obj = ObserverInconsistencyException(errID, msg)
            if nargin == 0
                errID = 'IceStormElection:ObserverInconsistencyException';
                msg = 'IceStormElection.ObserverInconsistencyException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceStormElection::ObserverInconsistencyException';
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
