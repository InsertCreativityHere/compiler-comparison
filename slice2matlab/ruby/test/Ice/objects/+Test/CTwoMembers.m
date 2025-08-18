classdef CTwoMembers < Ice.Value
    %CTWOMEMBERS
    %
    %   Creation
    %     Syntax
    %       obj = Test.CTwoMembers()
    %       obj = Test.CTwoMembers(e1, e2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CTwoMembers Properties:
    %     e1
    %     e2
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % E1
        %   Test.Empty scalar | empty array of Test.Empty
        e1 {mustBeScalarOrEmpty} = Test.Empty.empty
        
        % E2
        %   Test.Empty scalar | empty array of Test.Empty
        e2 {mustBeScalarOrEmpty} = Test.Empty.empty
    end
    methods
        function obj = CTwoMembers(e1, e2)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.e1 = e1;
                obj.e2 = e2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::CTwoMembers', -1, true);
            os.writeValue(obj.e1);
            os.writeValue(obj.e2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_e1, 'Test.Empty');
            is.readValue(@obj.iceSetProperty_e2, 'Test.Empty');
            is.endSlice();
        end
        function iceSetProperty_e1(obj, v)
            obj.e1 = v;
        end
        function iceSetProperty_e2(obj, v)
            obj.e2 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::CTwoMembers';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::CTwoMembers'
    end
end
