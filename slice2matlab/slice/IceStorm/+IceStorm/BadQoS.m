classdef BadQoS < Ice.UserException
    %BADQOS The exception that is thrown when attempting to subscribe with an invalid QoS.
    %
    %   BadQoS Properties:
    %     reason - The reason for the failure.
    %
    %   Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REASON The reason for the failure.
        %   character vector
        reason (1, :) char
    end
    methods
        function obj = BadQoS(errID, msg)
            if nargin == 0
                errID = 'IceStorm:BadQoS';
                msg = 'IceStorm.BadQoS';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceStorm::BadQoS';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceStorm::BadQoS'
    end
end
