classdef B < Test.MF.A
    %B
    %
    %   Creation
    %     Syntax
    %       obj = Test.MF.B()
    %       obj = Test.MF.B(bB)
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
            obj = obj@Test.MF.A(superArgs{:});
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
            os.startSlice('::Test::MF::B', -1, false);
            os.writeInt(obj.bB);
            os.endSlice();
            iceWriteImpl@Test.MF.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bB = is.readInt();
            is.endSlice();
            iceReadImpl@Test.MF.A(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MF::B';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MF::B'
    end
end
