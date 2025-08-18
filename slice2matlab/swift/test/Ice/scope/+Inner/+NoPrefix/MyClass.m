classdef MyClass < Ice.Value
    %MYCLASS
    %
    %   Creation
    %     Syntax
    %       obj = Inner.NoPrefix.MyClass()
    %       obj = Inner.NoPrefix.MyClass(value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   MyClass Properties:
    %     value
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % VALUE
        %   int64 scalar
        value (1, 1) int64
    end
    methods
        function obj = MyClass(value)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Inner::NoPrefix::MyClass', -1, true);
            os.writeLong(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = is.readLong();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Inner::NoPrefix::MyClass';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Inner::NoPrefix::MyClass'
    end
end
