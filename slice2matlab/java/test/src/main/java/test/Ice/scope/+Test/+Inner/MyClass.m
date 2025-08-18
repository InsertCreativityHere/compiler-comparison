classdef MyClass < Ice.Value
    %MYCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Test.Inner.MyClass()
    %       obj = Test.Inner.MyClass(s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyClass Properties:
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   Test.Inner.MyStruct scalar
        s Test.Inner.MyStruct {mustBeScalarOrEmpty} = Test.Inner.MyStruct.empty
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
            os.startSlice('::Test::Inner::MyClass', -1, true);
            Test.Inner.MyStruct.ice_write(os, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.Inner.MyStruct.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Inner::MyClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Inner::MyClass'
    end
end
