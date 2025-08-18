classdef DerivedEx < Test.BaseEx
    %DERIVEDEX
    %
    %   DerivedEx Properties:
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
        c1 (1, 1) Test.Color = Test.ConstColor1.value
        
        % C2
        %   Test.Color scalar
        c2 (1, 1) Test.Color = Test.ConstColor2.value
        
        % C3
        %   Test.Color scalar
        c3 (1, 1) Test.Color = Test.ConstColor3.value
        
        % NC1
        %   Test.Nested.Color scalar
        nc1 (1, 1) Test.Nested.Color = Test.ConstNestedColor1.value
        
        % NC2
        %   Test.Nested.Color scalar
        nc2 (1, 1) Test.Nested.Color = Test.ConstNestedColor2.value
        
        % NC3
        %   Test.Nested.Color scalar
        nc3 (1, 1) Test.Nested.Color = Test.ConstNestedColor3.value
    end
    methods
        function obj = DerivedEx(errID, msg)
            if nargin == 0
                errID = 'Test:DerivedEx';
                msg = 'Test.DerivedEx';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseEx(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::DerivedEx';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.c1 = Test.Color.ice_read(is);
            obj.c2 = Test.Color.ice_read(is);
            obj.c3 = Test.Color.ice_read(is);
            obj.nc1 = Test.Nested.Color.ice_read(is);
            obj.nc2 = Test.Nested.Color.ice_read(is);
            obj.nc3 = Test.Nested.Color.ice_read(is);
            is.endSlice();
            obj = iceReadImpl@Test.BaseEx(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::DerivedEx'
    end
end
