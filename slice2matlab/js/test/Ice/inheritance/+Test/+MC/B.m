classdef B < Test.MC.A
    %B
    %
    %   Creation
    %     Syntax
    %       obj = Test.MC.B()
    %       obj = Test.MC.B(bB)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   B Properties:
    %     bB
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BB
        %   int32 scalar
        bB (1, 1) int32
    end
    methods
        function obj = B(aA, bB)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {aA};
            end
            obj = obj@Test.MC.A(superArgs{:});
            if nargin > 0
                obj.bB = bB;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MC::B', -1, false);
            os.writeInt(obj.bB);
            os.endSlice();
            iceWriteImpl@Test.MC.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bB = is.readInt();
            is.endSlice();
            iceReadImpl@Test.MC.A(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MC::B';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MC::B'
    end
end
