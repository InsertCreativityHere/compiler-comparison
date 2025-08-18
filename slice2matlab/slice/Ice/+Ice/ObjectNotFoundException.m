classdef ObjectNotFoundException < Ice.UserException
    %OBJECTNOTFOUNDEXCEPTION The exception that is thrown by a <a href="matlab:help Ice.LocatorPrx -displayBanner">LocatorPrx</a> implementation when it cannot find an object with the provided
    %   identity.
    %
    %   Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = ObjectNotFoundException(errID, msg)
            if nargin == 0
                errID = 'Ice:ObjectNotFoundException';
                msg = 'Ice.ObjectNotFoundException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Ice::ObjectNotFoundException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Ice::ObjectNotFoundException'
    end
end
