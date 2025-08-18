classdef PBase < Ice.Value
    %PBASE
    %
    %   Creation
    %     Syntax
    %       obj = Test.PBase()
    %       obj = Test.PBase(pi)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PBase Properties:
    %     pi
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PI
        %   int32 scalar
        pi (1, 1) int32
    end
    methods
        function obj = PBase(pi)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.pi = pi;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PBase', -1, true);
            os.writeInt(obj.pi);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pi = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::PBase';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PBase'
    end
end
