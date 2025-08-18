classdef E < Ice.UserException
    %E
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = E(errID, msg)
            if nargin == 0
                errID = 'Test:E';
                msg = 'Test.E';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::E';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::E'
    end
end
