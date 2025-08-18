classdef C1 < Ice.Value
    %C1
    %
    %   Creation
    %     Syntax
    %       obj = Test2.C1()
    %       obj = Test2.C1(i)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   C1 Properties:
    %     i
    %
    %   Generated from Package.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
    end
    methods
        function obj = C1(i)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.i = i;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test2::C1', -1, true);
            os.writeInt(obj.i);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test2::C1';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test2::C1'
    end
end
