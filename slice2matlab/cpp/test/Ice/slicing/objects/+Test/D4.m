classdef D4 < Test.B
    %D4
    %
    %   Creation
    %     Syntax
    %       obj = Test.D4()
    %       obj = Test.D4(p1, p2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   D4 Properties:
    %     p1
    %     p2
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % P1
        %   Test.B scalar | empty array of Test.B
        p1 {mustBeScalarOrEmpty} = Test.B.empty
        
        % P2
        %   Test.B scalar | empty array of Test.B
        p2 {mustBeScalarOrEmpty} = Test.B.empty
    end
    methods
        function obj = D4(sb, pb, p1, p2)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {sb, pb};
            end
            obj = obj@Test.B(superArgs{:});
            if nargin > 0
                obj.p1 = p1;
                obj.p2 = p2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D4', -1, false);
            os.writeValue(obj.p1);
            os.writeValue(obj.p2);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_p1, 'Test.B');
            is.readValue(@obj.iceSetProperty_p2, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetProperty_p1(obj, v)
            obj.p1 = v;
        end
        function iceSetProperty_p2(obj, v)
            obj.p2 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::D4';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::D4'
    end
end
