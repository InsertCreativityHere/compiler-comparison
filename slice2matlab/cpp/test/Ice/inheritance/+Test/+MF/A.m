classdef A < Ice.Value
    %A
    %
    %   Creation
    %     Syntax
    %       obj = Test.MF.A()
    %       obj = Test.MF.A(aA)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   A Properties:
    %     aA
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % AA
        %   int32 scalar
        aA (1, 1) int32
    end
    methods
        function obj = A(aA)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.aA = aA;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MF::A', -1, true);
            os.writeInt(obj.aA);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.aA = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MF::A';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MF::A'
    end
end
