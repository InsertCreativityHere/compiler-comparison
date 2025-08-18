classdef AlreadySubscribed < Ice.UserException
    %ALREADYSUBSCRIBED The exception that is thrown when attempting to subscribe a proxy for which a subscription already exists.
    %
    %   Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = AlreadySubscribed(errID, msg)
            if nargin == 0
                errID = 'IceStorm:AlreadySubscribed';
                msg = 'IceStorm.AlreadySubscribed';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceStorm::AlreadySubscribed';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceStorm::AlreadySubscribed'
    end
end
