classdef for < Ice.Value
    %FOR
    %
    %   Creation
    %     Syntax
    %       obj = Test.and.for()
    %       obj = Test.and.for(foo, from)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   for Properties:
    %     foo
    %     from
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FOO
        %   int32 scalar
        foo (1, 1) int32
        
        % FROM
        %   Test.and.execPrx scalar | empty array of Test.and.execPrx
        from Test.and.execPrx {mustBeScalarOrEmpty} = Test.and.execPrx.empty
    end
    methods
        function obj = for(foo, from)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.foo = foo;
                obj.from = from;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::and::for', -1, true);
            os.writeInt(obj.foo);
            os.writeProxy(obj.from);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.foo = is.readInt();
            obj.from = Test.and.execPrx.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::and::for';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::and::for'
    end
end
