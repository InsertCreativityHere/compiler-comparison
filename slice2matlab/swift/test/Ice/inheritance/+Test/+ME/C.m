classdef C < Test.ME.B
    %C
    %
    %   Creation
    %     Syntax
    %       obj = Test.ME.C()
    %       obj = Test.ME.C(cC)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   C Properties:
    %     cC
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % CC
        %   int32 scalar
        cC (1, 1) int32
    end
    methods
        function obj = C(aA, bB, cC)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 3, 'Invalid number of arguments');
                superArgs = {aA, bB};
            end
            obj = obj@Test.ME.B(superArgs{:});
            if nargin > 0
                obj.cC = cC;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ME::C', -1, false);
            os.writeInt(obj.cC);
            os.endSlice();
            iceWriteImpl@Test.ME.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.cC = is.readInt();
            is.endSlice();
            iceReadImpl@Test.ME.B(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::ME::C';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::ME::C'
    end
end
