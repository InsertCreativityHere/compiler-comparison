classdef Derived < Test.Base
    %DERIVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.Derived()
    %       obj = Test.Derived(c1, c2, c3, nc1, nc2, nc3)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Derived Properties:
    %     c1
    %     c2
    %     c3
    %     nc1
    %     nc2
    %     nc3
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1
        %   Test.Color scalar
        c1 (1, 1) Test.Color = Test.Color.red
        
        % C2
        %   Test.Color scalar
        c2 (1, 1) Test.Color = Test.Color.green
        
        % C3
        %   Test.Color scalar
        c3 (1, 1) Test.Color = Test.Color.blue
        
        % NC1
        %   Test.Nested.Color scalar
        nc1 (1, 1) Test.Nested.Color = Test.Nested.Color.red
        
        % NC2
        %   Test.Nested.Color scalar
        nc2 (1, 1) Test.Nested.Color = Test.Nested.Color.green
        
        % NC3
        %   Test.Nested.Color scalar
        nc3 (1, 1) Test.Nested.Color = Test.Nested.Color.blue
    end
    methods
        function obj = Derived(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD, st1, c1, c2, c3, nc1, nc2, nc3)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 23, 'Invalid number of arguments');
                superArgs = {boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD, st1};
            end
            obj = obj@Test.Base(superArgs{:});
            if nargin > 0
                obj.c1 = c1;
                obj.c2 = c2;
                obj.c3 = c3;
                obj.nc1 = nc1;
                obj.nc2 = nc2;
                obj.nc3 = nc3;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived', -1, false);
            Test.Color.ice_write(os, obj.c1);
            Test.Color.ice_write(os, obj.c2);
            Test.Color.ice_write(os, obj.c3);
            Test.Nested.Color.ice_write(os, obj.nc1);
            Test.Nested.Color.ice_write(os, obj.nc2);
            Test.Nested.Color.ice_write(os, obj.nc3);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1 = Test.Color.ice_read(is);
            obj.c2 = Test.Color.ice_read(is);
            obj.c3 = Test.Color.ice_read(is);
            obj.nc1 = Test.Nested.Color.ice_read(is);
            obj.nc2 = Test.Nested.Color.ice_read(is);
            obj.nc3 = Test.Nested.Color.ice_read(is);
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Derived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Derived'
    end
end
