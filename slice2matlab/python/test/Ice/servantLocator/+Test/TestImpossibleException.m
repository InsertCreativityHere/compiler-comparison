classdef TestImpossibleException < Ice.UserException
    %TESTIMPOSSIBLEEXCEPTION
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = TestImpossibleException(errID, msg)
            if nargin == 0
                errID = 'Test:TestImpossibleException';
                msg = 'Test.TestImpossibleException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::TestImpossibleException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::TestImpossibleException'
    end
end
