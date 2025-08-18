classdef PreservedException < Ice.UserException
    %PRESERVEDEXCEPTION
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = PreservedException(errID, msg)
            if nargin == 0
                errID = 'Test:PreservedException';
                msg = 'Test.PreservedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::PreservedException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PreservedException'
    end
end
