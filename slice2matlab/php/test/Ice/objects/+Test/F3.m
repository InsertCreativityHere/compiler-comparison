classdef F3 < Ice.Value
    %F3
    %
    %   Creation
    %     Syntax
    %       obj = Test.F3()
    %       obj = Test.F3(f1, f2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   F3 Properties:
    %     f1
    %     f2
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % F1
        %   Test.F1 scalar | empty array of Test.F1
        f1 {mustBeScalarOrEmpty} = Test.F1.empty
        
        % F2
        %   Test.F2Prx scalar | empty array of Test.F2Prx
        f2 Test.F2Prx {mustBeScalarOrEmpty} = Test.F2Prx.empty
    end
    methods
        function obj = F3(f1, f2)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.f1 = f1;
                obj.f2 = f2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F3', -1, true);
            os.writeValue(obj.f1);
            os.writeProxy(obj.f2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_f1, 'Test.F1');
            obj.f2 = Test.F2Prx.ice_read(is);
            is.endSlice();
        end
        function iceSetProperty_f1(obj, v)
            obj.f1 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::F3';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::F3'
    end
end
