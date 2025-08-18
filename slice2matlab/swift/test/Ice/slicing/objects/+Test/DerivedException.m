classdef DerivedException < Test.BaseException
    %DERIVEDEXCEPTION
    %
    %   DerivedException Properties:
    %     sde
    %     pd1
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SDE
        %   character vector
        sde (1, :) char
        
        % PD1
        %   Test.D1 scalar | empty array of Test.D1
        pd1 {mustBeScalarOrEmpty} = Test.D1.empty
    end
    methods
        function obj = DerivedException(errID, msg)
            if nargin == 0
                errID = 'Test:DerivedException';
                msg = 'Test.DerivedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::DerivedException';
        end
    end
    methods (Hidden)
        function obj = icePostUnmarshal(obj)
            obj.pd1 = obj.pd1.value;
            obj = icePostUnmarshal@Test.BaseException(obj);
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.sde = is.readString();
            obj.pd1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.pd1.set(v), 'Test.D1');
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::DerivedException'
    end
end
