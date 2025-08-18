classdef CR < Ice.Value
    %CR
    %
    %   Creation
    %     Syntax
    %       obj = Test.CR()
    %       obj = Test.CR(v)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CR Properties:
    %     v
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % V
        %   Test.CV scalar | empty array of Test.CV
        v {mustBeScalarOrEmpty} = Test.CV.empty
    end
    methods
        function obj = CR(v)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.v = v;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::CR', -1, true);
            os.writeValue(obj.v);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_v, 'Test.CV');
            is.endSlice();
        end
        function iceSetProperty_v(obj, v)
            obj.v = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::CR';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::CR'
    end
end
