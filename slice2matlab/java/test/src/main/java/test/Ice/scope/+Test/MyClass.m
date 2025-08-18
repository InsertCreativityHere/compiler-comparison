classdef MyClass < Ice.Value
    %MYCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.MyClass()
    %       obj = Test.MyClass(s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyClass Properties:
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   Test.MyStruct scalar
        s Test.MyStruct {mustBeScalarOrEmpty} = Test.MyStruct.empty
    end
    methods
        function obj = MyClass(s)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MyClass', -1, true);
            Test.MyStruct.ice_write(os, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.MyStruct.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MyClass'
    end
end
