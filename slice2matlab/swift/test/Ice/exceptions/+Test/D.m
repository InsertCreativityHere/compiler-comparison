classdef D < Ice.UserException
    %D
    %
    %   D Properties:
    %     dMem
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % DMEM
        %   int32 scalar
        dMem (1, 1) int32
    end
    methods
        function obj = D(errID, msg)
            if nargin == 0
                errID = 'Test:D';
                msg = 'Test.D';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::D';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.dMem = is.readInt();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::D'
    end
end
