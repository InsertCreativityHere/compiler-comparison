classdef NoSuchServiceException < Ice.UserException
    %NOSUCHSERVICEEXCEPTION The exception that is thrown when a service name does not refer to a known service.
    %
    %   Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = NoSuchServiceException(errID, msg)
            if nargin == 0
                errID = 'IceBox:NoSuchServiceException';
                msg = 'IceBox.NoSuchServiceException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceBox::NoSuchServiceException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceBox::NoSuchServiceException'
    end
end
