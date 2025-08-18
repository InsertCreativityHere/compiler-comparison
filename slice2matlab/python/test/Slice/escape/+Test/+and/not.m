classdef not < Test.and.is
    %NOT
    %
    %   not Properties:
    %     pass
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PASS
        %   int32 scalar
        pass (1, 1) int32
    end
    methods
        function obj = not(errID, msg)
            if nargin == 0
                errID = 'Test:and:not';
                msg = 'Test.and.not';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.and.is(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::and::not';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.pass = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.and.is(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::and::not'
    end
end
