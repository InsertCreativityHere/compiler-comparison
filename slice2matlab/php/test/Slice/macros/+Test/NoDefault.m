classdef NoDefault < Ice.Value
    %NODEFAULT
    %
    %   Creation
    %     Syntax
    %       obj = Test.NoDefault()
    %       obj = Test.NoDefault(x, y)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   NoDefault Properties:
    %     x
    %     y
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % X
        %   int32 scalar
        x (1, 1) int32 = 10
        
        % Y
        %   int32 scalar
        y (1, 1) int32 = 10
    end
    methods
        function obj = NoDefault(x, y)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.x = x;
                obj.y = y;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::NoDefault', -1, true);
            os.writeInt(obj.x);
            os.writeInt(obj.y);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.x = is.readInt();
            obj.y = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::NoDefault';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::NoDefault'
    end
end
