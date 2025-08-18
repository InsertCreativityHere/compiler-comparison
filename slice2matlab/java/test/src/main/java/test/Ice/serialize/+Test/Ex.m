classdef Ex < Ice.UserException
    %EX
    %
    %   Ex Properties:
    %     s
    %     b
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   Test.Struct1 scalar
        s Test.Struct1 {mustBeScalarOrEmpty} = Test.Struct1.empty
        
        % B
        %   Test.Base scalar | empty array of Test.Base
        b {mustBeScalarOrEmpty} = Test.Base.empty
    end
    methods
        function obj = Ex(errID, msg)
            if nargin == 0
                errID = 'Test:Ex';
                msg = 'Test.Ex';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Ex';
        end
    end
    methods (Hidden)
        function obj = icePostUnmarshal(obj)
            obj.b = obj.b.value;
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.Struct1.ice_read(is);
            obj.b = IceInternal.ValueHolder();
            is.readValue(@(v) obj.b.set(v), 'Test.Base');
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Ex'
    end
end
