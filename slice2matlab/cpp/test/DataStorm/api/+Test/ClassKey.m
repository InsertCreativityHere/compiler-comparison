classdef ClassKey < Ice.Value
    %CLASSKEY
    %
    %   Creation
    %     Syntax
    %       obj = Test.ClassKey()
    %       obj = Test.ClassKey(value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ClassKey Properties:
    %     value
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % VALUE
        %   int32 scalar
        value (1, 1) int32
    end
    methods
        function obj = ClassKey(value)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ClassKey', -1, true);
            os.writeInt(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = is.readInt();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::ClassKey';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::ClassKey'
    end
end
