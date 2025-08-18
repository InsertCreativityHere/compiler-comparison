classdef B < Test.A
    %B
    %
    %   B Properties:
    %     bMem
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BMEM
        %   int32 scalar
        bMem (1, 1) int32
    end
    methods
        function obj = B(errID, msg)
            if nargin == 0
                errID = 'Test:B';
                msg = 'Test.B';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.A(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::B';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.bMem = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.A(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::B'
    end
end
