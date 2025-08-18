classdef E < Ice.Value
    %E
    %
    %   Creation
    %     Syntax
    %       obj = Test.E()
    %       obj = Test.E(i, s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   E Properties:
    %     i
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
        
        % S
        %   character vector
        s (1, :) char
    end
    methods
        function obj = E(i, s)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.i = i;
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::E', -1, true);
            os.writeInt(obj.i);
            os.writeString(obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            obj.s = is.readString();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::E';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::E'
    end
end
