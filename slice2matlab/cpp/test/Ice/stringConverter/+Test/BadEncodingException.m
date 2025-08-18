classdef BadEncodingException < Ice.UserException
    %BADENCODINGEXCEPTION
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = BadEncodingException(errID, msg)
            if nargin == 0
                errID = 'Test:BadEncodingException';
                msg = 'Test.BadEncodingException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::BadEncodingException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::BadEncodingException'
    end
end
